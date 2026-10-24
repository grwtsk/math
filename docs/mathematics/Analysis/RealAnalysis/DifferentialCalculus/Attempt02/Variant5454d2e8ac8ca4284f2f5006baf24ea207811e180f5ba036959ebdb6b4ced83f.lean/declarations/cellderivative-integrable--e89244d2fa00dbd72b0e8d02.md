# cellDerivative_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f341b0bb-faf9-473d-2db2-60295f883c91",
  "kind": "theorem",
  "lexical_name": "cellDerivative_integrable",
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
  "slug": "cellderivative-integrable--e89244d2fa00dbd72b0e8d02",
  "source": {
    "blob": "901d69ed0a4dd314405859bbc78d4957d906bbcd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 35,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant5454d2e8ac8ca4284f2f5006baf24ea207811e180f5ba036959ebdb6b4ced83f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e89244d2fa00dbd72b0e8d028e912ad0d45e33c0087699b9d7d9e7006b2fabe5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant5454d2e8ac8ca4284f2f5006baf24ea207811e180f5ba036959ebdb6b4ced83f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f341b0bb-faf9-473d-2db2-60295f883c91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cellDerivative_integrable {n : ℕ} (hn : 0 < n) (s : ℝ) :
    IntegrableOn (cellDerivative n s) (Ioc (n:ℝ) (n+1)) := by
  have hc : ContinuousOn (cellDerivative n s) (Icc (n:ℝ) (n+1)) := by
    apply continuousOn_of_forall_continuousAt
    intro x hx
    have hp : 0 < x := (show (0:ℝ)<n by exact_mod_cast hn).trans_le hx.1
    exact (((continuousAt_id.sub_const (n:ℝ)).mul
      (Real.continuousAt_log hp.ne')).div
      (continuousAt_id.rpow_const (Or.inl hp.ne')) (Real.rpow_pos_of_pos hp _).ne').neg
  exact hc.integrableOn_Icc.mono_set Ioc_subset_Icc_self

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant5454d2e8ac8ca4284f2f5006baf24ea207811e180f5ba036959ebdb6b4ced83f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant5454d2e8ac8ca4284f2f5006baf24ea207811e180f5ba036959ebdb6b4ced83f.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `901d69ed0a4dd314405859bbc78d4957d906bbcd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
