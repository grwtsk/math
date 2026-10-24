# firstPrimeWeight_integral_eq_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d3e0f91b-48ee-9baf-b674-7bc7423c6beb",
  "kind": "theorem",
  "lexical_name": "firstPrimeWeight_integral_eq_neg",
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
  "slug": "firstprimeweight-integral-eq-neg--e25c3183ed007e7dd93f857d",
  "source": {
    "blob": "e4353ffc20566b519a40555b9f0e1d43d8ca25fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 127,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbel/Variant7efde3b8dc4c148619dbe7ac55071a240f8443dafe0b6c6f7fce535644c914c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e25c3183ed007e7dd93f857df729fc79ccfd8f6eb72826d05c01ceaa7c6676ae",
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

Occurrence: `result:d3e0f91b-48ee-9baf-b674-7bc7423c6beb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem firstPrimeWeight_integral_eq_neg (A : ℝ) (hA : 1 ≤ A) :
    (∫ u in 0..2 * A, firstPrimeWeight A u) = -firstPrimeDecayingMain A := by
  have h := pole_correlation_certificate A hA
  change (∫ u in 0..2 * A, firstPrimeWeight A u) + firstPrimeDecayingMain A = 0 at h
  linarith

/-- The source-bound first-prime formula retains the entire exponentially weighted signed remainder. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbel/Variant7efde3b8dc4c148619dbe7ac55071a240f8443dafe0b6c6f7fce535644c914c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbel/Variant7efde3b8dc4c148619dbe7ac55071a240f8443dafe0b6c6f7fce535644c914c2.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4353ffc20566b519a40555b9f0e1d43d8ca25fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
