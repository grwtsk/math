# erfTaylorCoeffs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:adc68ffadf06aabf3f5174853252d8b8325da28ef0648b952d806527ef5349e0",
  "kind": "def",
  "lexical_name": "erfTaylorCoeffs",
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
  "slug": "erftaylorcoeffs--54eb8c0400201375fa034804",
  "source": {
    "blob": "705d66339726d2591b39171146880e467ac5d960",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 54,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Special/Variant7749748d184caf5fbeeab0f8e5c8e43834245dc5fe953b860168a82cdd5172c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:54eb8c0400201375fa0348046a26c5d4033e7ac35429f9b7041192e75d46c454",
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

Occurrence: `declaration:adc68ffadf06aabf3f5174853252d8b8325da28ef0648b952d806527ef5349e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def erfTaylorCoeffs (n : ℕ) : ℕ → ℚ := fun i =>
  if i ≤ n then
    if i % 2 = 1 then  -- odd terms only
      let k := (i - 1) / 2
      let coeff := (erfCoeff_lo + erfCoeff_hi) / 2  -- middle approximation
      coeff * ((-1 : ℚ) ^ k) / ((Nat.factorial k : ℚ) * (2 * k + 1))
    else 0
  else 0

/-- Taylor polynomial for erf of degree n -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Special/Variant7749748d184caf5fbeeab0f8e5c8e43834245dc5fe953b860168a82cdd5172c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Special/Variant7749748d184caf5fbeeab0f8e5c8e43834245dc5fe953b860168a82cdd5172c3.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `705d66339726d2591b39171146880e467ac5d960` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
