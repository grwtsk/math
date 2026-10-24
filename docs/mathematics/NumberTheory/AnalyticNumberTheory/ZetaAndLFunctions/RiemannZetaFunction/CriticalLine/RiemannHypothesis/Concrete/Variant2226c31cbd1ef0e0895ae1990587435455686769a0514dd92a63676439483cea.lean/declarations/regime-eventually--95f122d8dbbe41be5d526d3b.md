# regime_eventually

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4ebbffee-786d-a81f-3dce-c618dd2cf5ce",
  "kind": "lemma",
  "lexical_name": "regime_eventually",
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
  "slug": "regime-eventually--95f122d8dbbe41be5d526d3b",
  "source": {
    "blob": "0b7cd22ca7a05a27b73662f0731932eb76fffc5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 114,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant2226c31cbd1ef0e0895ae1990587435455686769a0514dd92a63676439483cea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95f122d8dbbe41be5d526d3b71f05ad9388f19cdb530515afbbb97f837426876",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant2226c31cbd1ef0e0895ae1990587435455686769a0514dd92a63676439483cea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ebbffee-786d-a81f-3dce-c618dd2cf5ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma regime_eventually (hP : P.Valid) : ∀ᶠ T in atTop,
    1 ≤ T ∧ 1 ≤ l T ∧ 1 ≤ Real.log (l T) ∧ 1 ≤ P.L T ∧ 2 ≤ P.X T ∧ P.L T ≤ l T
      ∧ P.X T ≤ Real.exp (l T) := by
  have hlam := hP.lam_pos
  filter_upwards [eventually_ge_atTop 1, eventually_l_ge 1, eventually_log_l_ge 1,
    eventually_L_ge P hlam 1] with T h1 h2 h3 h4
  have hLl : P.L T ≤ l T := L_le_l P hP.lam_le_one (by linarith)
  refine ⟨h1, h2, h3, h4, ?_, hLl, ?_⟩
  · have : Real.exp 1 ≤ P.X T := Real.exp_le_exp.2 h4
    have he : (2:ℝ) ≤ Real.exp 1 := by
      have := Real.add_one_le_exp (1:ℝ); linarith
    linarith
  · exact Real.exp_le_exp.2 hLl

/-- the taper hypotheses of §5 for the window family, eventually. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant2226c31cbd1ef0e0895ae1990587435455686769a0514dd92a63676439483cea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant2226c31cbd1ef0e0895ae1990587435455686769a0514dd92a63676439483cea.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b7cd22ca7a05a27b73662f0731932eb76fffc5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
