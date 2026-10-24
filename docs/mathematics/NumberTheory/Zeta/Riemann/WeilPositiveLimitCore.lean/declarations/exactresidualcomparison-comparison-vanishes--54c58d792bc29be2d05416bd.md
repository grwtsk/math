# ExactResidualComparison.comparison_vanishes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f4cace18-5917-4369-faa9-3032f83cd584",
  "kind": "theorem",
  "lexical_name": "ExactResidualComparison.comparison_vanishes",
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
  "slug": "exactresidualcomparison-comparison-vanishes--54c58d792bc29be2d05416bd",
  "source": {
    "blob": "3274afe26def0b38f11d9105f9edb26530ddafe0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 87,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/WeilPositiveLimitCore.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54c58d792bc29be2d05416bdd2a268a517f970636a9c8cb31a0eafc920314571",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/WeilPositiveLimitCore.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4cace18-5917-4369-faa9-3032f83cd584`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ExactResidualComparison.comparison_vanishes {T : Type*}
    (comparison : ExactResidualComparison T)
    (hsource : ∀ f g, VanishesAtInfinity (fun n => comparison.residuals.source n f g))
    (hprime : ∀ f g, VanishesAtInfinity (fun n => comparison.residuals.prime n f g))
    (harchimedean :
      ∀ f g, VanishesAtInfinity (fun n => comparison.residuals.archimedean n f g))
    (hpole : ∀ f g, VanishesAtInfinity (fun n => comparison.residuals.pole n f g))
    (hzero : ∀ f g, VanishesAtInfinity (fun n => comparison.residuals.zero n f g))
    (hendpoint :
      ∀ f g, VanishesAtInfinity (fun n => comparison.residuals.endpoint n f g))
    (hgeometric :
      ∀ f g, VanishesAtInfinity (fun n => comparison.residuals.geometric n f g))
    (hmirror : ∀ f g, VanishesAtInfinity (fun n => comparison.residuals.mirror n f g))
    (htail : ∀ f g, VanishesAtInfinity (fun n => comparison.residuals.tail n f g)) :
    ∀ f g, VanishesAtInfinity
      (fun n => comparison.target f g - comparison.approximant n f g) := by
  have htotal := comparison.residuals.total_vanishes hsource hprime harchimedean hpole
    hzero hendpoint hgeometric hmirror htail
  intro f g ε hε
  obtain ⟨N, hN⟩ := htotal f g ε hε
  refine ⟨N, ?_⟩
  intro n hn
  calc
    |comparison.target f g - comparison.approximant n f g| =
        |comparison.residuals.total n f g| :=
      congrArg abs (comparison.identity n f g)
    _ ≤ ε := hN n hn

/-- A source-independent polarized approximation family with nonnegative diagonal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/WeilPositiveLimitCore.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/WeilPositiveLimitCore.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3274afe26def0b38f11d9105f9edb26530ddafe0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
