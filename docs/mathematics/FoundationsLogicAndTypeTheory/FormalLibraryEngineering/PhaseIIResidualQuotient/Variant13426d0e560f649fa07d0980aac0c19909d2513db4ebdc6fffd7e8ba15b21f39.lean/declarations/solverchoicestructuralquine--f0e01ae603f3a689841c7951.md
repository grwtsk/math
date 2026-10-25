# solverChoiceStructuralQuine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8cca8161c5dd4639133c86ebefca87fd3ae27b67f52cfd52b9726e570ac223be",
  "kind": "def",
  "lexical_name": "solverChoiceStructuralQuine",
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
  "slug": "solverchoicestructuralquine--f0e01ae603f3a689841c7951",
  "source": {
    "blob": "2ee3c3416fa40c8757c3fa08da9c1d48c9da8a87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 160,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseIIResidualQuotient/Variant13426d0e560f649fa07d0980aac0c19909d2513db4ebdc6fffd7e8ba15b21f39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f0e01ae603f3a689841c79516ea44a6311edb27294aeb9e3968b75cf600663d7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseIIResidualQuotient/Variant13426d0e560f649fa07d0980aac0c19909d2513db4ebdc6fffd7e8ba15b21f39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8cca8161c5dd4639133c86ebefca87fd3ae27b67f52cfd52b9726e570ac223be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def solverChoiceStructuralQuine
    (Q : PhaseIIResidualQuotient G) :
    StructuralQuine (phaseIIResidualCertificateFamily G) where
  quotient := Q.solverChoiceRepresentation
  reconstruct := fun _ => Q.representative
  section := by
    intro q
    cases q
    rfl
  reconstruct_equivalent := by
    intro S
    exact phaseIIResidualCertificate_equivalent Q.representative S
  minimal := Q.solverChoiceRepresentation_minimal

end PhaseIIResidualQuotient

universe w z

variable {ι : Type w} {κ : Type z}
variable [Fintype ι] [DecidableEq ι]
variable [Fintype κ] [DecidableEq κ]

/-- Package the singular positive-block construction as the canonical Phase-II
residual quotient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseIIResidualQuotient/Variant13426d0e560f649fa07d0980aac0c19909d2513db4ebdc6fffd7e8ba15b21f39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseIIResidualQuotient/Variant13426d0e560f649fa07d0980aac0c19909d2513db4ebdc6fffd7e8ba15b21f39.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ee3c3416fa40c8757c3fa08da9c1d48c9da8a87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
