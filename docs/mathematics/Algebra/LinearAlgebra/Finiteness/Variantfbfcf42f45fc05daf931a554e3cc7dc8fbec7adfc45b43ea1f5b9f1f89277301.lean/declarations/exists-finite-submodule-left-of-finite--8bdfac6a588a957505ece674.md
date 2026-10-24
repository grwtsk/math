# exists_finite_submodule_left_of_finite'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7ff02db7c782e5e2c2059cac18a8e4921777cbf7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 159,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fbfcf42f45fc05daf931a554e3cc7dc8fbec7adfc45b43ea1f5b9f1f89277301.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b584b7c7-0311-0419-fce9-f9db63cedf81",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:96dbea79-e657-1b4e-ef27-6c1cf52ea1b9",
  "kind": "theorem",
  "lexical_name": "exists_finite_submodule_left_of_finite'",
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
  "slug": "exists-finite-submodule-left-of-finite--8bdfac6a588a957505ece674",
  "source": {
    "blob": "7ff02db7c782e5e2c2059cac18a8e4921777cbf7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 159,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finiteness/Variantfbfcf42f45fc05daf931a554e3cc7dc8fbec7adfc45b43ea1f5b9f1f89277301.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8bdfac6a588a957505ece674ef04fa0dc8be1240d85d1f6f5749534856eeb46b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finiteness/Variantfbfcf42f45fc05daf931a554e3cc7dc8fbec7adfc45b43ea1f5b9f1f89277301.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96dbea79-e657-1b4e-ef27-6c1cf52ea1b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_finite_submodule_left_of_finite' (s : Set (M₁ ⊗[R] N₁)) (hs : s.Finite) :
    ∃ (M' : Submodule R M) (hM : M' ≤ M₁), Module.Finite R M' ∧
      s ⊆ LinearMap.range ((inclusion hM).rTensor N₁) := by
  obtain ⟨M', _, hM, _, hfin, _, h⟩ := exists_finite_submodule_of_finite' s hs
  refine ⟨M', hM, hfin, ?_⟩
  rw [← LinearMap.rTensor_comp_lTensor] at h
  exact h.trans (LinearMap.range_comp_le_range _ _)

/-- Variation of `TensorProduct.exists_finite_submodule_right_of_finite` where `M` and `N` are
already submodules. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finiteness/Variantfbfcf42f45fc05daf931a554e3cc7dc8fbec7adfc45b43ea1f5b9f1f89277301.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finiteness/Variantfbfcf42f45fc05daf931a554e3cc7dc8fbec7adfc45b43ea1f5b9f1f89277301.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ff02db7c782e5e2c2059cac18a8e4921777cbf7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
