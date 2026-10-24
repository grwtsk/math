# contMDiffOn_isOpenEmbedding_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8a61c22694a381984a0e26021559c59d0aaf9efd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 386,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8c776db970326233a7ab700928774113107faceffe4e9c77bfe12740adae3a2f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0a0333ac-ceed-5253-dd2e-0da3cc3be787",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e1e9fabe-e521-056c-fd09-5a2a65181c20",
  "kind": "lemma",
  "lexical_name": "contMDiffOn_isOpenEmbedding_symm",
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
  "slug": "contmdiffon-isopenembedding-symm--a83d3109258022c36519d655",
  "source": {
    "blob": "8a61c22694a381984a0e26021559c59d0aaf9efd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 413,
    "line": 386,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant8c776db970326233a7ab700928774113107faceffe4e9c77bfe12740adae3a2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a83d3109258022c36519d655055952a3fb626e94fa95e584a2816efa6fe28cfd",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Basic/Variant8c776db970326233a7ab700928774113107faceffe4e9c77bfe12740adae3a2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1e9fabe-e521-056c-fd09-5a2a65181c20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 386–413.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma contMDiffOn_isOpenEmbedding_symm [Nonempty M] :
    haveI := h.singletonChartedSpace; ContMDiffOn I I
      n (IsOpenEmbedding.toPartialHomeomorph e h).symm (range e) := by
  haveI := h.isManifold_singleton (I := I) (n := ω)
  rw [@contMDiffOn_iff]
  constructor
  · rw [← h.toPartialHomeomorph_target]
    exact (h.toPartialHomeomorph e).continuousOn_symm
  · intros z hz
    -- show the function is actually the identity on the range of I ∘ e
    apply contDiffOn_id.congr
    intros z hz
    -- factorise into the chart `e` and the model `id`
    simp only [mfld_simps]
    have : I.symm z ∈ range e := by
      rw [ModelWithCorners.symm, ← mem_preimage]
      exact hz.2.1
    rw [h.toPartialHomeomorph_right_inv e this]
    apply I.right_inv
    exact mem_of_subset_of_mem (extChartAt_target_subset_range _) hz.1

variable [ChartedSpace H M]
variable [Nonempty M'] {e' : M' → H'} (h' : IsOpenEmbedding e')

/-- Let `M'` be a manifold whose chart structure is given by an open embedding `e'` into its model
space `H'`. If `e' ∘ f : M → H'` is `C^n`, then `f` is `C^n`.

This is useful, for example, when `e' ∘ f = g ∘ e` for smooth maps `e : M → X` and `g : X → H'`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Basic/Variant8c776db970326233a7ab700928774113107faceffe4e9c77bfe12740adae3a2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Basic/Variant8c776db970326233a7ab700928774113107faceffe4e9c77bfe12740adae3a2f.lean#L386).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a61c22694a381984a0e26021559c59d0aaf9efd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
