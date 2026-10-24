# exists_fg_le_subset_range_rTensor_subtype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a901ac1beddd75f88943f88c310d01f0d4573ab2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 44,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0b/0b712a68497e6d6426370391173347726826894f87e1a705e3d2fca834af0e01.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:838aca28-6fa5-586e-fe2b-07af7b5ddfff",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:63a731b5-4b61-9f6b-a1f4-a783777113be",
  "kind": "theorem",
  "lexical_name": "exists_fg_le_subset_range_rTensor_subtype",
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
  "slug": "exists-fg-le-subset-range-rtensor-subtype--c1f99dc5fc79db846663fb3c",
  "source": {
    "blob": "a901ac1beddd75f88943f88c310d01f0d4573ab2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 44,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finite/Variant0b712a68497e6d6426370391173347726826894f87e1a705e3d2fca834af0e01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1f99dc5fc79db846663fb3c18bd547493b9dd65af211be028d0ba487d03e9db",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finite/Variant0b712a68497e6d6426370391173347726826894f87e1a705e3d2fca834af0e01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63a731b5-4b61-9f6b-a1f4-a783777113be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_fg_le_subset_range_rTensor_subtype (s : Set (N ⊗[R] M)) (hs : s.Finite) :
    ∃ (J : Submodule R N) (_ : J.FG), s ⊆ LinearMap.range (rTensor M J.subtype) := by
  choose J fg y eq using exists_fg_le_eq_rTensor_subtype (R := R) (M := M) (N := N)
  rw [← Set.finite_coe_iff] at hs
  refine ⟨⨆ x : s, J x, fg_iSup _ fun _ ↦ fg _, fun x hx ↦
    ⟨rTensor M (inclusion <| le_iSup _ ⟨x, hx⟩) (y x), .trans ?_ (eq x).symm⟩⟩
  rw [← comp_apply, ← rTensor_comp]; rfl

open TensorProduct LinearMap
/-- Every `x : I ⊗ M` is the image of some `y : J ⊗ M`, where `J ≤ I` is finitely generated,
under the tensor product of `J.inclusion ‹J ≤ I› : J → I` and the identity `M → M`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finite/Variant0b712a68497e6d6426370391173347726826894f87e1a705e3d2fca834af0e01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finite/Variant0b712a68497e6d6426370391173347726826894f87e1a705e3d2fca834af0e01.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a901ac1beddd75f88943f88c310d01f0d4573ab2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
