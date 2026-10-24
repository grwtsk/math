# QuasispectrumRestricts.isSelfAdjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9bbfa448-2831-c8a6-35e6-1596240fe032",
  "kind": "lemma",
  "lexical_name": "QuasispectrumRestricts.isSelfAdjoint",
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
  "slug": "quasispectrumrestricts-isselfadjoint--74d5ac6aa518e9ffede22de0",
  "source": {
    "blob": "d8b6760c5b4da5b94d89e2494baebe95d7984d1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 220,
    "path": "GRWTSK/Topology/GeneralTopology/Instances/Variant1761b36f957a2bfc1ce19af4900bc69d172434ee56321d3fd27a8b4dc5821006.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74d5ac6aa518e9ffede22de0344e1e4979797d8e0f0775bfd4ea7a9deb9d53f4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Instances/Variant1761b36f957a2bfc1ce19af4900bc69d172434ee56321d3fd27a8b4dc5821006.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9bbfa448-2831-c8a6-35e6-1596240fe032`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma QuasispectrumRestricts.isSelfAdjoint (a : A) (ha : QuasispectrumRestricts a Complex.reCLM)
    [IsStarNormal a] : IsSelfAdjoint a :=
  isSelfAdjoint_iff_isStarNormal_and_quasispectrumRestricts.mpr ⟨‹_›, ha⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Instances/Variant1761b36f957a2bfc1ce19af4900bc69d172434ee56321d3fd27a8b4dc5821006.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Instances/Variant1761b36f957a2bfc1ce19af4900bc69d172434ee56321d3fd27a8b4dc5821006.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8b6760c5b4da5b94d89e2494baebe95d7984d1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
