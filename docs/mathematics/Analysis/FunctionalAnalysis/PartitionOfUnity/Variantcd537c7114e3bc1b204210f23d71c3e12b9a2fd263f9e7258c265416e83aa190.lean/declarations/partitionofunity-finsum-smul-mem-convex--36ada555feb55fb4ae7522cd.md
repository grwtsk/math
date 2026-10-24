# PartitionOfUnity.finsum_smul_mem_convex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e40f4dbee159c184f4d1bac72315b149af45b501",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 38,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cd/cd537c7114e3bc1b204210f23d71c3e12b9a2fd263f9e7258c265416e83aa190.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:75560399-94c8-2a20-64ed-bb05a835ac63",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8c79b479-62e3-a0fe-0a6a-bdc673aa76db",
  "kind": "theorem",
  "lexical_name": "PartitionOfUnity.finsum_smul_mem_convex",
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
  "slug": "partitionofunity-finsum-smul-mem-convex--36ada555feb55fb4ae7522cd",
  "source": {
    "blob": "e40f4dbee159c184f4d1bac72315b149af45b501",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 38,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/PartitionOfUnity/Variantcd537c7114e3bc1b204210f23d71c3e12b9a2fd263f9e7258c265416e83aa190.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36ada555feb55fb4ae7522cda09b0a186cb411c9be1861a3a5b7fac35f1abc22",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/PartitionOfUnity/Variantcd537c7114e3bc1b204210f23d71c3e12b9a2fd263f9e7258c265416e83aa190.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c79b479-62e3-a0fe-0a6a-bdc673aa76db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PartitionOfUnity.finsum_smul_mem_convex {s : Set X} (f : PartitionOfUnity ι X s)
    {g : ι → X → E} {t : Set E} {x : X} (hx : x ∈ s) (hg : ∀ i, f i x ≠ 0 → g i x ∈ t)
    (ht : Convex ℝ t) : (∑ᶠ i, f i x • g i x) ∈ t :=
  ht.finsum_mem (fun _ => f.nonneg _ _) (f.sum_eq_one hx) hg

variable [NormalSpace X] [ParacompactSpace X] [TopologicalSpace E] [ContinuousAdd E]
  [ContinuousSMul ℝ E] {t : X → Set E}

/-- Let `X` be a normal paracompact topological space (e.g., any extended metric space). Let `E` be
a topological real vector space. Let `t : X → Set E` be a family of convex sets. Suppose that for
each point `x : X`, there exists a neighborhood `U ∈ 𝓝 X` and a function `g : X → E` that is
continuous on `U` and sends each `y ∈ U` to a point of `t y`. Then there exists a continuous map
`g : C(X, E)` such that `g x ∈ t x` for all `x`. See also
`exists_continuous_forall_mem_convex_of_local_const`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/PartitionOfUnity/Variantcd537c7114e3bc1b204210f23d71c3e12b9a2fd263f9e7258c265416e83aa190.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/PartitionOfUnity/Variantcd537c7114e3bc1b204210f23d71c3e12b9a2fd263f9e7258c265416e83aa190.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e40f4dbee159c184f4d1bac72315b149af45b501` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
