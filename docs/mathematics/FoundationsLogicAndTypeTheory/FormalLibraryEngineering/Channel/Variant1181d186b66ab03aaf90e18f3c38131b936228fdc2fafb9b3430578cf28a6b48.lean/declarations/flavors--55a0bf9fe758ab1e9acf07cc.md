# Flavors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a08714e99d65285b726ca2cd185bc39a69f4aec6816532d039517577066e2d1d",
  "kind": "inductive",
  "lexical_name": "Flavors",
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
  "slug": "flavors--55a0bf9fe758ab1e9acf07cc",
  "source": {
    "blob": "bfa7a62d4f31124b44a2a129ffefde2780fefdb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 635,
    "line": 619,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Channel/Variant1181d186b66ab03aaf90e18f3c38131b936228fdc2fafb9b3430578cf28a6b48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:55a0bf9fe758ab1e9acf07ccbf1a01e8457ae04d29dc93b810f24413bdf74b6b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Channel/Variant1181d186b66ab03aaf90e18f3c38131b936228fdc2fafb9b3430578cf28a6b48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a08714e99d65285b726ca2cd185bc39a69f4aec6816532d039517577066e2d1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 619–635.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive Flavors (α : Type) where
  | private unbounded (ch : Unbounded α)
  | private zero (ch : Zero α)
  | private bounded (ch : Bounded α)
deriving Nonempty

end CloseableChannel

/--
A multi-producer multi-consumer FIFO channel that offers both bounded and unbounded buffering
and an asynchronous API, to switch into synchronous mode use `CloseableChannel.sync`.

Additionally `Std.CloseableChannel` can be closed if necessary, unlike `Std.Channel`.
This introduces a need for error handling in some cases, thus it is usually easier to use
`Std.Channel` if applicable.
-/
@[expose] -- for codegen
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Channel/Variant1181d186b66ab03aaf90e18f3c38131b936228fdc2fafb9b3430578cf28a6b48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Channel/Variant1181d186b66ab03aaf90e18f3c38131b936228fdc2fafb9b3430578cf28a6b48.lean#L619).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfa7a62d4f31124b44a2a129ffefde2780fefdb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
