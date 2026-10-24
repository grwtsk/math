# actualPsiFloorDensity_zero_below_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:54e3ffc8-b2ab-7e1a-be8e-478a8f6b9b76",
  "kind": "theorem",
  "lexical_name": "actualPsiFloorDensity_zero_below_one",
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
  "slug": "actualpsifloordensity-zero-below-one--12128e0711ea463e4c59c980",
  "source": {
    "blob": "fb1295e9b07853b7e5196bb1b632d9c45d7d9700",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 40,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualPsiIntegerExact/Varianta91b188b0b4b09f433464ade10293657a0a5ee424f6df272f368af1f7d9d31cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12128e0711ea463e4c59c9801016db6b6673aa4300764f30489fbe2000a74550",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualPsiIntegerExact/Varianta91b188b0b4b09f433464ade10293657a0a5ee424f6df272f368af1f7d9d31cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54e3ffc8-b2ab-7e1a-be8e-478a8f6b9b76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPsiFloorDensity_zero_below_one (A x : ℝ) (hx : x < 1) :
    actualPsiFloorDensity A x = 0 := by
  have hf : ⌊x⌋₊ = 0 := Nat.floor_eq_zero.mpr hx
  have hp : Chebyshev.psi x = 0 := by
    rw [Chebyshev.psi_eq_sum_Icc, hf]
    simp
  simp [actualPsiFloorDensity, hf, hp]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualPsiIntegerExact/Varianta91b188b0b4b09f433464ade10293657a0a5ee424f6df272f368af1f7d9d31cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualPsiIntegerExact/Varianta91b188b0b4b09f433464ade10293657a0a5ee424f6df272f368af1f7d9d31cf.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb1295e9b07853b7e5196bb1b632d9c45d7d9700` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
