# realization_universalTypeIIFiber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "14ebf711ef62d8e0f0b4c76ab0a20c2badc52048",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 310,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/95/95a85ced57eae1207957edccc2b277bc9ea7b8a0195c51cd96afa95a74b299c4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6c244008-2dc9-1ece-566a-3e285f10a260",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8ccbbab1-ab10-4eb7-e741-f94d6d969995",
  "kind": "theorem",
  "lexical_name": "realization_universalTypeIIFiber",
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
  "slug": "realization-universaltypeiifiber--de5fcc58d5f93d8801b8f83d",
  "source": {
    "blob": "14ebf711ef62d8e0f0b4c76ab0a20c2badc52048",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 310,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ConductorThreeVaughanDelta/Variant95a85ced57eae1207957edccc2b277bc9ea7b8a0195c51cd96afa95a74b299c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de5fcc58d5f93d8801b8f83dbf265808e9e9dd5ed9e54aa28439c719a8077fb6",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ConductorThreeVaughanDelta/Variant95a85ced57eae1207957edccc2b277bc9ea7b8a0195c51cd96afa95a74b299c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ccbbab1-ab10-4eb7-e741-f94d6d969995`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem realization_universalTypeIIFiber {N : ℕ}
    (base : DeltaTypeIICoefficientBase N)
    (n : VaughanScaleIndex N) :
    base.complexRealization
        (∑ a : VaughanTypeIIFactorAtom N,
          if vaughanTypeIIFactorIndex a = n then
            -(base.leftVariable a.1.1 * base.rightVariable a.1.2)
          else 0) =
      (((conductorThreeIntegerValue n : ℝ) *
        vaughanTypeIIScalar (vaughanFourthRootCutoff N)
          (vaughanFourthRootCutoff N) n : ℝ) : ℂ) := by
  classical
  rw [map_sum]
  calc
    (∑ a : VaughanTypeIIFactorAtom N,
        base.complexRealization
          (if vaughanTypeIIFactorIndex a = n then
            -(base.leftVariable a.1.1 * base.rightVariable a.1.2)
          else 0)) =
        ∑ a : VaughanTypeIIFactorAtom N,
          if vaughanTypeIIFactorIndex a = n then
            vaughanFactorCoefficient (.inr (.inr (.inr a))) else 0 := by
      apply Finset.sum_congr rfl
      intro a _
      by_cases ha : vaughanTypeIIFactorIndex a = n
      · simp only [ha, if_pos, map_neg, map_mul,
          base.complexRealization_left, base.complexRealization_right,
          vaughanFactorCoefficient]
        push_cast
        ring
      · simp [ha]
    _ = _ := vaughanTypeIIFactor_fiber_eq_component N n

/-- Realizing the universal expression gives the literal finite Type II
prefix from `ConductorThreeTwistedVaughan`.

The cutoff is a bounded `Fin` index so no term beyond `2*N` can enter either
side. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ConductorThreeVaughanDelta/Variant95a85ced57eae1207957edccc2b277bc9ea7b8a0195c51cd96afa95a74b299c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ConductorThreeVaughanDelta/Variant95a85ced57eae1207957edccc2b277bc9ea7b8a0195c51cd96afa95a74b299c4.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14ebf711ef62d8e0f0b4c76ab0a20c2badc52048` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
