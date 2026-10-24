# _root_.GRWTSK.Topology.GeneralTopology.MlieBracketWithin.Variante40329a51c3c29d05d91764934644428f509923c1707a421182b707b58e64e9a.Filter.EventuallyEq.mlieBracketWithin_vectorField'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:072823e4-64cd-dc1f-034f-2384edfd559a",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.MlieBracketWithin.Variante40329a51c3c29d05d91764934644428f509923c1707a421182b707b58e64e9a.Filter.EventuallyEq.mlieBracketWithin_vectorField'",
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
  "slug": "root-grwtsk-topology-generaltopology-mliebracketwithin-variante40329a51c--4cb3689dd7eee836093490f9",
  "source": {
    "blob": "47a65c06554bd39024cf3b6ee9e313519c95cab3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 250,
    "path": "GRWTSK/Topology/GeneralTopology/LieBracket/Variant70f91872616503181b5b421225c15e11cff9e78ed3a19cf5f001d4bb522227ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4cb3689dd7eee836093490f90509a47765437fee6bcc5fbb5d2fbf6bf160d1fc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LieBracket/Variant70f91872616503181b5b421225c15e11cff9e78ed3a19cf5f001d4bb522227ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:072823e4-64cd-dc1f-034f-2384edfd559a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Topology.GeneralTopology.MlieBracketWithin.Variante40329a51c3c29d05d91764934644428f509923c1707a421182b707b58e64e9a.Filter.EventuallyEq.mlieBracketWithin_vectorField'
    (hV : V₁ =ᶠ[𝓝[s] x] V) (hW : W₁ =ᶠ[𝓝[s] x] W) (ht : t ⊆ s) :
    mlieBracketWithin I V₁ W₁ t =ᶠ[𝓝[s] x] mlieBracketWithin I V W t := by
  filter_upwards [hV, hW, eventually_eventually_nhdsWithin.2 hV,
    eventually_eventually_nhdsWithin.2 hW] with y hVy hWy hVy' hWy'
  apply Filter.EventuallyEq.mlieBracketWithin_vectorField_eq
  · apply nhdsWithin_mono _ ht
    exact hVy'
  · exact hVy
  · apply nhdsWithin_mono _ ht
    exact hWy'
  · exact hWy

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LieBracket/Variant70f91872616503181b5b421225c15e11cff9e78ed3a19cf5f001d4bb522227ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LieBracket/Variant70f91872616503181b5b421225c15e11cff9e78ed3a19cf5f001d4bb522227ca.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47a65c06554bd39024cf3b6ee9e313519c95cab3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
