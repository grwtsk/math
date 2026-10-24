# erfRemainderBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:feb8eda122c6d2a4f94696a935e11a7a184a1bae893662b0a30edc94561d989e",
  "kind": "def",
  "lexical_name": "erfRemainderBound",
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
  "slug": "erfremainderbound--259d962a4bcde25d78816215",
  "source": {
    "blob": "705d66339726d2591b39171146880e467ac5d960",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 69,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Special/Variant7749748d184caf5fbeeab0f8e5c8e43834245dc5fe953b860168a82cdd5172c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:259d962a4bcde25d7881621568af4d433915d1b4f0a9a8f4f67b09cbcf104bf6",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Special/Variant7749748d184caf5fbeeab0f8e5c8e43834245dc5fe953b860168a82cdd5172c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:feb8eda122c6d2a4f94696a935e11a7a184a1bae893662b0a30edc94561d989e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def erfRemainderBound (domain : IntervalRat) (n : ℕ) : ℚ :=
  let r := max (|domain.lo|) (|domain.hi|)
  -- Taylor remainder plus approximation error for 2/√π
  let taylor_rem := r ^ (n + 1) / (Nat.factorial (n + 1) : ℚ)
  -- Coefficient error: |true - approx| ≤ (erfCoeff_hi - erfCoeff_lo)/2 * sum of poly terms
  let coeff_err := (erfCoeff_hi - erfCoeff_lo) / 2 * r  -- simplified upper bound
  taylor_rem + coeff_err

/-- Remainder bound for erf is nonnegative -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Special/Variant7749748d184caf5fbeeab0f8e5c8e43834245dc5fe953b860168a82cdd5172c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Special/Variant7749748d184caf5fbeeab0f8e5c8e43834245dc5fe953b860168a82cdd5172c3.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `705d66339726d2591b39171146880e467ac5d960` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
