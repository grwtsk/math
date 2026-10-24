# covariant_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f1667fa3-9ba0-d05e-05f6-0579f128a89c",
  "kind": "theorem",
  "lexical_name": "covariant_continuous",
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
  "slug": "covariant-continuous--0310e73ae45a44d014e530ab",
  "source": {
    "blob": "555be09a4cab72450c6cb87d40deff75a0409380",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 73,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualDoubleAdjointTransfer/Variant993a36849e28f2a218ecadfe48f99f1f84c99e3742abda988a6724850eb6e142.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0310e73ae45a44d014e530ab200fd2bdef2b71821db3c21c490e9b37d688c335",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RootActualDoubleAdjointTransfer/Variant993a36849e28f2a218ecadfe48f99f1f84c99e3742abda988a6724850eb6e142.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1667fa3-9ba0-d05e-05f6-0579f128a89c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem covariant_continuous {A : ℝ} (hA : 0 < A) :
    Continuous (fun z : ℝ × ℝ =>
      covariantMixedDerivative (actualLogMixedDensity A) z.1 z.2) := by
  have h2 := (actual_correlation_contDiff_four A hA).continuous_iteratedDeriv 2
    (by norm_num)
  have h4 := (actual_correlation_contDiff_four A hA).continuous_iteratedDeriv 4
    (by norm_num)
  simp_rw [actual_covariant_ordinary_work_kernel A hA]
  fun_prop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RootActualDoubleAdjointTransfer/Variant993a36849e28f2a218ecadfe48f99f1f84c99e3742abda988a6724850eb6e142.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualDoubleAdjointTransfer/Variant993a36849e28f2a218ecadfe48f99f1f84c99e3742abda988a6724850eb6e142.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `555be09a4cab72450c6cb87d40deff75a0409380` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
