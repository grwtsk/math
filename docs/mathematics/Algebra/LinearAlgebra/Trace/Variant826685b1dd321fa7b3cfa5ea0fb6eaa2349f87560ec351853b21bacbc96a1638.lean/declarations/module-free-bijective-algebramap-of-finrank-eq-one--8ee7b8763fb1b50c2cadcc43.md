# Module.Free.bijective_algebraMap_of_finrank_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aead033d4d6f66f283cd51f072c24a2f5b16a97e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 392,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:be44f4ed-b25b-b437-4171-3814c900b724",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b27a72b7-eb4e-e002-200b-b6fc92e473b5",
  "kind": "lemma",
  "lexical_name": "Module.Free.bijective_algebraMap_of_finrank_eq_one",
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
  "slug": "module-free-bijective-algebramap-of-finrank-eq-one--8ee7b8763fb1b50c2cadcc43",
  "source": {
    "blob": "aead033d4d6f66f283cd51f072c24a2f5b16a97e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 407,
    "line": 392,
    "path": "GRWTSK/Algebra/LinearAlgebra/Trace/Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ee7b8763fb1b50c2cadcc437da9003165d42632018f7221ae45dba4a0d46573",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Trace/Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b27a72b7-eb4e-e002-200b-b6fc92e473b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 392–407.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Module.Free.bijective_algebraMap_of_finrank_eq_one {R S : Type*} [CommRing R] [Ring S]
    [Algebra R S] [Nontrivial R] [Free R S] (h : finrank R S = 1) :
    Function.Bijective (algebraMap R S) := by
  have : Module.Finite R S := finite_of_finrank_pos (by grind)
  have : Free R (Module.End R S) := .of_equiv (dualTensorHomEquiv R S S)
  let f : S →ₐ[R] (S →ₗ[R] S) := Algebra.lmul R S
  have h1 : LinearMap.trace R S ∘ₗ f ∘ₗ Algebra.linearMap R S = LinearMap.id := by ext; simp [h]
  let b : Basis (Unit × Unit) R (End R S) :=
    .map (.tensorProduct (.dualBasis <| basisUnique Unit h) (basisUnique Unit h))
      (dualTensorHomEquiv R S S)
  have h2 : (f ∘ₗ Algebra.linearMap R S) ∘ₗ LinearMap.trace R S = LinearMap.id :=
    b.ext fun i ↦
      (basisUnique Unit h).ext fun j ↦ (by simp [f, b, Basis.tensorProduct, dualTensorHomEquiv])
  let eq : R ≃ₗ[R] End R S := .ofLinearMap (f ∘ₗ Algebra.linearMap R S) (.trace R S) h2 h1
  have hf : Function.Bijective f := ⟨Algebra.lmul_injective, .of_comp eq.surjective⟩
  exact (Function.Bijective.of_comp_iff' hf _).mp eq.bijective
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Trace/Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Trace/Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean#L392).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aead033d4d6f66f283cd51f072c24a2f5b16a97e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
