# lift_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:65a5d77d-d184-3d6e-810d-61535f8d1bb0",
  "kind": "theorem",
  "lexical_name": "lift_continuous",
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
  "slug": "lift-continuous--1a207795965d743b8cdb8345",
  "source": {
    "blob": "abe64202b8b86c97d84276c7ec74fc5b8688eb81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 156,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCoefficientHeat.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a207795965d743b8cdb8345ff01e4bc3329ca4950ef924f16349f82801486ff",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCoefficientHeat.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65a5d77d-d184-3d6e-810d-61535f8d1bb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_continuous (a b l : ℝ) (hl : a * b * l = 1) (k : ℕ) :
    @Continuous (stage a b k) (stage a b k) (coefficientTopology a b k)
      (coefficientTopology a b k) (stageEquiv a b l hl k) := by
  letI : TopologicalSpace (stage a b k) := coefficientTopology a b k
  have hc : Continuous (coordinates a b k) :=
    continuous_iff_le_induced.mpr le_rfl
  apply continuous_induced_rng.mpr
  have heq : (coordinates a b k ∘ stageEquiv a b l hl k) =
      (fun f => GRWTSK.LinearAlgebra.WeightedPermutationEnergy.transport
        (reverse k) (weight (a * b) k) (coordinates a b k f)) :=
    funext (coordinates_stage a b l hl k)
  rw [heq]
  apply continuous_pi
  intro j
  exact continuous_const.mul ((continuous_apply ((reverse k).symm j)).comp hc)

/-- Sum of the selected coefficient diagnostics; closure weight remains explicit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCoefficientHeat.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCoefficientHeat.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abe64202b8b86c97d84276c7ec74fc5b8688eb81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
