# isEmbedding_sigmaMk_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "05b841875d47fbeebeffd2bd15b6f9de485d1009",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fc32ca81070d2d5fe59e642139f593e23aace03b3bc72c92d5e1b0646b6a46f6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6a990f63-67d2-9929-8b01-956ec1ae127c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8a0aea57-8a6c-69e3-f8e9-24b29c9bb8eb",
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
  "slug": "isembedding-sigmamk-comp--3a55b22d2ebf68e60237a974",
  "source": {
    "blob": "05b841875d47fbeebeffd2bd15b6f9de485d1009",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 47,
    "path": "GRWTSK/Topology/GeneralTopology/Sigma/Variantfc32ca81070d2d5fe59e642139f593e23aace03b3bc72c92d5e1b0646b6a46f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a55b22d2ebf68e60237a9743bb0bd85ffbeb23ad172b07cb713680174340d7f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sigma/Variantfc32ca81070d2d5fe59e642139f593e23aace03b3bc72c92d5e1b0646b6a46f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a0aea57-8a6c-69e3-f8e9-24b29c9bb8eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–67.

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
    obtain ⟨rfl, hg⟩ : i = i' ∧ ⇑g ≍ ⇑g' :=
      Function.eq_of_sigmaMk_comp <| congr_arg DFunLike.coe h
    simpa using hg

section ConnectedSpace

variable [ConnectedSpace X]

/-- Every continuous map from a connected topological space to the disjoint union of a family of
topological spaces is a composition of the embedding `ContinuousMap.sigmaMk i : C(Y i, Σ i, Y i)`
for some `i` and a continuous map `g : C(X, Y i)`. See also `Continuous.exists_lift_sigma` for a
version with unbundled functions and `ContinuousMap.sigmaCodHomeomorph` for a homeomorphism defined
using this fact. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sigma/Variantfc32ca81070d2d5fe59e642139f593e23aace03b3bc72c92d5e1b0646b6a46f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sigma/Variantfc32ca81070d2d5fe59e642139f593e23aace03b3bc72c92d5e1b0646b6a46f6.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05b841875d47fbeebeffd2bd15b6f9de485d1009` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
