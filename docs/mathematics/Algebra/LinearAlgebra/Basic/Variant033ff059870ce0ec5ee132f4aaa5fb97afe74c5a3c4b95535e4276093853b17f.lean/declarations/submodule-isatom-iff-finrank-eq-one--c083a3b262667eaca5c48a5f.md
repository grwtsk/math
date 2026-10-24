# Submodule.isAtom_iff_finrank_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b756466fea69ecc649e9e672eb486a4d5677fc46",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 545,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/033ff059870ce0ec5ee132f4aaa5fb97afe74c5a3c4b95535e4276093853b17f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e976971b-d290-4eda-15b2-038cf60cb677",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:53f6a4d2-8cee-4dca-6770-c93f957e633a",
  "kind": "theorem",
  "lexical_name": "Submodule.isAtom_iff_finrank_eq_one",
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
  "slug": "submodule-isatom-iff-finrank-eq-one--c083a3b262667eaca5c48a5f",
  "source": {
    "blob": "b756466fea69ecc649e9e672eb486a4d5677fc46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 560,
    "line": 545,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant033ff059870ce0ec5ee132f4aaa5fb97afe74c5a3c4b95535e4276093853b17f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c083a3b262667eaca5c48a5f96d5eb4f3cc470d84850b620a6e2fcbb96bc9d65",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant033ff059870ce0ec5ee132f4aaa5fb97afe74c5a3c4b95535e4276093853b17f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53f6a4d2-8cee-4dca-6770-c93f957e633a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 545–560.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Submodule.isAtom_iff_finrank_eq_one {S : Submodule K V} :
    IsAtom S ↔ finrank K S = 1 := by
  refine ⟨fun hS ↦ ?_, fun hS ↦ ⟨by aesop, fun T hT ↦ ?_⟩⟩
  · obtain ⟨v : V, hv : v ∈ S, hv_ne : v ≠ 0⟩ := S.ne_bot_iff.mp hS.ne_bot
    suffices K ∙ v = S by rw [← this, finrank_span_singleton hv_ne]
    have : K ∙ v ≠ ⊥ := by
      rw [Submodule.ne_bot_iff]
      exact ⟨v, mem_span_singleton_self v, hv_ne⟩
    rwa [← hS.le_iff_eq this, span_le, Set.singleton_subset_iff]
  · have : FiniteDimensional K S := .of_finrank_eq_succ hS
    have : FiniteDimensional K T := .of_injective (inclusion hT.le) (inclusion_injective hT.le)
    rw [← finrank_eq_zero (R := K)]
    by_contra h
    exact hT.ne <| eq_of_le_of_finrank_le hT.le <| by lia

/-- In a one-dimensional space, any vector is a multiple of any nonzero vector -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant033ff059870ce0ec5ee132f4aaa5fb97afe74c5a3c4b95535e4276093853b17f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant033ff059870ce0ec5ee132f4aaa5fb97afe74c5a3c4b95535e4276093853b17f.lean#L545).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b756466fea69ecc649e9e672eb486a4d5677fc46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
