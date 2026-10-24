# equiv_ownedPiece_readout

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c483f95d-8e7c-db02-18eb-d33bf8e2d58b",
  "kind": "theorem",
  "lexical_name": "equiv_ownedPiece_readout",
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
  "slug": "equiv-ownedpiece-readout--3ae738428b1afad1c1f27ba8",
  "source": {
    "blob": "05d033511e3537d8b65fb25566a544b57250ff7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 149,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Ownership/Variantcbdd61525a91e012ad7f5003535cb3a7052e411291933daf58abb0f9510996fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ae738428b1afad1c1f27ba883bb2466b1659ea1ded35f4141e09c1098bca3f4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Ownership/Variantcbdd61525a91e012ad7f5003535cb3a7052e411291933daf58abb0f9510996fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c483f95d-8e7c-db02-18eb-d33bf8e2d58b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem equiv_ownedPiece_readout [DecidableEq Y] [AddCommMonoid M] (e : X ≃ Y)
    (A : Finset X) (C : Fin n → Finset X) (i : Fin n)
    (wX : X → M) (wY : Y → M) (compat : ∀ x, wY (e x) = wX x) :
    (∑ y ∈ ownedPiece (A.image e) (fun j ↦ (C j).image e) i, wY y) =
      ∑ x ∈ ownedPiece A C i, wX x := by
  rw [← image_ownedPiece e e.injective, Finset.sum_image e.injective.injOn]
  exact Finset.sum_congr rfl fun x _ ↦ compat x

/-- A restriction code has one bit per member of its identified source block. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Ownership/Variantcbdd61525a91e012ad7f5003535cb3a7052e411291933daf58abb0f9510996fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Ownership/Variantcbdd61525a91e012ad7f5003535cb3a7052e411291933daf58abb0f9510996fd.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05d033511e3537d8b65fb25566a544b57250ff7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
