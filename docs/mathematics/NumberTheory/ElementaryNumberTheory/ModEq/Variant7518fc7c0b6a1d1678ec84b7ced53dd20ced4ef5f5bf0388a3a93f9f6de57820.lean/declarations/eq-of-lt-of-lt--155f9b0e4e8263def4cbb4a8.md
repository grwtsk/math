# eq_of_lt_of_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb772723-baa4-9932-0ea1-13d0521b8333",
  "kind": "lemma",
  "lexical_name": "eq_of_lt_of_lt",
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
  "slug": "eq-of-lt-of-lt--155f9b0e4e8263def4cbb4a8",
  "source": {
    "blob": "63f9190dcb369537651d0142c3361a5a9689de7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 282,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ModEq/Variant7518fc7c0b6a1d1678ec84b7ced53dd20ced4ef5f5bf0388a3a93f9f6de57820.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:155f9b0e4e8263def4cbb4a84a029f7de9fb1b50841c02afc359d6ad22838a9e",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ModEq/Variant7518fc7c0b6a1d1678ec84b7ced53dd20ced4ef5f5bf0388a3a93f9f6de57820.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb772723-baa4-9932-0ea1-13d0521b8333`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_of_lt_of_lt (h : a ≡ b [MOD m]) (ha : a < m) (hb : b < m) : a = b :=
  h.eq_of_abs_lt $ abs_sub_lt_iff.2
    ⟨(sub_le_self _ $ Int.coe_nat_nonneg _).trans_lt $ Int.ofNat_lt.2 hb,
    (sub_le_self _ $ Int.coe_nat_nonneg _).trans_lt $ Int.ofNat_lt.2 ha⟩
#align nat.modeq.eq_of_lt_of_lt Nat.ModEq.eq_of_lt_of_lt

/-- To cancel a common factor `c` from a `ModEq` we must divide the modulus `m` by `gcd m c` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ModEq/Variant7518fc7c0b6a1d1678ec84b7ced53dd20ced4ef5f5bf0388a3a93f9f6de57820.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ModEq/Variant7518fc7c0b6a1d1678ec84b7ced53dd20ced4ef5f5bf0388a3a93f9f6de57820.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63f9190dcb369537651d0142c3361a5a9689de7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
