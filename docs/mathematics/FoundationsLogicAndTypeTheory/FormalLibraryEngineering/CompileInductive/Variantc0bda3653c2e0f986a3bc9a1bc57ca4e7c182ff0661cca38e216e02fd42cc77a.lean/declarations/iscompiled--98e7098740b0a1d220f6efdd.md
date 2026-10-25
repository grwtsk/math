# isCompiled

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cfa49578c26ffba44846ada5b569123e024c48b813478217dc5c2207bbecc599",
  "kind": "def",
  "lexical_name": "isCompiled",
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
  "slug": "iscompiled--98e7098740b0a1d220f6efdd",
  "source": {
    "blob": "dd2005a6a3f391e292db70e4cb9a5ffa32e6df60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 78,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variantc0bda3653c2e0f986a3bc9a1bc57ca4e7c182ff0661cca38e216e02fd42cc77a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:98e7098740b0a1d220f6efdd728bb2791134d12234c2e45e225ef2b291ee352a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variantc0bda3653c2e0f986a3bc9a1bc57ca4e7c182ff0661cca38e216e02fd42cc77a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cfa49578c26ffba44846ada5b569123e024c48b813478217dc5c2207bbecc599`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isCompiled (env : Environment) (n : Name) : Bool :=
  -- `_cstage2` is not accessible via the elab env directly, wait for the full kernel env
  env.toKernelEnv.constants.contains (n.str "_cstage2") ||
    (Compiler.CSimp.ext.getState env).map.contains n

/--
`compile_def% Foo.foo` adds compiled code for the definition `Foo.foo`.
This can be used for type class projections or definitions like `List._sizeOf_1`,
for which Lean does not generate compiled code by default
(since it is not used 99% of the time).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variantc0bda3653c2e0f986a3bc9a1bc57ca4e7c182ff0661cca38e216e02fd42cc77a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variantc0bda3653c2e0f986a3bc9a1bc57ca4e7c182ff0661cca38e216e02fd42cc77a.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd2005a6a3f391e292db70e4cb9a5ffa32e6df60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
