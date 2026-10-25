# Anonymous syntax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:70c74eb3a2cc3e41971b0ed1192765b3f9778abaa30cc79d007ab867827a7eca",
  "kind": "syntax",
  "lexical_name": null,
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
  "slug": "syntax--ca0c0b5c35c44a86ef45c8bd",
  "source": {
    "blob": "3ff2d2b3ff39f6d1d9c19b821f37613876f9feca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 24,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant84d30187a4a48d331119eedfca8bf290d1673cfd886012b6af57d85a6b7fd8b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ca0c0b5c35c44a86ef45c8bd7848e1b7efc407f4ba645896346c767bd97dc2d7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant84d30187a4a48d331119eedfca8bf290d1673cfd886012b6af57d85a6b7fd8b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `syntax` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:70c74eb3a2cc3e41971b0ed1192765b3f9778abaa30cc79d007ab867827a7eca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
syntax extFlat := atomic("(" &"flat" " := " &"false" ")")

/--
Registers an extensionality theorem.

* When `@[ext]` is applied to a theorem, the theorem is registered for the `ext` tactic, and it generates an "`ext_iff`" theorem.
  The name of the theorem is from adding the suffix `_iff` to the theorem name.

* When `@[ext]` is applied to a structure, it generates an `.ext` theorem and applies the `@[ext]` attribute to it.
  The result is an `.ext` and an `.ext_iff` theorem with the `.ext` theorem registered for the `ext` tactic.

* An optional natural number argument, e.g. `@[ext 9000]`, specifies a priority for the `ext` lemma.
  Higher-priority lemmas are chosen first, and the default is `1000`.

* The flag `@[ext (iff := false)]` disables generating an `ext_iff` theorem.

* The flag `@[ext (flat := false)]` causes generated structure extensionality theorems to show inherited fields based on their representation,
  rather than flattening the parents' fields into the lemma's equality hypotheses.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant84d30187a4a48d331119eedfca8bf290d1673cfd886012b6af57d85a6b7fd8b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant84d30187a4a48d331119eedfca8bf290d1673cfd886012b6af57d85a6b7fd8b4.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ff2d2b3ff39f6d1d9c19b821f37613876f9feca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
