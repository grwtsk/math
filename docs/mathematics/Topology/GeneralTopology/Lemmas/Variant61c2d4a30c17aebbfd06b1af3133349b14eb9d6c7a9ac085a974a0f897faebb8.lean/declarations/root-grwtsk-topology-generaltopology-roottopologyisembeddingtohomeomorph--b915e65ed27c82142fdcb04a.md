# _root_.GRWTSK.Topology.GeneralTopology.RootTopologyIsEmbeddingToHomeomorph.Variantf94341c8a684737e9feb46429583fe79f858da7d3f46a29f4e26ff28a1837af8.Topology.IsEmbedding.toHomeomorphOfSurjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cbf4700e38e2a409fa356ad1503f55a2f16d4eacecc802cf0a11cc428079d00b",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.RootTopologyIsEmbeddingToHomeomorph.Variantf94341c8a684737e9feb46429583fe79f858da7d3f46a29f4e26ff28a1837af8.Topology.IsEmbedding.toHomeomorphOfSurjective",
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
  "slug": "root-grwtsk-topology-generaltopology-roottopologyisembeddingtohomeomorph--b915e65ed27c82142fdcb04a",
  "source": {
    "blob": "f5f5e3b6bc70616bc7a576fa0e2d2328f85d2da0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 53,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant61c2d4a30c17aebbfd06b1af3133349b14eb9d6c7a9ac085a974a0f897faebb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b915e65ed27c82142fdcb04a512d69ef7eaf5be796b2962264624b1104d912c2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant61c2d4a30c17aebbfd06b1af3133349b14eb9d6c7a9ac085a974a0f897faebb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cbf4700e38e2a409fa356ad1503f55a2f16d4eacecc802cf0a11cc428079d00b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def _root_.GRWTSK.Topology.GeneralTopology.RootTopologyIsEmbeddingToHomeomorph.Variantf94341c8a684737e9feb46429583fe79f858da7d3f46a29f4e26ff28a1837af8.Topology.IsEmbedding.toHomeomorphOfSurjective {f : X → Y}
    (hf : IsEmbedding f) (hsurj : Function.Surjective f) : X ≃ₜ Y :=
  Equiv.ofBijective f ⟨hf.injective, hsurj⟩ |>.toHomeomorphOfIsInducing hf.toIsInducing

@[deprecated (since := "2025-04-16")]
alias _root_.Topology.IsEmbedding.toHomeomorph_of_surjective :=
  IsEmbedding.toHomeomorphOfSurjective

@[deprecated (since := "2024-10-26")]
alias _root_.Embedding.toHomeomeomorph_of_surjective := IsEmbedding.toHomeomorphOfSurjective

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant61c2d4a30c17aebbfd06b1af3133349b14eb9d6c7a9ac085a974a0f897faebb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant61c2d4a30c17aebbfd06b1af3133349b14eb9d6c7a9ac085a974a0f897faebb8.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5f5e3b6bc70616bc7a576fa0e2d2328f85d2da0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
