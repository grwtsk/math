# contMDiffOn_isOpenEmbedding_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:677bb062-1e12-2199-ce4b-ed7327e82e69",
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
  "slug": "contmdiffon-isopenembedding-symm--742967476d57057348a9a0c7",
  "source": {
    "blob": "5296fbb115576f051f88f25372a75764296adb9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 421,
    "line": 394,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:742967476d57057348a9a0c787b07ab01787389268ce4a2b8a695a04d60f9ba9",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:677bb062-1e12-2199-ce4b-ed7327e82e69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 394–421.

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

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean#L394).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5296fbb115576f051f88f25372a75764296adb9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
