# scaledProfile_second_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa6a6ae0-6028-6dd6-a772-7673aaf1bc24",
  "kind": "theorem",
  "lexical_name": "scaledProfile_second_hasDerivAt",
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
  "slug": "scaledprofile-second-hasderivat--07b403ef2552814eb6df86d0",
  "source": {
    "blob": "9e6cc926781c4331f2da3bda609e58ff24b497a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 47,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ProfileTransport/Variant68458214777ed595f63786b7ee40ae5dc5fcc2b9a83e59c88ba1bb4e4820bcd7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07b403ef2552814eb6df86d0f8fc34df62a0621734ecdf5e3378aaa177a5d952",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ProfileTransport/Variant68458214777ed595f63786b7ee40ae5dc5fcc2b9a83e59c88ba1bb4e4820bcd7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa6a6ae0-6028-6dd6-a772-7673aaf1bc24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scaledProfile_second_hasDerivAt (A t : ℝ) :
    HasDerivAt (deriv (scaledProfile A))
      (deriv (deriv overlapProfile) (t / A) / A ^ 2 / sourceNormalization A) t := by
  have hF : ContDiff ℝ 2 overlapProfile := by
    unfold overlapProfile overlapP0
    fun_prop
  have hF1c : ContDiff ℝ 1 (deriv overlapProfile) := hF.deriv'
  have hF1 : Differentiable ℝ (deriv overlapProfile) := hF1c.differentiable (by norm_num)
  have hd := (((hF1 (t / A)).hasDerivAt.comp t ((hasDerivAt_id t).div_const A)).div_const A).div_const
    (sourceNormalization A)
  rw [show deriv (scaledProfile A) = fun t =>
    deriv overlapProfile (t / A) / A / sourceNormalization A from funext (scaledProfile_deriv A)]
  exact hd.congr_deriv (by simp only [div_eq_mul_inv]; ring)


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ProfileTransport/Variant68458214777ed595f63786b7ee40ae5dc5fcc2b9a83e59c88ba1bb4e4820bcd7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ProfileTransport/Variant68458214777ed595f63786b7ee40ae5dc5fcc2b9a83e59c88ba1bb4e4820bcd7.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e6cc926781c4331f2da3bda609e58ff24b497a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
