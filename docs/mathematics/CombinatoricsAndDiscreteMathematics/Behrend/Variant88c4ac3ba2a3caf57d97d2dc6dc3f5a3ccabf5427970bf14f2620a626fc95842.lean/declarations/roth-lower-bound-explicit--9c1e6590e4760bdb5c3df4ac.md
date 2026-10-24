# roth_lower_bound_explicit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4172d38d8a681aa347b81d0c994a9cef488018de",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 418,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/88/88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1f10a323-548d-47d7-51bc-e1391d872b90",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d655d780-6fb2-75a2-e3d2-2e5ccdc9346f",
  "kind": "theorem",
  "lexical_name": "roth_lower_bound_explicit",
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
  "slug": "roth-lower-bound-explicit--9c1e6590e4760bdb5c3df4ac",
  "source": {
    "blob": "4172d38d8a681aa347b81d0c994a9cef488018de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 451,
    "line": 418,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c1e6590e4760bdb5c3df4ace6608715eed6ba9f67ddd32b1a1a0d48228f84f7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d655d780-6fb2-75a2-e3d2-2e5ccdc9346f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 418–451.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem roth_lower_bound_explicit (hN : 4096 ≤ N) :
    (N : ℝ) * exp (-4 * √(log N)) < rothNumberNat N := by
  let n := nValue N
  have hn : 0 < (n : ℝ) := cast_pos.2 (nValue_pos <| hN.trans' <| by norm_num1)
  have hd : 0 < dValue N := dValue_pos (hN.trans' <| by norm_num1)
  have hN₀ : 0 < (N : ℝ) := cast_pos.2 (hN.trans' <| by norm_num1)
  have hn₂ : 2 < n := three_le_nValue <| hN.trans' <| by norm_num1
  have : (2 * dValue N - 1) ^ n ≤ N := le_N (hN.trans' <| by norm_num1)
  calc
    _ ≤ (N ^ (nValue N : ℝ)⁻¹ / rexp 1 : ℝ) ^ (n - 2) / n := ?_
    _ < _ := by gcongr; exacts [(tsub_pos_of_lt hn₂).ne', bound hN]
    _ ≤ rothNumberNat ((2 * dValue N - 1) ^ n) := bound_aux hd.ne' hn₂.le
    _ ≤ rothNumberNat N := mod_cast rothNumberNat.mono this
  rw [← rpow_natCast, div_rpow (rpow_nonneg hN₀.le _) (exp_pos _).le, ← rpow_mul hN₀.le,
    inv_mul_eq_div, cast_sub hn₂.le, cast_two, same_sub_div hn.ne', exp_one_rpow,
    div_div, rpow_sub hN₀, rpow_one, div_div, div_eq_mul_inv]
  gcongr _ * ?_
  rw [mul_inv, mul_inv, ← exp_neg, ← rpow_neg (cast_nonneg _), neg_sub, ← div_eq_mul_inv]
  have : exp (-4 * √(log N)) = exp (-2 * √(log N)) * exp (-2 * √(log N)) := by
    rw [← exp_add, ← add_mul]
    norm_num
  rw [this]
  gcongr
  · rw [← le_log_iff_exp_le (rpow_pos_of_pos hN₀ _), log_rpow hN₀, ← le_div_iff₀, mul_div_assoc,
      div_sqrt, neg_mul, neg_le_neg_iff, div_mul_eq_mul_div, div_le_iff₀ hn]
    · gcongr
      apply le_ceil
    refine Real.sqrt_pos.2 (log_pos ?_)
    rw [one_lt_cast]
    exact hN.trans_lt' (by norm_num1)
  · refine (exp_neg_two_mul_le <| Real.sqrt_pos.2 <| log_pos ?_).le
    rw [one_lt_cast]
    exact hN.trans_lt' (by norm_num1)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean#L418).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4172d38d8a681aa347b81d0c994a9cef488018de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
