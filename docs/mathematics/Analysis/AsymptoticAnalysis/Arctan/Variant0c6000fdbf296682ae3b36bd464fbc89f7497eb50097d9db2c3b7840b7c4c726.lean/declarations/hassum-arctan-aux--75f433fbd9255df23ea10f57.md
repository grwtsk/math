# hasSum_arctan_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3d6ffd8c3539aa225796b0f39a9e208bff708c4d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 95,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0c6000fdbf296682ae3b36bd464fbc89f7497eb50097d9db2c3b7840b7c4c726.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ef33aff0-679c-a841-bb95-019e80730f02",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c35e6c57-b8da-54ac-6382-2adede8f82a8",
  "kind": "lemma",
  "lexical_name": "hasSum_arctan_aux",
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
  "slug": "hassum-arctan-aux--75f433fbd9255df23ea10f57",
  "source": {
    "blob": "3d6ffd8c3539aa225796b0f39a9e208bff708c4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 95,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Arctan/Variant0c6000fdbf296682ae3b36bd464fbc89f7497eb50097d9db2c3b7840b7c4c726.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75f433fbd9255df23ea10f57c1d7cfc5e58ff6bb3b1459009767936c380d8795",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Arctan/Variant0c6000fdbf296682ae3b36bd464fbc89f7497eb50097d9db2c3b7840b7c4c726.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c35e6c57-b8da-54ac-6382-2adede8f82a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasSum_arctan_aux {z : ℂ} (hz : ‖z‖ < 1) :
    log (1 + z * I) + -log (1 - z * I) = log ((1 + z * I) / (1 - z * I)) := by
  have z₁ := mem_slitPlane_iff_arg.mp (mem_slitPlane_of_norm_lt_one (z := z * I) (by simpa))
  have z₂ := mem_slitPlane_iff_arg.mp (mem_slitPlane_of_norm_lt_one (z := -(z * I)) (by simpa))
  rw [← sub_eq_add_neg] at z₂
  rw [← log_inv _ z₂.1, ← (log_mul_eq_add_log_iff z₁.2 (inv_eq_zero.ne.mpr z₂.2)).mpr,
    div_eq_mul_inv]
  -- `log_mul_eq_add_log_iff` requires a bound on `arg (1 + z * I) + arg (1 - z * I)⁻¹`.
  -- `arg_one_add_mem_Ioo` provides sufficiently tight bounds on both terms
  have b₁ := arg_one_add_mem_Ioo (z := z * I) (by simpa)
  have b₂ : arg (1 - z * I)⁻¹ ∈ Set.Ioo (-(π / 2)) (π / 2) := by
    simp_rw [arg_inv, z₂.1, ite_false, Set.neg_mem_Ioo_iff, neg_neg, sub_eq_add_neg]
    exact arg_one_add_mem_Ioo (by simpa)
  have c₁ := add_lt_add b₁.1 b₂.1
  have c₂ := add_lt_add b₁.2 b₂.2
  rw [show -(π / 2) + -(π / 2) = -π by ring] at c₁
  rw [show π / 2 + π / 2 = π by ring] at c₂
  exact ⟨c₁, c₂.le⟩

/-- The power series expansion of `Complex.arctan`, valid on the open unit disc. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Arctan/Variant0c6000fdbf296682ae3b36bd464fbc89f7497eb50097d9db2c3b7840b7c4c726.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Arctan/Variant0c6000fdbf296682ae3b36bd464fbc89f7497eb50097d9db2c3b7840b7c4c726.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d6ffd8c3539aa225796b0f39a9e208bff708c4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
