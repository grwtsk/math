# testBit_ofBits_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4b33c66-077a-bb2a-4560-67f822162c8e",
  "kind": "theorem",
  "lexical_name": "testBit_ofBits_ge",
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
  "slug": "testbit-ofbits-ge--b964b291d3eb2c1c91b0212c",
  "source": {
    "blob": "0b6de97827af275ee8d022d80cfb9aad64351338",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 45,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant65653c6967624b6de2675b7877be5ace137431efed44a62402e83d6f75522dbd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b964b291d3eb2c1c91b0212ccfb5b8f0e188d6143c1100f8b65f735cb022927a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant65653c6967624b6de2675b7877be5ace137431efed44a62402e83d6f75522dbd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4b33c66-077a-bb2a-4560-67f822162c8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem testBit_ofBits_ge {f : Fin n → Bool} (h : i ≥ n) :
    (ofBits f).testBit i = decide (ofBits f < 0) := by
  simp only [ofBits]
  split
  · have hge : ¬ ofNat (Nat.ofBits f) < 0 := by rw [Int.not_lt]; exact natCast_nonneg ..
    simp only [testBit, Nat.testBit_ofBits_ge _ _ h, hge, decide_false]
  · have hlt := Nat.ofBits_lt_two_pow f
    have h : 2 ^ n - Nat.ofBits f - 1 < 2 ^ i :=
      Nat.lt_of_lt_of_le (by omega) (Nat.pow_le_pow_right Nat.zero_lt_two h)
    simp [testBit, subNatNat_of_lt hlt, Nat.testBit_lt_two_pow h, negSucc_lt_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant65653c6967624b6de2675b7877be5ace137431efed44a62402e83d6f75522dbd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant65653c6967624b6de2675b7877be5ace137431efed44a62402e83d6f75522dbd.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b6de97827af275ee8d022d80cfb9aad64351338` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
