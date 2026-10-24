# isEmbedding_sigmaMk_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cde136cf-44e4-adaa-ad43-ab671594af04",
  "kind": "theorem",
  "lexical_name": "isEmbedding_sigmaMk_comp",
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
  "slug": "isembedding-sigmamk-comp--25b7b335b85270914d3bae0e",
  "source": {
    "blob": "ad4916eb4c0f77b01c8b2776cfd0a919b7c76df1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 51,
    "path": "GRWTSK/Topology/GeneralTopology/Sigma/Variantd3df38a7136e310db15c019518ed4afed0373750235255354da79eb90c3a2f86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25b7b335b85270914d3bae0e6608b07b0a172c29efa6320d647773b520991e31",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sigma/Variantd3df38a7136e310db15c019518ed4afed0373750235255354da79eb90c3a2f86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cde136cf-44e4-adaa-ad43-ab671594af04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isEmbedding_sigmaMk_comp [Nonempty X] :
    IsEmbedding (fun g : Σ i, C(X, Y i) ↦ (sigmaMk g.1).comp g.2) where
  toIsInducing := inducing_sigma.2
    ⟨fun i ↦ (sigmaMk i).isInducing_postcomp IsEmbedding.sigmaMk.isInducing, fun i ↦
      let ⟨x⟩ := ‹Nonempty X›
      ⟨_, (isOpen_sigma_fst_preimage {i}).preimage (continuous_eval_const x), fun _ ↦ Iff.rfl⟩⟩
  injective := by
    rintro ⟨i, g⟩ ⟨i', g'⟩ h
    obtain ⟨rfl, hg⟩ : i = i' ∧ HEq (⇑g) (⇑g') :=
      Function.eq_of_sigmaMk_comp <| congr_arg DFunLike.coe h
    simpa using hg

@[deprecated (since := "2024-10-26")]
alias embedding_sigmaMk_comp := isEmbedding_sigmaMk_comp

section ConnectedSpace

variable [ConnectedSpace X]

/-- Every continuous map from a connected topological space to the disjoint union of a family of
topological spaces is a composition of the embedding `ContinuousMap.sigmMk i : C(Y i, Σ i, Y i)` for
some `i` and a continuous map `g : C(X, Y i)`. See also `Continuous.exists_lift_sigma` for a version
with unbundled functions and `ContinuousMap.sigmaCodHomeomorph` for a homeomorphism defined using
this fact. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sigma/Variantd3df38a7136e310db15c019518ed4afed0373750235255354da79eb90c3a2f86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sigma/Variantd3df38a7136e310db15c019518ed4afed0373750235255354da79eb90c3a2f86.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad4916eb4c0f77b01c8b2776cfd0a919b7c76df1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
