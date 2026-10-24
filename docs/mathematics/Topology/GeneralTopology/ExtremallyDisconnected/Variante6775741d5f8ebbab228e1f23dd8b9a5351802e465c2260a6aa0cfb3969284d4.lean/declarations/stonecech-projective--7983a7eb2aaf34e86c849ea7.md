# StoneCech.projective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:42af8cdc-e9d8-1457-7a98-e7cd500f3054",
  "kind": "theorem",
  "lexical_name": "StoneCech.projective",
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
  "slug": "stonecech-projective--7983a7eb2aaf34e86c849ea7",
  "source": {
    "blob": "46fda5d44dcf003b43bda908359c33f2b6336d79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 90,
    "path": "GRWTSK/Topology/GeneralTopology/ExtremallyDisconnected/Variante6775741d5f8ebbab228e1f23dd8b9a5351802e465c2260a6aa0cfb3969284d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7983a7eb2aaf34e86c849ea76b22c2c872df4fe9b5f1ee09641a33695787be21",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ExtremallyDisconnected/Variante6775741d5f8ebbab228e1f23dd8b9a5351802e465c2260a6aa0cfb3969284d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42af8cdc-e9d8-1457-7a98-e7cd500f3054`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem StoneCech.projective [DiscreteTopology X] : CompactT2.Projective (StoneCech X) := by
  intro Y Z _tsY _tsZ _csY _t2Y _csZ _csZ f g hf hg g_sur
  let s : Z → Y := fun z => Classical.choose <| g_sur z
  have hs : g ∘ s = id := funext fun z => Classical.choose_spec (g_sur z)
  let t := s ∘ f ∘ stoneCechUnit
  have ht : Continuous t := continuous_of_discreteTopology
  let h : StoneCech X → Y := stoneCechExtend ht
  have hh : Continuous h := continuous_stoneCechExtend ht
  refine ⟨h, hh, denseRange_stoneCechUnit.equalizer (hg.comp hh) hf ?_⟩
  rw [comp_assoc, stoneCechExtend_extends ht, ← comp_assoc, hs, id_comp]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ExtremallyDisconnected/Variante6775741d5f8ebbab228e1f23dd8b9a5351802e465c2260a6aa0cfb3969284d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ExtremallyDisconnected/Variante6775741d5f8ebbab228e1f23dd8b9a5351802e465c2260a6aa0cfb3969284d4.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46fda5d44dcf003b43bda908359c33f2b6336d79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
