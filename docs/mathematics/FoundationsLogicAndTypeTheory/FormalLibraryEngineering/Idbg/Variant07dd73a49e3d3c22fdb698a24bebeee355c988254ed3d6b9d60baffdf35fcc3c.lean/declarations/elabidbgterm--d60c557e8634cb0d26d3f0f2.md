# elabIdbgTerm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:17ad274b4d2532e0120cfae3858ce1400027f8702231925694f6b93c9ecaae15",
  "kind": "def",
  "lexical_name": "elabIdbgTerm",
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
  "slug": "elabidbgterm--d60c557e8634cb0d26d3f0f2",
  "source": {
    "blob": "f4f46d18b503e3f9aefdc19d94f6e99fe1a9fc17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 369,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Idbg/Variant07dd73a49e3d3c22fdb698a24bebeee355c988254ed3d6b9d60baffdf35fcc3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d60c557e8634cb0d26d3f0f24e59cbf4770c8e53bd624e91c9b15f0031fc9d79",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Idbg/Variant07dd73a49e3d3c22fdb698a24bebeee355c988254ed3d6b9d60baffdf35fcc3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:17ad274b4d2532e0120cfae3858ce1400027f8702231925694f6b93c9ecaae15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 369–373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabIdbgTerm : TermElab := fun stx expectedType? => do
  let `(Lean.Parser.Term.idbg| idbg $e; $body) := stx | throwUnsupportedSyntax
  elabIdbgCore (e := e) (body := body) (ref := stx) expectedType?

@[builtin_doElem_elab Lean.Parser.Term.doIdbg]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Idbg/Variant07dd73a49e3d3c22fdb698a24bebeee355c988254ed3d6b9d60baffdf35fcc3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Idbg/Variant07dd73a49e3d3c22fdb698a24bebeee355c988254ed3d6b9d60baffdf35fcc3c.lean#L369).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4f46d18b503e3f9aefdc19d94f6e99fe1a9fc17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
