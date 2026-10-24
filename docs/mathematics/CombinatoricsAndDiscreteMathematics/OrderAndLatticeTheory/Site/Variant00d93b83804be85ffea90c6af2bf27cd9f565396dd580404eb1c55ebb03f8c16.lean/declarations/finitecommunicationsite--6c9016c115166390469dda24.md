# FiniteCommunicationSite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4991b03a19eb5b9252939c185915a617175ce3158f5ea1f5ee2cca9136a317cd",
  "kind": "structure",
  "lexical_name": "FiniteCommunicationSite",
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
  "slug": "finitecommunicationsite--6c9016c115166390469dda24",
  "source": {
    "blob": "2500d11432c7fe586d3d1fb19faf36a1dff58e37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 24,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Site/Variant00d93b83804be85ffea90c6af2bf27cd9f565396dd580404eb1c55ebb03f8c16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6c9016c115166390469dda24e571746b54f4ebb20085d880c76f67f159379b06",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Site/Variant00d93b83804be85ffea90c6af2bf27cd9f565396dd580404eb1c55ebb03f8c16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4991b03a19eb5b9252939c185915a617175ce3158f5ea1f5ee2cca9136a317cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FiniteCommunicationSite where
  Object : Type u
  objectFintype : Fintype Object
  objectDecEq : DecidableEq Object
  partialOrder : PartialOrder Object
  orderDecidable :
    DecidableRel (@LE.le Object partialOrder.toPreorder.toLE)
  cover : Object → Finset Object
  cover_below :
    ∀ {base member}, member ∈ cover base →
      @LE.le Object partialOrder.toPreorder.toLE member base
  identity : ArtifactIdentity

attribute [instance] FiniteCommunicationSite.objectFintype
  FiniteCommunicationSite.objectDecEq

namespace FiniteCommunicationSite

/-- The site's explicitly stored partial order relation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Site/Variant00d93b83804be85ffea90c6af2bf27cd9f565396dd580404eb1c55ebb03f8c16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Site/Variant00d93b83804be85ffea90c6af2bf27cd9f565396dd580404eb1c55ebb03f8c16.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2500d11432c7fe586d3d1fb19faf36a1dff58e37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
