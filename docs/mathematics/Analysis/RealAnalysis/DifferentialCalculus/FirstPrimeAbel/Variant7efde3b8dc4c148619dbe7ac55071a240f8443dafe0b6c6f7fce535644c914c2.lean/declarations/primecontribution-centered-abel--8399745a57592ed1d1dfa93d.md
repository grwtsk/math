# primeContribution_centered_abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:838b15e3-4081-5cbd-f770-a6d61fdaf565",
  "kind": "theorem",
  "lexical_name": "primeContribution_centered_abel",
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
  "slug": "primecontribution-centered-abel--8399745a57592ed1d1dfa93d",
  "source": {
    "blob": "e4353ffc20566b519a40555b9f0e1d43d8ca25fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 117,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbel/Variant7efde3b8dc4c148619dbe7ac55071a240f8443dafe0b6c6f7fce535644c914c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8399745a57592ed1d1dfa93ddeb7144d124148a431181f4ca03fa774b09709a1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbel/Variant7efde3b8dc4c148619dbe7ac55071a240f8443dafe0b6c6f7fce535644c914c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:838b15e3-4081-5cbd-f770-a6d61fdaf565`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeContribution_centered_abel (A : ℝ) (hA : 1 ≤ A) :
    primeContribution A = (∫ u in 0..2 * A, firstPrimeWeight A u) + thetaConstant -
      firstPrimeRemainder A := by
  rw [primeContribution_eq_closed A hA]
  exact primeHarmonicPrefix_centered_abel (2 * A) (by linarith) (firstPrimeWeight A)
    ((firstPrimeWeight_contDiff A hA).differentiable (by norm_num))
    (firstPrimeWeight_contDiff A hA).continuous_deriv_one
    (firstPrimeWeight_zero_endpoint A hA) (firstPrimeWeight_at_zero A hA)

/-- The original pole cancellation replaces the growing main integral by a decaying one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbel/Variant7efde3b8dc4c148619dbe7ac55071a240f8443dafe0b6c6f7fce535644c914c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbel/Variant7efde3b8dc4c148619dbe7ac55071a240f8443dafe0b6c6f7fce535644c914c2.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4353ffc20566b519a40555b9f0e1d43d8ca25fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
