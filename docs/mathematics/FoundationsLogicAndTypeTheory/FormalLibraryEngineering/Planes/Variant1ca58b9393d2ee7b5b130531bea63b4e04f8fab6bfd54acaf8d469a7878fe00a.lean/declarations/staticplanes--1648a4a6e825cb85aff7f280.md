# staticPlanes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4460fa429e4616de13fa78f94d2442cc047ea37576f48dc389dd817ddeb092bf",
  "kind": "def",
  "lexical_name": "staticPlanes",
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
  "slug": "staticplanes--1648a4a6e825cb85aff7f280",
  "source": {
    "blob": "07dd63e7fdc17429ee8179528224afb3dc8cd892",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 50,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Planes/Variant1ca58b9393d2ee7b5b130531bea63b4e04f8fab6bfd54acaf8d469a7878fe00a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1648a4a6e825cb85aff7f2805deee55154cb2742a005407833aa3fd0203cc11d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Planes/Variant1ca58b9393d2ee7b5b130531bea63b4e04f8fab6bfd54acaf8d469a7878fe00a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4460fa429e4616de13fa78f94d2442cc047ea37576f48dc389dd817ddeb092bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def staticPlanes : StaticPlanes where
  declared :=
    FormalPlane.ofBits
      (descriptor "declared" .diagonal
        "lean:URSM.Composite.declaredBits")
      declaredBits
      "lean:URSM.Composite.declaredBits"
  formalEligible :=
    FormalPlane.ofBits
      (descriptor "formalEligible" .diagonal
        "lean:URSM.Composite.formalEligibleBits")
      formalEligibleBits
      "lean:URSM.Composite.formalEligibleBits"
  imports :=
    FormalPlane.ofBits
      (descriptor "imports" .directed
        "lean:URSM.Composite.ProjectImports")
      importsBits
      "lean:URSM.Composite.imports_rank_decreases"
  transport :=
    FormalPlane.ofBits
      (descriptor "transport" .directed
        "lean:URSM.Composite.transportBits")
      transportBits
      "lean:URSM.Composite.exactBridge_implies_transport"
  exactBridge :=
    FormalPlane.ofBits
      (descriptor "exactBridge" .symmetric
        "lean:URSM.Composite.exactBridgeBits")
      exactBridgeBits
      "lean:URSM.Composite.exactBridge_registry_certificate"
  conflict := {
    descriptor :=
      descriptor "conflict" .symmetric
        "lean:URSM.Composite.conflictBits"
    square := conflictResolvedSquare
    positive := by
      intro i j observed
      simp [conflictResolvedSquare, ResolvedSquare.read?,
        conflictBits] at observed
    negative := by
      intro i j observed
      simp [conflictBits]
    certificateRoot :=
      "lean:URSM.Composite.analyzed_conflicts_are_negative"
  }
  propertyNaturality :=
    FormalPlane.ofBits
      (descriptor "propertyNaturality" .directed
        "lean:URSM.Composite.propertyNaturalityBits")
      propertyNaturalityBits
      "lean:Mathematics.Concept.Profile.NoStrongerThan"

end URSM.Composite
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Planes/Variant1ca58b9393d2ee7b5b130531bea63b4e04f8fab6bfd54acaf8d469a7878fe00a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Planes/Variant1ca58b9393d2ee7b5b130531bea63b4e04f8fab6bfd54acaf8d469a7878fe00a.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07dd63e7fdc17429ee8179528224afb3dc8cd892` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
