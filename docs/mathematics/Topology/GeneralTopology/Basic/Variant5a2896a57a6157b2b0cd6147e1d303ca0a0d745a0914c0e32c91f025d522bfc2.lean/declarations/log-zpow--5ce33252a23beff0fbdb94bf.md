# log_zpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9caf43e8-33ab-ce0e-c70a-ace378703fee",
  "kind": "theorem",
  "lexical_name": "log_zpow",
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
  "slug": "log-zpow--5ce33252a23beff0fbdb94bf",
  "source": {
    "blob": "0609aec2c81511fa8a97900d12906662d74a8868",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 287,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant5a2896a57a6157b2b0cd6147e1d303ca0a0d745a0914c0e32c91f025d522bfc2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ce33252a23beff0fbdb94bfc93decbf3af954649d19f231166b40f7033a6383",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant5a2896a57a6157b2b0cd6147e1d303ca0a0d745a0914c0e32c91f025d522bfc2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9caf43e8-33ab-ce0e-c70a-ace378703fee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_zpow (x : ℝ) (n : ℤ) : log (x ^ n) = n * log x := by
  cases n
  · rw [Int.ofNat_eq_coe, zpow_natCast, log_pow, Int.cast_natCast]
  · rw [zpow_negSucc, log_inv, log_pow, Int.cast_negSucc, Nat.cast_add_one, neg_mul_eq_neg_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant5a2896a57a6157b2b0cd6147e1d303ca0a0d745a0914c0e32c91f025d522bfc2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant5a2896a57a6157b2b0cd6147e1d303ca0a0d745a0914c0e32c91f025d522bfc2.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0609aec2c81511fa8a97900d12906662d74a8868` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
