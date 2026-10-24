# cast_sub'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9d994018140cdf6730f774bce62e8beb65f43f11",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1184,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1c/1cee83e951946347bf3260ab1c81f5358b0eb5d6f881032959c5bc4a8c2ff924.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:934e9340-152b-4659-a046-0c7d94ed2907",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2e623e31-ad3a-6267-3782-88060b4930cb",
  "kind": "theorem",
  "lexical_name": "cast_sub'",
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
  "slug": "cast-sub--486b43f7e775dfbdfe6d1cd7",
  "source": {
    "blob": "9d994018140cdf6730f774bce62e8beb65f43f11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1211,
    "line": 1184,
    "path": "GRWTSK/Algebra/GroupTheory/Lemmas/Variant1cee83e951946347bf3260ab1c81f5358b0eb5d6f881032959c5bc4a8c2ff924.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:486b43f7e775dfbdfe6d1cd73270a65ed12e4dfd836090908fd312022f80119b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Lemmas/Variant1cee83e951946347bf3260ab1c81f5358b0eb5d6f881032959c5bc4a8c2ff924.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e623e31-ad3a-6267-3782-88060b4930cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1184–1211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cast_sub' [AddGroupWithOne α] : ∀ m n : PosNum, (sub' m n : α) = m - n
  | a, 1 => by
    rw [sub'_one, Num.cast_toZNum, ← Num.cast_to_nat, pred'_to_nat, ← Nat.sub_one]
    simp [PosNum.cast_pos]
  | 1, b => by
    rw [one_sub', Num.cast_toZNumNeg, ← neg_sub, neg_inj, ← Num.cast_to_nat, pred'_to_nat,
        ← Nat.sub_one]
    simp [PosNum.cast_pos]
  | bit0 a, bit0 b => by
    rw [sub', ZNum.cast_bit0, cast_sub' a b]
    have : ((a + -b + (a + -b) : ℤ) : α) = a + a + (-b + -b) := by simp [add_left_comm]
    simpa [_root_.bit0, sub_eq_add_neg] using this
  | bit0 a, bit1 b => by
    rw [sub', ZNum.cast_bitm1, cast_sub' a b]
    have : ((-b + (a + (-b + -1)) : ℤ) : α) = (a + -1 + (-b + -b) : ℤ) := by
      simp [add_comm, add_left_comm]
    simpa [_root_.bit1, _root_.bit0, sub_eq_add_neg] using this
  | bit1 a, bit0 b => by
    rw [sub', ZNum.cast_bit1, cast_sub' a b]
    have : ((-b + (a + (-b + 1)) : ℤ) : α) = (a + 1 + (-b + -b) : ℤ) := by
      simp [add_comm, add_left_comm]
    simpa [_root_.bit1, _root_.bit0, sub_eq_add_neg] using this
  | bit1 a, bit1 b => by
    rw [sub', ZNum.cast_bit0, cast_sub' a b]
    have : ((-b + (a + -b) : ℤ) : α) = a + (-b + -b) := by simp [add_left_comm]
    simpa [_root_.bit1, _root_.bit0, sub_eq_add_neg] using this
#align pos_num.cast_sub' PosNum.cast_sub'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Lemmas/Variant1cee83e951946347bf3260ab1c81f5358b0eb5d6f881032959c5bc4a8c2ff924.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Lemmas/Variant1cee83e951946347bf3260ab1c81f5358b0eb5d6f881032959c5bc4a8c2ff924.lean#L1184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d994018140cdf6730f774bce62e8beb65f43f11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
