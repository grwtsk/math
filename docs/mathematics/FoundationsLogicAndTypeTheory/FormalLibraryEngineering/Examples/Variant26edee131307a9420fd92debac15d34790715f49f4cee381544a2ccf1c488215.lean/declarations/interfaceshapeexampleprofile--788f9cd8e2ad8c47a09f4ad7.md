# interfaceShapeExampleProfile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1c89c7ebf941b70e1608b30c88db3c3b250ed562c0194c84e402c0d6cc19e109",
  "kind": "def",
  "lexical_name": "interfaceShapeExampleProfile",
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
  "slug": "interfaceshapeexampleprofile--788f9cd8e2ad8c47a09f4ad7",
  "source": {
    "blob": "bfe230e48b45e9ec78a4d1a244908dd9c376aa25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 106,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Examples/Variant26edee131307a9420fd92debac15d34790715f49f4cee381544a2ccf1c488215.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:788f9cd8e2ad8c47a09f4ad7437797b30473e8eb2d4796c52f2f19baa6b91a48",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Examples/Variant26edee131307a9420fd92debac15d34790715f49f4cee381544a2ccf1c488215.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1c89c7ebf941b70e1608b30c88db3c3b250ed562c0194c84e402c0d6cc19e109`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def interfaceShapeExampleProfile : AssuranceProfile PipelineState where
  Valid := fun _ => True
  identity := .supported id (by intro _ _; trivial)
  composition := .unsupported
  transport := .unsupported
  evidenceCollection := .supported id (by intro _ _; trivial)
  claimClassification := .supported id (by intro _ _; trivial)
  gating := .supported id (by intro _ _; trivial)
  attestation := .supported id (by intro _ _; trivial)
  refinement := .unsupported
  adapterExecution := .unsupported
  reflexiveReview := .supported id (by intro _ _; trivial)

/-- The canonical stage specifications in execution order. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Examples/Variant26edee131307a9420fd92debac15d34790715f49f4cee381544a2ccf1c488215.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Examples/Variant26edee131307a9420fd92debac15d34790715f49f4cee381544a2ccf1c488215.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfe230e48b45e9ec78a4d1a244908dd9c376aa25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
