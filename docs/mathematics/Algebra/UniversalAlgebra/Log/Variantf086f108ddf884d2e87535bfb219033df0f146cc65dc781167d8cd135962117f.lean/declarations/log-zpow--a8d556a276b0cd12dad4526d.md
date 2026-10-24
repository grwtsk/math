# log_zpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e5708f0f9708d24657af8549151c40079f580cf3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 132,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f0/f086f108ddf884d2e87535bfb219033df0f146cc65dc781167d8cd135962117f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7577cb23-2a37-9b11-c31a-72ba6d405ccd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:49c6ce0b-925a-60bc-79ef-4a7f8ba8a0b1",
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
  "slug": "log-zpow--a8d556a276b0cd12dad4526d",
  "source": {
    "blob": "e5708f0f9708d24657af8549151c40079f580cf3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 132,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Log/Variantf086f108ddf884d2e87535bfb219033df0f146cc65dc781167d8cd135962117f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8d556a276b0cd12dad4526df299a32563a740db46bb6f50176dbd677f57a8e5",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Log/Variantf086f108ddf884d2e87535bfb219033df0f146cc65dc781167d8cd135962117f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49c6ce0b-925a-60bc-79ef-4a7f8ba8a0b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_zpow {b : ℕ} (hb : 1 < b) (z : ℤ) : log b ((b : R) ^ z : R) = z := by
  obtain ⟨n, rfl | rfl⟩ := Int.eq_nat_or_neg z
  · rw [log_of_one_le_right _ (one_le_zpow_of_nonneg _ <| Int.coe_nat_nonneg _), zpow_ofNat, ←
      Nat.cast_pow, Nat.floor_coe, Nat.log_pow hb]
    exact_mod_cast hb.le
  · rw [log_of_right_le_one _ (zpow_le_one_of_nonpos _ <| neg_nonpos.mpr (Int.coe_nat_nonneg _)),
      zpow_neg, inv_inv, zpow_ofNat, ← Nat.cast_pow, Nat.ceil_natCast, Nat.clog_pow _ _ hb]
    exact_mod_cast hb.le
#align int.log_zpow Int.log_zpow

@[mono]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Log/Variantf086f108ddf884d2e87535bfb219033df0f146cc65dc781167d8cd135962117f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Log/Variantf086f108ddf884d2e87535bfb219033df0f146cc65dc781167d8cd135962117f.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5708f0f9708d24657af8549151c40079f580cf3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
