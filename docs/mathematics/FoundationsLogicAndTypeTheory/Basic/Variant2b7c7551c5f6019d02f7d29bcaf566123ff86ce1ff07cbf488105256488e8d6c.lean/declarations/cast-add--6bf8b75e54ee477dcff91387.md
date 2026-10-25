# cast_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9513397a-1765-07a7-1165-b323e60046c3",
  "kind": "theorem",
  "lexical_name": "cast_add",
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
  "slug": "cast-add--6bf8b75e54ee477dcff91387",
  "source": {
    "blob": "90156894dabdccc157db17c8bb099284810741b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 105,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variant2b7c7551c5f6019d02f7d29bcaf566123ff86ce1ff07cbf488105256488e8d6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6bf8b75e54ee477dcff91387636dac02bcd4dcaffa626b7c373d404c73d7f2ad",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Basic/Variant2b7c7551c5f6019d02f7d29bcaf566123ff86ce1ff07cbf488105256488e8d6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9513397a-1765-07a7-1165-b323e60046c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cast_add : ∀ m n, ((m + n : ℤ) : R) = m + n
  | (m : ℕ), (n : ℕ) => by simp [← Int.natCast_add]
  | (m : ℕ), -[n+1] => by
    rw [Int.ofNat_add_negSucc, cast_subNatNat, cast_natCast, cast_negSucc, sub_eq_add_neg]
  | -[m+1], (n : ℕ) => by
    rw [Int.negSucc_add_ofNat, cast_subNatNat, cast_natCast, cast_negSucc, sub_eq_iff_eq_add,
      add_assoc, eq_neg_add_iff_add_eq, ← Nat.cast_add, ← Nat.cast_add, Nat.add_comm]
  | -[m+1], -[n+1] => by
    rw [Int.negSucc_add_negSucc, succ_eq_add_one, cast_negSucc, cast_negSucc, cast_negSucc,
      ← neg_add_rev, ← Nat.cast_add, Nat.add_right_comm m n 1, Nat.add_assoc, Nat.add_comm]
-- type had `HasLiftT`

@[simp, norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Basic/Variant2b7c7551c5f6019d02f7d29bcaf566123ff86ce1ff07cbf488105256488e8d6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variant2b7c7551c5f6019d02f7d29bcaf566123ff86ce1ff07cbf488105256488e8d6c.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90156894dabdccc157db17c8bb099284810741b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
