# comparePretty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d25c917ed8ee056fcc08bd138df3ddc227d02d7d631d76a818907a5b3226bed1",
  "kind": "def",
  "lexical_name": "comparePretty",
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
  "slug": "comparepretty--d8cceb9a70281e5bc65d3b66",
  "source": {
    "blob": "140f205e95cdd514d5146d8eb762221c32590ecb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 106,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant0ceb1cafe351649c1f63bf733b2c26f0711c5e8fb2cec4f0b3940930def69655.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d8cceb9a70281e5bc65d3b6648216c3073fcb27f5827d8768a95e7d4334ad47f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant0ceb1cafe351649c1f63bf733b2c26f0711c5e8fb2cec4f0b3940930def69655.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d25c917ed8ee056fcc08bd138df3ddc227d02d7d631d76a818907a5b3226bed1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def comparePretty (i₁ i₂ : Import) : Ordering :=
  (compare i₁.isExported i₂.isExported).swap -- `public import < import`
    |>.then (compare i₁.importAll i₂.importAll) -- `import < import all`
    |>.then (compare i₁.isMeta i₂.isMeta).swap -- `meta import < import`
    |>.then (Name.cmp i₁.module i₂.module)

/-- Considers imports with `public` to come first; then those without `all`; then those with
`meta`; then compares the modules alphabetically; then compares starting source position, c
considering those without a starting position to come first. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant0ceb1cafe351649c1f63bf733b2c26f0711c5e8fb2cec4f0b3940930def69655.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant0ceb1cafe351649c1f63bf733b2c26f0711c5e8fb2cec4f0b3940930def69655.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `140f205e95cdd514d5146d8eb762221c32590ecb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
