# first_prime_summand

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:68bc3d8c-7ebc-2689-3285-56e4c1eebf62",
  "kind": "theorem",
  "lexical_name": "first_prime_summand",
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
  "slug": "first-prime-summand--2d3bae91953cc5eeb347bc57",
  "source": {
    "blob": "63e555df0f22c9de6bbc1a457712f7da87f4fab1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 58,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Varianta3e3f5c13694092ce16861b54ffdf34149d46d96da099ee521b0a8780cf6cbf0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d3bae91953cc5eeb347bc57a8cef30cd2727e97e8475a330c0bc18d2e7665b0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Varianta3e3f5c13694092ce16861b54ffdf34149d46d96da099ee521b0a8780cf6cbf0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68bc3d8c-7ebc-2689-3285-56e4c1eebf62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem first_prime_summand (A : ℝ) (p : ℕ) (hp : p.Prime) :
    Real.log (p : ℝ) / Real.sqrt (p : ℝ) *
      sourceCorrelation explicitSecondDerivative A (Real.log (p : ℝ)) =
    Real.log (p : ℝ) / (p : ℝ) * firstPrimeWeight A (Real.log (p : ℝ)) := by
  have hp0 : 0 < (p : ℝ) := by exact_mod_cast hp.pos
  have hs : Real.sqrt (p : ℝ) ^ 2 = (p : ℝ) := Real.sq_sqrt hp0.le
  have hsn : Real.sqrt (p : ℝ) ≠ 0 := (Real.sqrt_pos.mpr hp0).ne'
  unfold firstPrimeWeight
  rw [Real.exp_half, Real.exp_log hp0]
  field_simp
  rw [hs]
  ring

/-- The original strict prime sum closes only at a vanishing actual correlation value. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Varianta3e3f5c13694092ce16861b54ffdf34149d46d96da099ee521b0a8780cf6cbf0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Varianta3e3f5c13694092ce16861b54ffdf34149d46d96da099ee521b0a8780cf6cbf0.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63e555df0f22c9de6bbc1a457712f7da87f4fab1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
