# registerSimplePersistentEnvExtension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d2211752b3c7886896f438f11cf9299593e465842b41a4101decb707a8bc4328",
  "kind": "def",
  "lexical_name": "registerSimplePersistentEnvExtension",
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
  "slug": "registersimplepersistentenvextension--ac7e2cbdf48cd815356c759e",
  "source": {
    "blob": "83589454bbd212c94013da577abee963e2604846",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 44,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EnvExtension/Variant18086b4119360fad18b8434e2e0b3ef6f52d23f57a4d93ca4f7f7ffbe0685e87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ac7e2cbdf48cd815356c759ef0cec20c95d50e0284cd4cc4655ab88e058476ea",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EnvExtension/Variant18086b4119360fad18b8434e2e0b3ef6f52d23f57a4d93ca4f7f7ffbe0685e87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d2211752b3c7886896f438f11cf9299593e465842b41a4101decb707a8bc4328`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def registerSimplePersistentEnvExtension {α σ : Type} [Inhabited σ] (descr : SimplePersistentEnvExtensionDescr α σ) : IO (SimplePersistentEnvExtension α σ) :=
  registerPersistentEnvExtension {
    name            := descr.name,
    mkInitial       := pure ([], descr.addImportedFn #[]),
    addImportedFn   := fun as => pure ([], descr.addImportedFn as),
    addEntryFn      := fun s e => match s with
      | (entries, s) => (e::entries, descr.addEntryFn s e),
    exportEntriesFnEx env s := match descr.exportEntriesFnEx? with
      | some fn => fn env s.2 s.1.reverse
      | none    => .uniform (descr.toArrayFn s.1.reverse)
    statsFn := fun s => format "number of local entries: " ++ format s.1.length
    asyncMode := descr.asyncMode
    replay? := descr.replay?.map fun replay oldState newState _ (entries, s) =>
      let newEntries := newState.1.take (newState.1.length - oldState.1.length)
      let (newEntries, s) := replay newEntries newState.2 s
      (newEntries ++ entries, s)
  }

namespace SimplePersistentEnvExtension

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EnvExtension/Variant18086b4119360fad18b8434e2e0b3ef6f52d23f57a4d93ca4f7f7ffbe0685e87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EnvExtension/Variant18086b4119360fad18b8434e2e0b3ef6f52d23f57a4d93ca4f7f7ffbe0685e87.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83589454bbd212c94013da577abee963e2604846` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
