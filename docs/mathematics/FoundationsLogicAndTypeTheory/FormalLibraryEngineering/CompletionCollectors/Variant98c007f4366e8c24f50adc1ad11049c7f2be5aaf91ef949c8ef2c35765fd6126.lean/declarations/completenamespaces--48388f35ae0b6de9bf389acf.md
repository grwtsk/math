# completeNamespaces

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dbb35301329c1a6dd8b12ffae293ce121a2b8e9a703a78c6915f0ed85eeee6f1",
  "kind": "def",
  "lexical_name": "completeNamespaces",
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
  "slug": "completenamespaces--48388f35ae0b6de9bf389acf",
  "source": {
    "blob": "f876fe775b7afc6a446227b3c3060b6ba3eafb2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 221,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionCollectors/Variant98c007f4366e8c24f50adc1ad11049c7f2be5aaf91ef949c8ef2c35765fd6126.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:48388f35ae0b6de9bf389acf0f6b6e697e069c9aaccc4bb45968313c8595b746",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionCollectors/Variant98c007f4366e8c24f50adc1ad11049c7f2be5aaf91ef949c8ef2c35765fd6126.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dbb35301329c1a6dd8b12ffae293ce121a2b8e9a703a78c6915f0ed85eeee6f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  private def completeNamespaces (ctx : ContextInfo) (id : Name) (danglingDot : Bool) : M Unit := do
    let env ← getEnv
    for ns in env.getNamespaces do
      unless ns.isInternal || env.contains ns do -- Ignore internal and namespaces that are also declaration names
        let label? ← bestLabelForDecl? ctx ns id danglingDot
        if let some bestLabel := label? then
          addNamespaceCompletionItem bestLabel

end IdCompletionUtils

section DotCompletionUtils

  /--
  Converts `n` to `Name.anonymous` if `n` is a private prefix (see `Lean.isPrivatePrefix`).
  -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionCollectors/Variant98c007f4366e8c24f50adc1ad11049c7f2be5aaf91ef949c8ef2c35765fd6126.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionCollectors/Variant98c007f4366e8c24f50adc1ad11049c7f2be5aaf91ef949c8ef2c35765fd6126.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f876fe775b7afc6a446227b3c3060b6ba3eafb2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
