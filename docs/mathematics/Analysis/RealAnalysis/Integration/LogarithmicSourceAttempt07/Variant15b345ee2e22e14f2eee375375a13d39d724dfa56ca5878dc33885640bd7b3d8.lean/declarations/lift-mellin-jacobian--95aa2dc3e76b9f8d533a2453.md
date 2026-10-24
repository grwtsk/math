# lift_mellin_jacobian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:36ced6f4-c096-ca75-24d4-fb1df425e455",
  "kind": "theorem",
  "lexical_name": "lift_mellin_jacobian",
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
  "slug": "lift-mellin-jacobian--95aa2dc3e76b9f8d533a2453",
  "source": {
    "blob": "2d13e36e11a021c1c1b44ff39a1717d0f1aa798c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 158,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt07/Variant15b345ee2e22e14f2eee375375a13d39d724dfa56ca5878dc33885640bd7b3d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95aa2dc3e76b9f8d533a24537e7461a6e2d71a202969ae401ac7edbaea75f6d4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt07/Variant15b345ee2e22e14f2eee375375a13d39d724dfa56ca5878dc33885640bd7b3d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36ced6f4-c096-ca75-24d4-fb1df425e455`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem lift_mellin_jacobian (f : ℝ → ℝ) (s : ℂ) (t : ℝ) :
    (Real.exp t : ℂ) * ((Real.exp t : ℂ)^(s-1) *
      (positiveLogLift f (Real.exp t) : ℂ)) =
      (f t : ℂ) * Complex.exp ((s-1/2)*(t:ℂ)) := by
  rw [positiveLogLift_exp,Complex.cpow_def_of_ne_zero
    (by exact_mod_cast (Real.exp_pos t).ne'),←Complex.ofReal_log (Real.exp_pos t).le,
    Real.log_exp,Complex.ofReal_mul,Complex.ofReal_exp,Complex.ofReal_exp]
  push_cast
  calc
    _ = (f t : ℂ)*Complex.exp ((t:ℂ)+(t:ℂ)*(s-1)+(-(t:ℂ)/2)) := by
      rw [Complex.exp_add,Complex.exp_add]
      ring
    _ = _ := by congr 2;ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt07/Variant15b345ee2e22e14f2eee375375a13d39d724dfa56ca5878dc33885640bd7b3d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt07/Variant15b345ee2e22e14f2eee375375a13d39d724dfa56ca5878dc33885640bd7b3d8.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d13e36e11a021c1c1b44ff39a1717d0f1aa798c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
