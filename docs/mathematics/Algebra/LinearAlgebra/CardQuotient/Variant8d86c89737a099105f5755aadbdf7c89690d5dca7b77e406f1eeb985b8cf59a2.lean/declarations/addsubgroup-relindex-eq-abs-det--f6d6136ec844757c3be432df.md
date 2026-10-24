# AddSubgroup.relindex_eq_abs_det

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6af03515696cd6e377e27a4a5c3c9722c72be8a2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 110,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8d86c89737a099105f5755aadbdf7c89690d5dca7b77e406f1eeb985b8cf59a2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e762e438-e4b3-f9c1-254f-be68c41a39a1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2aaf5802-99e5-8c8f-6131-61de693313f5",
  "kind": "theorem",
  "lexical_name": "AddSubgroup.relindex_eq_abs_det",
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
  "slug": "addsubgroup-relindex-eq-abs-det--f6d6136ec844757c3be432df",
  "source": {
    "blob": "6af03515696cd6e377e27a4a5c3c9722c72be8a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 110,
    "path": "GRWTSK/Algebra/LinearAlgebra/CardQuotient/Variant8d86c89737a099105f5755aadbdf7c89690d5dca7b77e406f1eeb985b8cf59a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6d6136ec844757c3be432df2fecc210eebbdd8f7e7429530eb892d45de06d85",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CardQuotient/Variant8d86c89737a099105f5755aadbdf7c89690d5dca7b77e406f1eeb985b8cf59a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2aaf5802-99e5-8c8f-6131-61de693313f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AddSubgroup.relindex_eq_abs_det {E : Type*} [AddCommGroup E] [Module ℚ E]
    (L₁ L₂ : AddSubgroup E) (H : L₁ ≤ L₂) {ι : Type*} [DecidableEq ι] [Fintype ι]
    (b₁ b₂ : Basis ι ℚ E) (h₁ : L₁ = .closure (Set.range b₁)) (h₂ : L₂ = .closure (Set.range b₂)) :
    L₁.relindex L₂ = |b₂.det b₁| := by
  rw [AddSubgroup.relindex_eq_natAbs_det L₁ L₂ H (b₁.addSubgroupOfClosure L₁ h₁)
    (b₂.addSubgroupOfClosure L₂ h₂), Nat.cast_natAbs, Int.cast_abs]
  change |algebraMap ℤ ℚ _| = _
  rw [Basis.det_apply, Basis.det_apply, RingHom.map_det]
  congr; ext
  simp [Basis.toMatrix_apply]

end AddSubgroup
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CardQuotient/Variant8d86c89737a099105f5755aadbdf7c89690d5dca7b77e406f1eeb985b8cf59a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CardQuotient/Variant8d86c89737a099105f5755aadbdf7c89690d5dca7b77e406f1eeb985b8cf59a2.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6af03515696cd6e377e27a4a5c3c9722c72be8a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
