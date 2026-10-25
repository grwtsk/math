# directPHPath

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2cbd1f601ae6ef02c3ef8e1f85dcda9f75e0a9a12cdc81965a4ffc23b540c539",
  "kind": "def",
  "lexical_name": "directPHPath",
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
  "slug": "directphpath--08e3290bc2c0a20f50abfa4b",
  "source": {
    "blob": "faa6be8475742a2b32064b3e09687683604c6d78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 120,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Obstruction/Variant06ce6304180ab271e2281674217c36832d7386d9065f5aa01ae0ea40ee3a0b33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:08e3290bc2c0a20f50abfa4b702b604f397c0f0ee630313df8b92a29c1bae502",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Obstruction/Variant06ce6304180ab271e2281674217c36832d7386d9065f5aa01ae0ea40ee3a0b33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2cbd1f601ae6ef02c3ef8e1f85dcda9f75e0a9a12cdc81965a4ffc23b540c539`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def directPHPath : TranslationPath where
  source := prototypeModelIdentity .permutationDynamics
  target := prototypeModelIdentity .finiteEditHomology
  steps :=
    [{ identity := prototypeTranslationId .τPH
       source := prototypeModelIdentity .permutationDynamics
       target := prototypeModelIdentity .finiteEditHomology
       relation := .soundAbstraction
       obligations := [⟨"obligation:orbit-chain-completeness"⟩] }]
  endpointsValid := by simp
  adjacentValid := by intros; simp_all

/-- Composite route through matrix support and simplicial boundary data. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Obstruction/Variant06ce6304180ab271e2281674217c36832d7386d9065f5aa01ae0ea40ee3a0b33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Obstruction/Variant06ce6304180ab271e2281674217c36832d7386d9065f5aa01ae0ea40ee3a0b33.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `faa6be8475742a2b32064b3e09687683604c6d78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
