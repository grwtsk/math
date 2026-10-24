# finite_affine_combination

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2c9563d266d97b9201d51fce894db3958bc18e43",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 263,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/01a92be9100970091d3c67a83f1acad2142bcdb73133339ac2a250577bf379a8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:69891de7-fcd8-1aa0-6abf-5372da08f673",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7f15954a-bdd0-dbd0-715f-198035ab5f89",
  "kind": "lemma",
  "lexical_name": "finite_affine_combination",
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
  "slug": "finite-affine-combination--7d7934e943f47dc8dd75c0c2",
  "source": {
    "blob": "2c9563d266d97b9201d51fce894db3958bc18e43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 263,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant01a92be9100970091d3c67a83f1acad2142bcdb73133339ac2a250577bf379a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d7934e943f47dc8dd75c0c2fc518f1930fc69e8762628e9c30be590ef810c4b",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Basic/Variant01a92be9100970091d3c67a83f1acad2142bcdb73133339ac2a250577bf379a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f15954a-bdd0-dbd0-715f-198035ab5f89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma finite_affine_combination {ι : Type*} {s : Finset ι}
    {u : Set M} {cov : ι → (Π x : M, V x) → (Π x : M, TangentSpace I x →L[𝕜] V x)}
    (h : ∀ i, IsCovariantDerivativeOn F (cov i) u) {f : ι → M → 𝕜} (hf : ∑ i ∈ s, f i = 1) :
    IsCovariantDerivativeOn F (fun σ x ↦ ∑ i ∈ s, (f i x) • (cov i) σ x) u where
  add hσ hσ' hx := by
    rw [← Finset.sum_add_distrib]
    congr
    ext i
    rw [← smul_add, (h i).add hσ hσ' hx]
  leibniz {σ g x} hσ hg hx := by
    calc ∑ i ∈ s, f i x • cov i (g • σ) x
      _ = ∑ i ∈ s, (g x • f i x • cov i σ x + f i x • (d% g x).smulRight (σ x)) := by
          congr! 1 with i hi
          rw [(h i).leibniz hσ hg]
          simp [mvfderiv]
          module
      _ = g x • ∑ i ∈ s, f i x • cov i σ x + (∑ i ∈ s, f i) x • (d% g x).smulRight (σ x) := by
          rw [Finset.sum_add_distrib, Finset.smul_sum, Finset.sum_apply, Finset.sum_smul]
      _ = g x • ∑ i ∈ s, f i x • cov i σ x + (d% g x).smulRight (σ x) := by rw [hf]; simp

/-- An affine combination of finitely many `C^k` connections on `u` is a `C^k` connection on `u`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Basic/Variant01a92be9100970091d3c67a83f1acad2142bcdb73133339ac2a250577bf379a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Basic/Variant01a92be9100970091d3c67a83f1acad2142bcdb73133339ac2a250577bf379a8.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c9563d266d97b9201d51fce894db3958bc18e43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
