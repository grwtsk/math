# no_frequency_norm_margin_of_large_logMass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:83078c68-5b96-11e7-d0e4-c41831dd0f13",
  "kind": "theorem",
  "lexical_name": "no_frequency_norm_margin_of_large_logMass",
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
  "slug": "no-frequency-norm-margin-of-large-logmass--2fa5fe34574119bdac28db44",
  "source": {
    "blob": "090b9b5e9658c4b5042fd4c1cdfba17e967fc855",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 87,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachDirectionalMinorBoundary.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2fa5fe34574119bdac28db44e8e2b3ec9941c136a00c698aeb4abfb3a4c7acff",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachDirectionalMinorBoundary.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83078c68-5b96-11e7-d0e4-c41831dd0f13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem no_frequency_norm_margin_of_large_logMass
    {Q N : ℕ} (hscale : 2 * Q ^ 2 < N + 1) (B : ℕ → ℕ → ℝ)
    (hp : ∀ q, 0 < q → q ≤ Q → ∀ r, r < q → q.Coprime r →
      0 ≤ B q r ∧ ∀ k ≤ N, ‖goldbachResiduePrefixDiscrepancy k q r‖ ≤ B q r)
    (L T U : ℝ)
    (hupper : (goldbachProgressionArcModelMajorSum Q N).re ≤ U)
    (hlarge : 2 * U ≤ goldbachLogMass N)
    (hmodel : L ≤ (goldbachProgressionArcModelMajorSum Q N).re)
    (hminor : ‖goldbachRationalMinorContribution Q N‖ ≤ T) :
    ¬ (goldbachFrequencyMajorErrorBudget Q N B + T < L) := by
  intro hmargin
  have h := (goldbachLogMass_interval_of_frequency_norm_margin
    hscale B hp L T hmodel hminor hmargin).2
  linarith

/-- A lower bound for the real part of the full signed minor term suffices.
The error parameters must be supplied independently of the unknown mass. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachDirectionalMinorBoundary.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachDirectionalMinorBoundary.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `090b9b5e9658c4b5042fd4c1cdfba17e967fc855` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
