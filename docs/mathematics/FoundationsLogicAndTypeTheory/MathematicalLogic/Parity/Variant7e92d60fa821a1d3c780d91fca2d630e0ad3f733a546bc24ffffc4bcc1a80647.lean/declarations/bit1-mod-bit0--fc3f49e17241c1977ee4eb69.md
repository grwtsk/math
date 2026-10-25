# bit1_mod_bit0

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fdfc1cf9f53c5e04d62556b6aa32cb0487be8d9b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 266,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7e92d60fa821a1d3c780d91fca2d630e0ad3f733a546bc24ffffc4bcc1a80647.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6ab56714-d15f-4933-3895-47ee9c1287e8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fac70bff-08e3-aee4-c044-9f37d10d7936",
  "kind": "theorem",
  "lexical_name": "bit1_mod_bit0",
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
  "slug": "bit1-mod-bit0--fc3f49e17241c1977ee4eb69",
  "source": {
    "blob": "fdfc1cf9f53c5e04d62556b6aa32cb0487be8d9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 266,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Parity/Variant7e92d60fa821a1d3c780d91fca2d630e0ad3f733a546bc24ffffc4bcc1a80647.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc3f49e17241c1977ee4eb69333cf0f942c5dfb1dc8d142794f3124d03daca09",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Parity/Variant7e92d60fa821a1d3c780d91fca2d630e0ad3f733a546bc24ffffc4bcc1a80647.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fac70bff-08e3-aee4-c044-9f37d10d7936`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bit1_mod_bit0 : bit1 n % bit0 m = bit1 (n % m) := by
  have h₁ := congr_arg bit1 (Nat.div_add_mod n m)
  -- `∀ m n : ℕ, bit0 m * n = bit0 (m * n)` seems to be missing...
  rw [bit1_add, bit0_eq_two_mul, ← mul_assoc, ← bit0_eq_two_mul] at h₁
  have h₂ := Nat.div_add_mod (bit1 n) (bit0 m)
  rw [bit1_div_bit0] at h₂
  exact add_left_cancel (h₂.trans h₁.symm)
#align nat.bit1_mod_bit0 Nat.bit1_mod_bit0

end

-- Here are examples of how `parity_simps` can be used with `Nat`.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Parity/Variant7e92d60fa821a1d3c780d91fca2d630e0ad3f733a546bc24ffffc4bcc1a80647.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Parity/Variant7e92d60fa821a1d3c780d91fca2d630e0ad3f733a546bc24ffffc4bcc1a80647.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdfc1cf9f53c5e04d62556b6aa32cb0487be8d9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
