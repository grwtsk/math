# _root_.GRWTSK.Topology.GeneralTopology.RootTopologyIsEmbeddingToHomeomorph.Variantf94341c8a684737e9feb46429583fe79f858da7d3f46a29f4e26ff28a1837af8.Fin.appendHomeomorph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7fbdc811e0937e59ce29b1f5a5dd4101b4e4ea44c47ace81fbf2262289c2da13",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.RootTopologyIsEmbeddingToHomeomorph.Variantf94341c8a684737e9feb46429583fe79f858da7d3f46a29f4e26ff28a1837af8.Fin.appendHomeomorph",
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
  "slug": "root-grwtsk-topology-generaltopology-roottopologyisembeddingtohomeomorph--22f81098ea53cfe2939e8aa1",
  "source": {
    "blob": "f5f5e3b6bc70616bc7a576fa0e2d2328f85d2da0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 315,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant61c2d4a30c17aebbfd06b1af3133349b14eb9d6c7a9ac085a974a0f897faebb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:22f81098ea53cfe2939e8aa13541e4a74631d821ad1aa1cbd11dc6d5bdc65273",
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

Occurrence: `declaration:7fbdc811e0937e59ce29b1f5a5dd4101b4e4ea44c47ace81fbf2262289c2da13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 315–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.Topology.GeneralTopology.RootTopologyIsEmbeddingToHomeomorph.Variantf94341c8a684737e9feb46429583fe79f858da7d3f46a29f4e26ff28a1837af8.Fin.appendHomeomorph (m n : ℕ) : (Fin m → X) × (Fin n → X) ≃ₜ (Fin (m + n) → X) where
  toEquiv := Fin.appendEquiv m n
  continuous_toFun := Fin.continuous_append m n
  continuous_invFun := by
    rw [Fin.appendEquiv_eq_homeomorph]
    exact Homeomorph.continuous_invFun _

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant61c2d4a30c17aebbfd06b1af3133349b14eb9d6c7a9ac085a974a0f897faebb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant61c2d4a30c17aebbfd06b1af3133349b14eb9d6c7a9ac085a974a0f897faebb8.lean#L315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5f5e3b6bc70616bc7a576fa0e2d2328f85d2da0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
