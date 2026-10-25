# mkFixedParamsMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f0533c81669d5baa1810036b202abd316366b78249be3f6086b9e39733115720",
  "kind": "def",
  "lexical_name": "mkFixedParamsMap",
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
  "slug": "mkfixedparamsmap--f99623dd613acb7dec553a40",
  "source": {
    "blob": "8afe5a3ee9e4da445eed71342b63d5b50fd1a308",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 202,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedParams/Variant80c1406dd1146086e052786bddba93d9068d823b170b6704acf61eb796bcdcbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f99623dd613acb7dec553a4015c2acf8ef43af2379acc5834fded830dabcde66",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedParams/Variant80c1406dd1146086e052786bddba93d9068d823b170b6704acf61eb796bcdcbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f0533c81669d5baa1810036b202abd316366b78249be3f6086b9e39733115720`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkFixedParamsMap (decls : Array (Decl .pure)) : NameMap (Array Bool) := Id.run do
  let mut result := {}
  for decl in decls do
    let values := mkInitialValues decl.params.size
    let assignment := mkAssignment decl values
    let fixed := Array.replicate decl.params.size true
    match decl.value with
    | .code c =>
      match evalCode c |>.run { main := decl, decls, assignment } |>.run { fixed } with
      | .ok _ s | .error _ s => result := result.insert decl.name s.fixed
    | .extern .. =>
      result := result.insert decl.name fixed
  return result

end Lean.Compiler.LCNF
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedParams/Variant80c1406dd1146086e052786bddba93d9068d823b170b6704acf61eb796bcdcbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedParams/Variant80c1406dd1146086e052786bddba93d9068d823b170b6704acf61eb796bcdcbb.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8afe5a3ee9e4da445eed71342b63d5b50fd1a308` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
