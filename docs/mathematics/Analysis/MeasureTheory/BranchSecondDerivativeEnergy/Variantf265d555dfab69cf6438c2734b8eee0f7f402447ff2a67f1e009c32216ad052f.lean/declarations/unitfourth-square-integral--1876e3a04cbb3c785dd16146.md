# unitFourth_square_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f1babee3-837d-2e1a-1f79-500a2fc099fd",
  "kind": "theorem",
  "lexical_name": "unitFourth_square_integral",
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
  "slug": "unitfourth-square-integral--1876e3a04cbb3c785dd16146",
  "source": {
    "blob": "14784bb6b9bf586b3dd01f08381ef3c6b68e8664",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 102,
    "path": "GRWTSK/Analysis/MeasureTheory/BranchSecondDerivativeEnergy/Variantf265d555dfab69cf6438c2734b8eee0f7f402447ff2a67f1e009c32216ad052f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1876e3a04cbb3c785dd16146a701403e71ba193de4797ec33e03fe8be6e67e62",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/BranchSecondDerivativeEnergy/Variantf265d555dfab69cf6438c2734b8eee0f7f402447ff2a67f1e009c32216ad052f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1babee3-837d-2e1a-1f79-500a2fc099fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unitFourth_square_integral :
    (∫ x : ℝ in (-1)..1, unitFourth x ^ 2) = (32768 : ℝ) := by
  have expand : (fun x : ℝ ↦ unitFourth x ^ 2) =
      fun x ↦ 20736 - 414720 * x ^ 2 + 2557440 * x ^ 4 -
        4838400 * x ^ 6 + 2822400 * x ^ 8 := by
    funext x
    dsimp [unitFourth]
    ring
  rw [expand]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_sub,
      intervalIntegral.integral_const_mul, integral_pow, intervalIntegral.integral_const]
  norm_num

/-- The mixed fourth/second integral has the negative third derivative energy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/BranchSecondDerivativeEnergy/Variantf265d555dfab69cf6438c2734b8eee0f7f402447ff2a67f1e009c32216ad052f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/BranchSecondDerivativeEnergy/Variantf265d555dfab69cf6438c2734b8eee0f7f402447ff2a67f1e009c32216ad052f.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14784bb6b9bf586b3dd01f08381ef3c6b68e8664` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
