# ArcAdmissible.endpoints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee4f2632-e1a3-0746-e469-4229c4146876",
  "kind": "theorem",
  "lexical_name": "ArcAdmissible.endpoints",
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
  "slug": "arcadmissible-endpoints--eb576881602f3c57f7b5e852",
  "source": {
    "blob": "653643e2906217baafde93667e1024b99aed81c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 76,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Admissibility/Variant6dbce0fcd4fcad68768a3195112a82d2cce252a668bea089e095e43448a15e20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb576881602f3c57f7b5e8527e279f03dd136faabf8a7c863d23bc7313328bd8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Admissibility/Variant6dbce0fcd4fcad68768a3195112a82d2cce252a668bea089e095e43448a15e20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee4f2632-e1a3-0746-e469-4229c4146876`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ArcAdmissible.endpoints
    {G : GraphCut}
    {profile : AdmissibilityProfile G}
    {arc : Arc G}
    (admissible : ArcAdmissible profile arc) :
    NodeAdmissible profile arc.tail ∧
      NodeAdmissible profile arc.head := by
  have endpoints :=
    profile.edgeEndpointsAdmissible
      arc.edge admissible
  cases arc with
  | mk edge direction =>
      cases direction with
      | forward =>
          simpa [Arc.tail, Arc.head,
            NodeAdmissible] using endpoints
      | reverse =>
          simpa [Arc.tail, Arc.head,
            NodeAdmissible] using
            And.intro endpoints.2 endpoints.1

end Mathematics.GraphAccess
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Admissibility/Variant6dbce0fcd4fcad68768a3195112a82d2cce252a668bea089e095e43448a15e20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Admissibility/Variant6dbce0fcd4fcad68768a3195112a82d2cce252a668bea089e095e43448a15e20.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `653643e2906217baafde93667e1024b99aed81c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
