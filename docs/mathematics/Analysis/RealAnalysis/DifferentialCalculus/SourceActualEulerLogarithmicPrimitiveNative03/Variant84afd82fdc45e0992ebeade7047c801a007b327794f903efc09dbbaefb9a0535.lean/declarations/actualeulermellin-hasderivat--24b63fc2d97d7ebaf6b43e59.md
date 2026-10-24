# actualEulerMellin_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d9e2f8e-e2f4-5195-860f-3d35fe5c360c",
  "kind": "theorem",
  "lexical_name": "actualEulerMellin_hasDerivAt",
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
  "slug": "actualeulermellin-hasderivat--24b63fc2d97d7ebaf6b43e59",
  "source": {
    "blob": "9e4626a78ab3754a88e0246a652e41b8f3783671",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 80,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEulerLogarithmicPrimitiveNative03/Variant84afd82fdc45e0992ebeade7047c801a007b327794f903efc09dbbaefb9a0535.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24b63fc2d97d7ebaf6b43e5941f200cf685f7ec440f602cec28b4664a1452061",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEulerLogarithmicPrimitiveNative03/Variant84afd82fdc45e0992ebeade7047c801a007b327794f903efc09dbbaefb9a0535.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d9e2f8e-e2f4-5195-860f-3d35fe5c360c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualEulerMellin_hasDerivAt (A : ℝ) (hA : 1 ≤ A) (s : ℂ) :
    HasDerivAt (actualInitialPrimeMellin A) (actualEulerMellinSlope A s) s := by
  have hb := (bump_hasDerivAt ((A:ℂ)*(s-1/2))).comp s
    (((hasDerivAt_id s).sub_const (1/2)).const_mul (A:ℂ))
  have h := (((hasDerivAt_id s).pow 2).mul
      (((hasDerivAt_id s).sub_const 1).pow 2)).mul (hb.pow 2) |>.const_mul
        (A/sourceNormalization A : ℂ)
  convert! h using 1
  · funext z
    rw [actualInitialPrimeMellin_eq_bumpMellinWeight hA]
    dsimp [bumpMellinWeight]
    push_cast
    ring
  · dsimp [actualEulerMellinSlope, Function.comp_def]
    ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEulerLogarithmicPrimitiveNative03/Variant84afd82fdc45e0992ebeade7047c801a007b327794f903efc09dbbaefb9a0535.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEulerLogarithmicPrimitiveNative03/Variant84afd82fdc45e0992ebeade7047c801a007b327794f903efc09dbbaefb9a0535.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e4626a78ab3754a88e0246a652e41b8f3783671` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
