# weightedPrime_mertens_real_fixed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f7c84995668a909984fbfcf0e5d17788dabc31d5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 40,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7e91c8bb38f16cff84392b599befa22d93656b0b986a295429d7dd3a5a2b8ff7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9c11153b-756f-b675-082b-3ca9b32204c6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b197b952-75d3-0ae9-c8bc-bd9b2270b0d1",
  "kind": "theorem",
  "lexical_name": "weightedPrime_mertens_real_fixed",
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
  "slug": "weightedprime-mertens-real-fixed--9200950b1a921947a7694ae7",
  "source": {
    "blob": "f7c84995668a909984fbfcf0e5d17788dabc31d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 40,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceProperPowerMertens/Variant7e91c8bb38f16cff84392b599befa22d93656b0b986a295429d7dd3a5a2b8ff7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9200950b1a921947a7694ae759cad140ea9a06d297d665c0c415a6c70d4d8a46",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceProperPowerMertens/Variant7e91c8bb38f16cff84392b599befa22d93656b0b986a295429d7dd3a5a2b8ff7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b197b952-75d3-0ae9-c8bc-bd9b2270b0d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedPrime_mertens_real_fixed (x : ℝ) (hx : 1 ≤ x) :
    |(∑ p ∈ (Ioc 0 ⌊x⌋₊).filter Nat.Prime, Real.log (p : ℝ) / (p : ℝ)) -
      Real.log x| ≤ Real.log 4 + 4 := by
  have hN : 1 ≤ ⌊x⌋₊ := (Nat.one_le_floor_iff x).mpr hx
  have hb := weightedPrime_sub_log_bounds ⌊x⌋₊ hN
  have hfloor := abs_le.mp (log_floor_error x hx)
  have hfloor0 : Real.log (⌊x⌋₊ : ℝ) - Real.log x ≤ 0 := by
    apply sub_nonpos.mpr
    apply Real.log_le_log
    · exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hN)
    · exact Nat.floor_le (by linarith)
  have hlog24 : Real.log (2 : ℝ) ≤ Real.log 4 :=
    Real.log_le_log (by norm_num) (by norm_num)
  rw [← weightedPrime_eq_filtered]
  apply abs_le.mpr
  constructor <;> linarith

/-- The logarithmic cutoff specialization retains the original fixed source floor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceProperPowerMertens/Variant7e91c8bb38f16cff84392b599befa22d93656b0b986a295429d7dd3a5a2b8ff7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceProperPowerMertens/Variant7e91c8bb38f16cff84392b599befa22d93656b0b986a295429d7dd3a5a2b8ff7.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7c84995668a909984fbfcf0e5d17788dabc31d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
