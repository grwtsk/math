# Finite.iSup_biInf_of_monotone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "66181c2c4e89516214a5c8ad7d67cb6b6ae1d2c5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1474,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e3/e3dea796a40996218ab14319d0185dcdf808e8e49c29d353de749bfd54dcddbb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9c5a59b8-986a-8074-d36b-c0885cc86a83",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:45d39040-0ead-c4b8-bff4-84ac8a447b89",
  "kind": "theorem",
  "lexical_name": "Finite.iSup_biInf_of_monotone",
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
  "slug": "finite-isup-biinf-of-monotone--dea0594f34206a78838823af",
  "source": {
    "blob": "66181c2c4e89516214a5c8ad7d67cb6b6ae1d2c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1483,
    "line": 1474,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variante3dea796a40996218ab14319d0185dcdf808e8e49c29d353de749bfd54dcddbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dea0594f34206a78838823afbe001dda5dbf551fd99d531ecc9b3e8ec09c314d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Finite/Variante3dea796a40996218ab14319d0185dcdf808e8e49c29d353de749bfd54dcddbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45d39040-0ead-c4b8-bff4-84ac8a447b89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1474–1483.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Finite.iSup_biInf_of_monotone {ι ι' α : Type*} [Preorder ι'] [Nonempty ι']
    [IsDirected ι' (· ≤ ·)] [Order.Frame α] {s : Set ι} (hs : s.Finite) {f : ι → ι' → α}
    (hf : ∀ i ∈ s, Monotone (f i)) : ⨆ j, ⨅ i ∈ s, f i j = ⨅ i ∈ s, ⨆ j, f i j := by
  induction' s, hs using Set.Finite.dinduction_on with a s _ _ ihs hf
  · simp [iSup_const]
  · rw [ball_insert_iff] at hf
    simp only [iInf_insert, ← ihs hf.2]
    exact iSup_inf_of_monotone hf.1 fun j₁ j₂ hj => iInf₂_mono fun i hi => hf.2 i hi hj
#align set.finite.supr_binfi_of_monotone Set.Finite.iSup_biInf_of_monotone

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Finite/Variante3dea796a40996218ab14319d0185dcdf808e8e49c29d353de749bfd54dcddbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variante3dea796a40996218ab14319d0185dcdf808e8e49c29d353de749bfd54dcddbb.lean#L1474).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66181c2c4e89516214a5c8ad7d67cb6b6ae1d2c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
