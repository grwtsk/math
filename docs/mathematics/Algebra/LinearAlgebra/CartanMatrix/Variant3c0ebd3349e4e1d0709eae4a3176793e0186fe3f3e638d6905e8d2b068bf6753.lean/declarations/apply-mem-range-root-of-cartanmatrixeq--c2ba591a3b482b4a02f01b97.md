# apply_mem_range_root_of_cartanMatrixEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "da82dc9672408e339b8367625b07676813aa79b9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 335,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3c0ebd3349e4e1d0709eae4a3176793e0186fe3f3e638d6905e8d2b068bf6753.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a2d9aca7-da5b-8c12-2dce-de12c479dcc9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2bfe1d5f-64f9-258f-31f3-ef8a19e39160",
  "kind": "lemma",
  "lexical_name": "apply_mem_range_root_of_cartanMatrixEq",
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
  "slug": "apply-mem-range-root-of-cartanmatrixeq--c2ba591a3b482b4a02f01b97",
  "source": {
    "blob": "da82dc9672408e339b8367625b07676813aa79b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 358,
    "line": 335,
    "path": "GRWTSK/Algebra/LinearAlgebra/CartanMatrix/Variant3c0ebd3349e4e1d0709eae4a3176793e0186fe3f3e638d6905e8d2b068bf6753.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2ba591a3b482b4a02f01b97591f52352310729f273fcfa9aa644b69fac7337c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CartanMatrix/Variant3c0ebd3349e4e1d0709eae4a3176793e0186fe3f3e638d6905e8d2b068bf6753.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2bfe1d5f-64f9-258f-31f3-ef8a19e39160`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–358.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma apply_mem_range_root_of_cartanMatrixEq
    (f : M ≃ₗ[R] M₂) (hf : ∀ i : b.support, f (P.root i) = P₂.root (e i))
    (m : M) (hm : m ∈ range P.root)
    (he : ∀ i j, b₂.cartanMatrix (e i) (e j) = b.cartanMatrix i j) :
    f m ∈ range P₂.root := by
  have (k : b.support) : (P.reflection k).trans f = f.trans (P₂.reflection (e k)) := by
    suffices ∀ j : b.support,
        (P.reflection k).trans f (P.root j) = f.trans (P₂.reflection (e k)) (P.root j) by
      rw [← LinearEquiv.toLinearMap_inj]
      exact b.toWeightBasis.ext fun j ↦ by simpa using this j
    intro j
    suffices P₂.pairing (e j) (e k) = P.pairing j k by simp [reflection_apply, hf, this]
    simpa only [cartanMatrixIn_def, algebraMap_pairingIn] using congr_arg (algebraMap ℤ R) (he j k)
  obtain ⟨i, rfl⟩ := hm
  apply b.induction_reflect i
  · exact fun j ⟨k, hk⟩ ↦ ⟨P₂.reflectionPerm k k, by simpa⟩
  · exact fun j hj ↦ ⟨e ⟨j, hj⟩, (hf _).symm⟩
  · intro j k ⟨l, hl⟩ hk
    replace this : f (P.reflection k (P.root j)) = (P₂.reflection (e ⟨k, hk⟩)) (f (P.root j)) := by
      simpa using LinearEquiv.congr_fun (this ⟨k, hk⟩) (P.root j)
    rw [root_reflectionPerm, this, ← hl, ← root_reflectionPerm]
    exact mem_range_self _

/-- A root system is determined by its Cartan matrix. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CartanMatrix/Variant3c0ebd3349e4e1d0709eae4a3176793e0186fe3f3e638d6905e8d2b068bf6753.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CartanMatrix/Variant3c0ebd3349e4e1d0709eae4a3176793e0186fe3f3e638d6905e8d2b068bf6753.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da82dc9672408e339b8367625b07676813aa79b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
