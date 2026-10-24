# iInf_maxGenEigenspace_restrict_map_subtype_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6abb5f4f-0f7c-9352-a313-47f39d08caca",
  "kind": "lemma",
  "lexical_name": "iInf_maxGenEigenspace_restrict_map_subtype_eq",
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
  "slug": "iinf-maxgeneigenspace-restrict-map-subtype-eq--96619514b191f1cfb4205f2f",
  "source": {
    "blob": "385b942bf00cb1aea3eb6c9308d84e445afa6e14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 66,
    "path": "GRWTSK/Algebra/LinearAlgebra/Pi/Variantc5e18afa7303819ea4eb86a60cc5f128dd1c08a7efa9c79eede4edc18505e2b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96619514b191f1cfb4205f2f883b2d446bf4208c83e5ceb9956f74c7dbd75079",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Pi/Variantc5e18afa7303819ea4eb86a60cc5f128dd1c08a7efa9c79eede4edc18505e2b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6abb5f4f-0f7c-9352-a313-47f39d08caca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iInf_maxGenEigenspace_restrict_map_subtype_eq
    {μ : ι → R} (i : ι)
    (h : ∀ j, MapsTo (f j) ((f i).maxGenEigenspace (μ i)) ((f i).maxGenEigenspace (μ i))) :
    letI p := (f i).maxGenEigenspace (μ i)
    letI q (j : ι) := maxGenEigenspace ((f j).restrict (h j)) (μ j)
    (⨅ j, q j).map p.subtype = ⨅ j, (f j).maxGenEigenspace (μ j) := by
  have : Nonempty ι := ⟨i⟩
  set p := (f i).maxGenEigenspace (μ i)
  have : ⨅ j, (f j).maxGenEigenspace (μ j) = p ⊓ ⨅ j, (f j).maxGenEigenspace (μ j) := by
    refine le_antisymm ?_ inf_le_right
    simpa only [le_inf_iff, le_refl, and_true] using iInf_le _ _
  rw [Submodule.map_iInf _ p.injective_subtype, this, Submodule.inf_iInf]
  conv_rhs =>
    enter [1]
    ext
    rw [p.inf_genEigenspace (f _) (h _)]

variable [IsDomain R] [IsTorsionFree R M]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Pi/Variantc5e18afa7303819ea4eb86a60cc5f128dd1c08a7efa9c79eede4edc18505e2b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Pi/Variantc5e18afa7303819ea4eb86a60cc5f128dd1c08a7efa9c79eede4edc18505e2b5.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `385b942bf00cb1aea3eb6c9308d84e445afa6e14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
