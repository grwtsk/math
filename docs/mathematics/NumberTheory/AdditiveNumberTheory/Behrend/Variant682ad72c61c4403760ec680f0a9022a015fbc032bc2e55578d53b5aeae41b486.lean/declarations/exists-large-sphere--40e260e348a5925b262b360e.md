# exists_large_sphere

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c88d0cc6ea789f844c1965755e3aff73d42ed2f6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 251,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ab991843-181c-6180-5fbd-87e86407340d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:70ba9cc1-5708-a988-be2f-df7791f9f6a6",
  "kind": "theorem",
  "lexical_name": "exists_large_sphere",
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
  "slug": "exists-large-sphere--40e260e348a5925b262b360e",
  "source": {
    "blob": "c88d0cc6ea789f844c1965755e3aff73d42ed2f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 251,
    "path": "GRWTSK/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40e260e348a5925b262b360ea1c1c70ec3d4182e2ae105ea3f343e70349a3ce2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70ba9cc1-5708-a988-be2f-df7791f9f6a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_large_sphere (n d : ℕ) : ∃ k, (d ^ n / ↑(n * d ^ 2) : ℝ) ≤ (sphere n d k).card := by
  obtain ⟨k, -, hk⟩ := exists_large_sphere_aux n d
  refine' ⟨k, _⟩
  obtain rfl | hn := n.eq_zero_or_pos
  · simp
  obtain rfl | hd := d.eq_zero_or_pos
  · simp
  rw [rpow_nat_cast, ← cast_pow]
  refine' (div_le_div_of_le_left _ _ _).trans hk
  · exact cast_nonneg _
  · exact cast_add_one_pos _
  simp only [← le_sub_iff_add_le', cast_mul, ← mul_sub, cast_pow, cast_sub hd, sub_sq, one_pow,
    cast_one, mul_one, sub_add, sub_sub_self]
  apply one_le_mul_of_one_le_of_one_le
  · rwa [one_le_cast]
  rw [_root_.le_sub_iff_add_le]
  norm_num
  exact one_le_cast.2 hd
#align behrend.exists_large_sphere Behrend.exists_large_sphere

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c88d0cc6ea789f844c1965755e3aff73d42ed2f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
