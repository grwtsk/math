# volume_of_add_preimage_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c5d526e-ebd0-0ae3-6c8e-94bb11eb8cf9",
  "kind": "theorem",
  "lexical_name": "volume_of_add_preimage_eq",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "volume-of-add-preimage-eq--5b8055a4f0f14fbe87873601",
  "source": {
    "blob": "8775a915f9c6bb3c454d104771ba663a141a50b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 102,
    "path": "GRWTSK/Analysis/MeasureTheory/AddCircle/Variant27a9b439b0c2377bb0151f23b65b9d63546cfadea79aeefb60bb826ef415c676.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b8055a4f0f14fbe87873601212cf6612666cd229a68ccdfda5e9dad9aa5ca9a",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/AddCircle/Variant27a9b439b0c2377bb0151f23b65b9d63546cfadea79aeefb60bb826ef415c676.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c5d526e-ebd0-0ae3-6c8e-94bb11eb8cf9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem volume_of_add_preimage_eq (s I : Set <| AddCircle T) (u x : AddCircle T)
    (hu : IsOfFinAddOrder u) (hs : (u +ᵥ s : Set <| AddCircle T) =ᵐ[volume] s)
    (hI : I =ᵐ[volume] ball x (T / (2 * addOrderOf u))) :
    volume s = addOrderOf u • volume (s ∩ I) := by
  let G := AddSubgroup.zmultiples u
  have : Fintype G := @Fintype.ofFinite _ hu.finite_zmultiples
  have hsG : ∀ g : G, (g +ᵥ s : Set <| AddCircle T) =ᵐ[volume] s := by
    rintro ⟨y, hy⟩; exact (vadd_ae_eq_self_of_mem_zmultiples hs hy :)
  rw [(isAddFundamentalDomain_of_ae_ball I u x hu hI).measure_eq_card_smul_of_vadd_ae_eq_self s hsG,
    ← Nat.card_zmultiples u]

end AddCircle
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/AddCircle/Variant27a9b439b0c2377bb0151f23b65b9d63546cfadea79aeefb60bb826ef415c676.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/AddCircle/Variant27a9b439b0c2377bb0151f23b65b9d63546cfadea79aeefb60bb826ef415c676.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8775a915f9c6bb3c454d104771ba663a141a50b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
