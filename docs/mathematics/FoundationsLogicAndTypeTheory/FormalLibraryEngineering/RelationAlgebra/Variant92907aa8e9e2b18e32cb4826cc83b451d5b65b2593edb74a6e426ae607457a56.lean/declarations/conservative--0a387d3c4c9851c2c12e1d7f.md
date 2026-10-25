# conservative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e5d44655fc8338dc100ae7ad3356c47834ca8e366b5a7aa6dde44349607aec8b",
  "kind": "def",
  "lexical_name": "conservative",
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
  "slug": "conservative--0a387d3c4c9851c2c12e1d7f",
  "source": {
    "blob": "294104fc622080ee71c00eb2cf3c47a487d90a71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 50,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelationAlgebra/Variant92907aa8e9e2b18e32cb4826cc83b451d5b65b2593edb74a6e426ae607457a56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0a387d3c4c9851c2c12e1d7f35746ea2571b975ddec5e94b1331fc546968b5e0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelationAlgebra/Variant92907aa8e9e2b18e32cb4826cc83b451d5b65b2593edb74a6e426ae607457a56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e5d44655fc8338dc100ae7ad3356c47834ca8e366b5a7aa6dde44349607aec8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def conservative : RelationAlgebra where
  law
    | .sameConcept =>
        ⟨true, true, true, true⟩
    | .synonym =>
        ⟨true, true, false, true⟩
    | .nearSynonym =>
        ⟨false, true, false, true⟩
    | .sameImageFamily =>
        ⟨false, true, false, true⟩
    | .adjacent =>
        ⟨false, false, false, true⟩
    | _ =>
        ⟨false, false, false, true⟩
  sameConcept_transitive := rfl
  nearSynonym_not_assumed_transitive := rfl
  sameImage_not_synonym := by
    intro equality
    have reflexiveEquality :=
      congrArg RelationLaw.reflexive equality
    simp at reflexiveEquality

end RelationAlgebra

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelationAlgebra/Variant92907aa8e9e2b18e32cb4826cc83b451d5b65b2593edb74a6e426ae607457a56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelationAlgebra/Variant92907aa8e9e2b18e32cb4826cc83b451d5b65b2593edb74a6e426ae607457a56.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `294104fc622080ee71c00eb2cf3c47a487d90a71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
