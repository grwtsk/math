# correctionKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e6bd887f33be8ff5e52ea3842f19d51114abbf2808ef25ef0df4bcba763395a5",
  "kind": "def",
  "lexical_name": "correctionKernel",
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
  "slug": "correctionkernel--2e2c7a67315529b0cd6ee60f",
  "source": {
    "blob": "06162b3e39a6c3bc5028be005ab91fdd65d9e049",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 79,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PolynomialCorrection/Variant21c11e534cbad2fd5a1b4d91096f27c17fbc28bcd0cc72bcb4f105e2a135a83c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2e2c7a67315529b0cd6ee60f0973061430aa596dceab24c7a9bb65c6147f35f8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PolynomialCorrection/Variant21c11e534cbad2fd5a1b4d91096f27c17fbc28bcd0cc72bcb4f105e2a135a83c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e6bd887f33be8ff5e52ea3842f19d51114abbf2808ef25ef0df4bcba763395a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def correctionKernel (m : ℕ) (s : ℂ) : ℂ :=
  (65536 / 109395 : ℂ) / 16 * J (m + 17) s +
    (131072 / 45045 : ℂ) / 2 * J (m + 15) s +
    (196608 / 5005 : ℂ) * J (m + 13) s

/-- The degree-zero correction kernel is the original finite correction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PolynomialCorrection/Variant21c11e534cbad2fd5a1b4d91096f27c17fbc28bcd0cc72bcb4f105e2a135a83c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PolynomialCorrection/Variant21c11e534cbad2fd5a1b4d91096f27c17fbc28bcd0cc72bcb4f105e2a135a83c.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06162b3e39a6c3bc5028be005ab91fdd65d9e049` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
