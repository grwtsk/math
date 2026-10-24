# realization_universalTypeIIFiber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:84d69be5-4d87-dbd0-ce85-08de27566a6c",
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
  "slug": "realization-universaltypeiifiber--9de10fbb1ce62f43aa6ff008",
  "source": {
    "blob": "73deebd457dcd17d30175ad0e2946a09c5d704d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 356,
    "line": 318,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ConductorThreeVaughanDelta/Variantfa257ac04b049b8979cb25f49272a6db09d93eba479a4ea6a1edc63042b1e1aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9de10fbb1ce62f43aa6ff0083dbb1b08faa9990cf88c5f3f530f5de17c5b7805",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ConductorThreeVaughanDelta/Variantfa257ac04b049b8979cb25f49272a6db09d93eba479a4ea6a1edc63042b1e1aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84d69be5-4d87-dbd0-ce85-08de27566a6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–356.

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

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ConductorThreeVaughanDelta/Variantfa257ac04b049b8979cb25f49272a6db09d93eba479a4ea6a1edc63042b1e1aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ConductorThreeVaughanDelta/Variantfa257ac04b049b8979cb25f49272a6db09d93eba479a4ea6a1edc63042b1e1aa.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73deebd457dcd17d30175ad0e2946a09c5d704d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
