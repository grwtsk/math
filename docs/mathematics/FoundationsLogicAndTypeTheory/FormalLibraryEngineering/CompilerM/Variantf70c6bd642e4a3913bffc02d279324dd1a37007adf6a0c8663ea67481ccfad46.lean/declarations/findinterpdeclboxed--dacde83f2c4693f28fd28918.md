# findInterpDeclBoxed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5711f497ef6f22f7accaacf78e57f72f81324be7655d6aa6fd4e59c974d2152e",
  "kind": "def",
  "lexical_name": "findInterpDeclBoxed",
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
  "slug": "findinterpdeclboxed--dacde83f2c4693f28fd28918",
  "source": {
    "blob": "228b06ad5a72fbc0fd3515f59de814615329b97a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 158,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variantf70c6bd642e4a3913bffc02d279324dd1a37007adf6a0c8663ea67481ccfad46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dacde83f2c4693f28fd2891856d65748cb35222dd7318f315207bd18e3671228",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variantf70c6bd642e4a3913bffc02d279324dd1a37007adf6a0c8663ea67481ccfad46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5711f497ef6f22f7accaacf78e57f72f81324be7655d6aa6fd4e59c974d2152e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def findInterpDeclBoxed (env : Environment) (declName : Name) : Option Decl :=
  let boxed := Compiler.LCNF.mkBoxedName declName
  -- Important: get module index of base name, not boxed version. Usually the interpreter never
  -- does negative lookups except in the case of `call_boxed` which must check whether a boxed
  -- version exists. If `declName` exists as an imported declaration but `declName'` doesn't, the
  -- latter's module index would be `none` and we may do an expensive blocking wait on the
  -- environment extension state even if in this situation we definitely know that `declName'` is
  -- not a local declaration.
  match env.getModuleIdxFor? declName with
  | some modIdx =>
    findAtSorted? (declMapExt.getModuleIREntries env modIdx) boxed <|>
    findAtSorted? (declMapExt.getModuleEntries env modIdx) boxed
  | none => declMapExt.getState env |>.find? boxed

@[export lean_has_compile_error]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variantf70c6bd642e4a3913bffc02d279324dd1a37007adf6a0c8663ea67481ccfad46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variantf70c6bd642e4a3913bffc02d279324dd1a37007adf6a0c8663ea67481ccfad46.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `228b06ad5a72fbc0fd3515f59de814615329b97a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
