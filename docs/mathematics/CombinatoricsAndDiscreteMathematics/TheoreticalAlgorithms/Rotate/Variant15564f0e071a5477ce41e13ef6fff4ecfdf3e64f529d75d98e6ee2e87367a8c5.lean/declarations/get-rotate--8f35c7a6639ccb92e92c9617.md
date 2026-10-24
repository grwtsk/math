# get?_rotate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12719a7c-0ad3-2935-6909-9d142f64d050",
  "kind": "theorem",
  "lexical_name": "get?_rotate",
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
  "slug": "get-rotate--8f35c7a6639ccb92e92c9617",
  "source": {
    "blob": "4de05dec2c56f851c6433268488f3509e0718553",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 242,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rotate/Variant15564f0e071a5477ce41e13ef6fff4ecfdf3e64f529d75d98e6ee2e87367a8c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f35c7a6639ccb92e92c961716ddf3653a0b0dce30c35918dbb35a0a10f87c6d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rotate/Variant15564f0e071a5477ce41e13ef6fff4ecfdf3e64f529d75d98e6ee2e87367a8c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12719a7c-0ad3-2935-6909-9d142f64d050`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem get?_rotate {l : List α} {n m : ℕ} (hml : m < l.length) :
    (l.rotate n).get? m = l.get? ((m + n) % l.length) := by
  rw [rotate_eq_drop_append_take_mod]
  rcases lt_or_le m (l.drop (n % l.length)).length with hm | hm
  · rw [get?_append hm, get?_drop, add_comm m, ← mod_add_mod]
    rw [length_drop, lt_tsub_iff_left] at hm
    rw [mod_eq_of_lt hm]
  · have hlt : n % length l < length l := mod_lt _ (m.zero_le.trans_lt hml)
    rw [get?_append_right hm, get?_take, length_drop]
    · congr 1
      rw [length_drop] at hm
      have hm' := tsub_le_iff_left.1 hm
      have : n % length l + m - length l < length l
      · rw [tsub_lt_iff_left hm']
        exact Nat.add_lt_add hlt hml
      conv_rhs => rw [add_comm m, ← mod_add_mod, mod_eq_sub_mod hm', mod_eq_of_lt this]
      rw [← add_right_inj l.length, ← add_tsub_assoc_of_le, add_tsub_tsub_cancel,
        add_tsub_cancel_of_le, add_comm]
      exacts [hm', hlt.le, hm]
    · rwa [tsub_lt_iff_left hm, length_drop, tsub_add_cancel_of_le hlt.le]
#align list.nth_rotate List.get?_rotate

-- porting note: new lemma
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rotate/Variant15564f0e071a5477ce41e13ef6fff4ecfdf3e64f529d75d98e6ee2e87367a8c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rotate/Variant15564f0e071a5477ce41e13ef6fff4ecfdf3e64f529d75d98e6ee2e87367a8c5.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4de05dec2c56f851c6433268488f3509e0718553` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
