# log_eq_of_pow_le_of_lt_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f778e471-48b7-146f-ba4a-1bf502ffaed3",
  "kind": "theorem",
  "lexical_name": "log_eq_of_pow_le_of_lt_pow",
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
  "slug": "log-eq-of-pow-le-of-lt-pow--02c8328e6aaa0519e6d1213f",
  "source": {
    "blob": "0f2fcd5d8652da3549135bf42084766253efaaa3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 156,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Log/Variant2589ca85fcf095906393320096b18bb87d7ea86e1ddd76ec6044eb28b9a9ad51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02c8328e6aaa0519e6d1213fca6a2aa1eb4f5dff1ccbcc819909fe1273677317",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Log/Variant2589ca85fcf095906393320096b18bb87d7ea86e1ddd76ec6044eb28b9a9ad51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f778e471-48b7-146f-ba4a-1bf502ffaed3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_eq_of_pow_le_of_lt_pow {b m n : ℕ} (h₁ : b ^ m ≤ n) (h₂ : n < b ^ (m + 1)) :
    log b n = m := by
  rcases eq_or_ne m 0 with (rfl | hm)
  · rw [pow_one] at h₂
    exact log_of_lt h₂
  · exact (log_eq_iff (Or.inl hm)).2 ⟨h₁, h₂⟩
#align nat.log_eq_of_pow_le_of_lt_pow Nat.log_eq_of_pow_le_of_lt_pow

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Log/Variant2589ca85fcf095906393320096b18bb87d7ea86e1ddd76ec6044eb28b9a9ad51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Log/Variant2589ca85fcf095906393320096b18bb87d7ea86e1ddd76ec6044eb28b9a9ad51.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f2fcd5d8652da3549135bf42084766253efaaa3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
