# FamiliesIndexClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6774b3d2e4b44a057db69c60299f9e31e48489e6680436cadb08e7457fbbb6ab",
  "kind": "structure",
  "lexical_name": "FamiliesIndexClass",
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
  "slug": "familiesindexclass--bd3e21b96af72e67f00bd63b",
  "source": {
    "blob": "1ffd041afa76baaeb1eaa192196366dd02e3a440",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FamiliesIndexClass/Variantafd2b8a19bbf824f5bfd6ae4abb06fcc59eabf8a8b1503354697fc4e5c6c7ea7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd3e21b96af72e67f00bd63b9ca681b00a6e558f0b143f666e2670b07feb406b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FamiliesIndexClass/Variantafd2b8a19bbf824f5bfd6ae4abb06fcc59eabf8a8b1503354697fc4e5c6c7ea7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6774b3d2e4b44a057db69c60299f9e31e48489e6680436cadb08e7457fbbb6ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FamiliesIndexClass
    (M : DerivedSheaf.MellKTheory)
    (F : ArithmeticFamily) where
  indexAt :
    ∀ x : F.ParameterSpace, F.relevant x → DerivedSheaf.KTheoryIndex M
  familyClass : DerivedSheaf.KTheoryClass M.K
  specializesToFibers : Prop
  specializesToFibers_certified : specializesToFibers
  nontrivialAsFamilyClass : Prop
  nontrivialAsFamilyClass_certified : nontrivialAsFamilyClass
  sourceLabel : String

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FamiliesIndexClass/Variantafd2b8a19bbf824f5bfd6ae4abb06fcc59eabf8a8b1503354697fc4e5c6c7ea7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FamiliesIndexClass/Variantafd2b8a19bbf824f5bfd6ae4abb06fcc59eabf8a8b1503354697fc4e5c6c7ea7.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ffd041afa76baaeb1eaa192196366dd02e3a440` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
