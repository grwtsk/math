# atom_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:531b6143-5bf5-7520-f776-caa6f4c897d0",
  "kind": "theorem",
  "lexical_name": "atom_integral",
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
  "slug": "atom-integral--c04e237c07e068b1475b85d3",
  "source": {
    "blob": "e83a870a63b0ece734f3d645bf687a6c7f6e02ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 49,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt03/Varianta2e799126cf275a418413f9af8c1ac79c94e2be1091f1cd811071a1d402648c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c04e237c07e068b1475b85d3d5c3433255cb2ee5737294052dfb5cc647a19ef7",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt03/Varianta2e799126cf275a418413f9af8c1ac79c94e2be1091f1cd811071a1d402648c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:531b6143-5bf5-7520-f776-caa6f4c897d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem atom_integral {s : ℝ} (hs : 0 < s) (n : ℕ) :
    (∫ t : ℝ, laplaceAtom s n t) =
      (mangoldtWeight n * Real.exp (-s * Real.log ((n+2 : ℕ) : ℝ))) / s := by
  unfold laplaceAtom
  rw [integral_indicator measurableSet_Ici, integral_const_mul,
    integral_Ici_eq_integral_Ioi,integral_exp_mul_Ioi (by linarith : -s < 0)]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt03/Varianta2e799126cf275a418413f9af8c1ac79c94e2be1091f1cd811071a1d402648c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt03/Varianta2e799126cf275a418413f9af8c1ac79c94e2be1091f1cd811071a1d402648c4.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e83a870a63b0ece734f3d645bf687a6c7f6e02ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
