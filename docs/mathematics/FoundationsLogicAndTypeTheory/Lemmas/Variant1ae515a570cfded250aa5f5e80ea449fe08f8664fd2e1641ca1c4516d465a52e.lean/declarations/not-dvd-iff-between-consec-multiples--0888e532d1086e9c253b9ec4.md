# not_dvd_iff_between_consec_multiples

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b9ab84df-9da9-c15c-0f95-815fb7ceb924",
  "kind": "theorem",
  "lexical_name": "not_dvd_iff_between_consec_multiples",
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
  "slug": "not-dvd-iff-between-consec-multiples--0888e532d1086e9c253b9ec4",
  "source": {
    "blob": "e925f2aefbbbc40d44a26ea4c5b1ed0a3ae6e79e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 238,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Lemmas/Variant1ae515a570cfded250aa5f5e80ea449fe08f8664fd2e1641ca1c4516d465a52e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0888e532d1086e9c253b9ec45c50a8b0d5ea04970c3ad172f10d98c9c4d707e3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Lemmas/Variant1ae515a570cfded250aa5f5e80ea449fe08f8664fd2e1641ca1c4516d465a52e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9ab84df-9da9-c15c-0f95-815fb7ceb924`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_dvd_iff_between_consec_multiples (n : ℕ) {a : ℕ} (ha : 0 < a) :
    (∃ k : ℕ, a * k < n ∧ n < a * (k + 1)) ↔ ¬a ∣ n := by
  refine'
    ⟨fun ⟨k, hk1, hk2⟩ => not_dvd_of_between_consec_multiples hk1 hk2, fun han =>
      ⟨n / a, ⟨lt_of_le_of_ne (mul_div_le n a) _, lt_mul_div_succ _ ha⟩⟩⟩
  exact mt (Dvd.intro (n / a)) han
#align nat.not_dvd_iff_between_consec_multiples Nat.not_dvd_iff_between_consec_multiples

/-- Two natural numbers are equal if and only if they have the same multiples. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Lemmas/Variant1ae515a570cfded250aa5f5e80ea449fe08f8664fd2e1641ca1c4516d465a52e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Lemmas/Variant1ae515a570cfded250aa5f5e80ea449fe08f8664fd2e1641ca1c4516d465a52e.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e925f2aefbbbc40d44a26ea4c5b1ed0a3ae6e79e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
