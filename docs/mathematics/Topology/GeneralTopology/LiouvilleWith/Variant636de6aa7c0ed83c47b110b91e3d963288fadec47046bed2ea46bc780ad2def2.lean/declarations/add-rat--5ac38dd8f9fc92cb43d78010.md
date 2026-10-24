# add_rat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5881e446c8236fb773bfe5427ba8bed33a85a284",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 163,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/63/636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e4b69261-50c3-62ca-4c2d-87714e133ac1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:037f6bd1-6be8-219b-a742-27e0851f1278",
  "kind": "theorem",
  "lexical_name": "add_rat",
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
  "slug": "add-rat--5ac38dd8f9fc92cb43d78010",
  "source": {
    "blob": "5881e446c8236fb773bfe5427ba8bed33a85a284",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 163,
    "path": "GRWTSK/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ac38dd8f9fc92cb43d780103a3797abfeced10ab431090452a763c8aa9132d8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:037f6bd1-6be8-219b-a742-27e0851f1278`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem add_rat (h : LiouvilleWith p x) (r : ℚ) : LiouvilleWith p (x + r) := by
  rcases h.exists_pos with ⟨C, _hC₀, hC⟩
  refine ⟨r.den ^ p * C, (tendsto_id.nsmul_atTop r.pos).frequently (hC.mono ?_)⟩
  rintro n ⟨hn, m, hne, hlt⟩
  have : (↑(r.den * m + r.num * n : ℤ) / ↑(r.den • id n) : ℝ) = m / n + r := by
    rw [Algebra.id.smul_eq_mul, id]
    nth_rewrite 4 [← Rat.num_div_den r]
    push_cast
    rw [add_div, mul_div_mul_left _ _ (by positivity), mul_div_mul_right _ _ (by positivity)]
  refine ⟨r.den * m + r.num * n, ?_⟩; rw [this, add_sub_add_right_eq_sub]
  refine ⟨by simpa, hlt.trans_le (le_of_eq ?_)⟩
  have : (r.den ^ p : ℝ) ≠ 0 := by positivity
  simp [mul_rpow, Nat.cast_nonneg, mul_div_mul_left, this]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5881e446c8236fb773bfe5427ba8bed33a85a284` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
