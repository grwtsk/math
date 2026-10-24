# affinoidClosedCoordinateRegime_of_ct04

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ccd0d904-ff7d-b1e9-bbb3-8ad768d8031d",
  "kind": "theorem",
  "lexical_name": "affinoidClosedCoordinateRegime_of_ct04",
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
  "slug": "affinoidclosedcoordinateregime-of-ct04--540b4c3a736b2c1178226cb0",
  "source": {
    "blob": "366537315ac8727a162ce9e2610958e4ad39781b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 103,
    "path": "GRWTSK/Topology/GeneralTopology/Foundations/Variantc4aa3746de3566d5891d8f00aa70306d94d82b3bfdec944f8e81d1fd75c2dfac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:540b4c3a736b2c1178226cb077f9770dadacce2959f2f710df8f3ff649515387",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Foundations/Variantc4aa3746de3566d5891d8f00aa70306d94d82b3bfdec944f8e81d1fd75c2dfac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ccd0d904-ff7d-b1e9-bbb3-8ad768d8031d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem affinoidClosedCoordinateRegime_of_ct04
    {S : RealizationSystem.{uObj, uHom}}
    (ct04 : CT04Claim S)
    (hFiniteType : S.P.affinoidTopologicallyFiniteType) :
    AffinoidClosedCoordinateRegime S := by
  have h := ct04 hFiniteType
  exact {
    affinoidJacobson := h.1
    affinoidClosedResiduesFinite := h.2
  }

/--
An opaque geometric carrier.  `compactnessAssertion` names a proposition; a
proof of it remains an external obligation.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Foundations/Variantc4aa3746de3566d5891d8f00aa70306d94d82b3bfdec944f8e81d1fd75c2dfac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Foundations/Variantc4aa3746de3566d5891d8f00aa70306d94d82b3bfdec944f8e81d1fd75c2dfac.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `366537315ac8727a162ce9e2610958e4ad39781b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
