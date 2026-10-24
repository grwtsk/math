# SpectrumRestricts.nnreal_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f056784-a23f-2477-2df0-f9d50acf637d",
  "kind": "lemma",
  "lexical_name": "SpectrumRestricts.nnreal_add",
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
  "slug": "spectrumrestricts-nnreal-add--274b2d7c8cc54d06e031abbc",
  "source": {
    "blob": "a43fe3f23391562543d0f0e972062f6c7d0dc19d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 250,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variante54ee98d6c8ec75b11237e1da109cdecdf7cfdf5561889933c0d7dee4ead46e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:274b2d7c8cc54d06e031abbc4a9fccdfee79f5c744592bc25bdb0680f0d7d9c6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variante54ee98d6c8ec75b11237e1da109cdecdf7cfdf5561889933c0d7dee4ead46e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f056784-a23f-2477-2df0-f9d50acf637d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma SpectrumRestricts.nnreal_add {a b : A} (ha₁ : IsSelfAdjoint a)
    (hb₁ : IsSelfAdjoint b) (ha₂ : SpectrumRestricts a ContinuousMap.realToNNReal)
    (hb₂ : SpectrumRestricts b ContinuousMap.realToNNReal) :
    SpectrumRestricts (a + b) ContinuousMap.realToNNReal := by
  rw [SpectrumRestricts.nnreal_iff_nnnorm (ha₁.add hb₁) (nnnorm_add_le a b), NNReal.coe_add,
    map_add, add_sub_add_comm]
  refine nnnorm_add_le _ _ |>.trans ?_
  gcongr
  all_goals rw [← SpectrumRestricts.nnreal_iff_nnnorm] <;> first | rfl | assumption

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variante54ee98d6c8ec75b11237e1da109cdecdf7cfdf5561889933c0d7dee4ead46e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variante54ee98d6c8ec75b11237e1da109cdecdf7cfdf5561889933c0d7dee4ead46e6.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a43fe3f23391562543d0f0e972062f6c7d0dc19d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
