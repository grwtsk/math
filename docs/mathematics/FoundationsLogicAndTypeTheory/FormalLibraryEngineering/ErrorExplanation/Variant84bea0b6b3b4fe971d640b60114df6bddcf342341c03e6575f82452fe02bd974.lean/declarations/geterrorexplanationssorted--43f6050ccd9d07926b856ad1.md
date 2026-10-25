# getErrorExplanationsSorted

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5280084a171f87cbe80888703b65885fd02c3ebb8ea469160e3dba90875694ed",
  "kind": "def",
  "lexical_name": "getErrorExplanationsSorted",
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
  "slug": "geterrorexplanationssorted--43f6050ccd9d07926b856ad1",
  "source": {
    "blob": "08f53d52b857f20274d633fa13eac12beba65d71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 96,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErrorExplanation/Variant84bea0b6b3b4fe971d640b60114df6bddcf342341c03e6575f82452fe02bd974.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:43f6050ccd9d07926b856ad1c7953cc95eb0c8ad5ec4232d3dbb6f773d891523",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErrorExplanation/Variant84bea0b6b3b4fe971d640b60114df6bddcf342341c03e6575f82452fe02bd974.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5280084a171f87cbe80888703b65885fd02c3ebb8ea469160e3dba90875694ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getErrorExplanationsSorted [Monad m] [MonadEnv m] : m (Array (Name × ErrorExplanation)) := do
  getErrorExplanations

end Lean

/-
Error explanations registered in the compiler must be added to the manual and
referenced in the Manual.ErrorExplanations module here:

https://github.com/leanprover/reference-manual/blob/main/Manual/ErrorExplanations.lean

Details:
https://github.com/leanprover/reference-manual/blob/main/Manual/ErrorExplanations/README.md
-/

/-- -/
register_error_explanation lean.ctorResultingTypeMismatch {
  summary := "Resulting type of constructor was not the inductive type being declared."
  sinceVersion := "4.22.0"
}

/-- -/
register_error_explanation lean.dependsOnNoncomputable {
  summary := "Declaration depends on noncomputable definitions but is not marked as noncomputable"
  sinceVersion := "4.22.0"
}

/-- -/
register_error_explanation lean.inductionWithNoAlts {
  summary := "Induction pattern with nontactic in natural-number-game-style `with` clause."
  sinceVersion := "4.26.0"
}

/-- -/
register_error_explanation lean.inductiveParamMismatch {
  summary := " Invalid parameter in an occurrence of an inductive type in one of its constructors."
  sinceVersion := "4.22.0"
}

/-- -/
register_error_explanation lean.inductiveParamMissing {
  summary := "Parameter not present in an occurrence of an inductive type in one of its constructors."
  sinceVersion := "4.22.0"
}

/-- -/
register_error_explanation lean.inferBinderTypeFailed {
  summary := "The type of a binder could not be inferred."
  sinceVersion := "4.23.0"
}

/-- -/
register_error_explanation lean.inferDefTypeFailed {
  summary := "The type of a definition could not be inferred."
  sinceVersion := "4.23.0"
}

/-- -/
register_error_explanation lean.invalidDottedIdent {
  summary := "Dotted identifier notation used with invalid or non-inferrable expected type."
  sinceVersion := "4.22.0"
}

/-- -/
register_error_explanation lean.invalidField {
  summary := "Generalized field notation used in a potentially ambiguous way."
  sinceVersion := "4.22.0"
}

/-- -/
register_error_explanation lean.projNonPropFromProp {
  summary := "Tried to project data from a proof."
  sinceVersion := "4.23.0"
}

/-- -/
register_error_explanation lean.propRecLargeElim {
  summary := "Attempted to eliminate a proof into a higher type universe."
  sinceVersion := "4.23.0"
}

/-- -/
register_error_explanation lean.redundantMatchAlt {
  summary := "Match alternative will never be reached."
  sinceVersion := "4.22.0"
}

/-- -/
register_error_explanation lean.synthInstanceFailed {
  summary := "Failed to synthesize instance of type class."
  sinceVersion := "4.26.0"
}

/-- -/
register_error_explanation lean.unknownIdentifier {
  summary := "Failed to resolve identifier to variable or constant."
  sinceVersion := "4.23.0"
}
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErrorExplanation/Variant84bea0b6b3b4fe971d640b60114df6bddcf342341c03e6575f82452fe02bd974.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErrorExplanation/Variant84bea0b6b3b4fe971d640b60114df6bddcf342341c03e6575f82452fe02bd974.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08f53d52b857f20274d633fa13eac12beba65d71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
