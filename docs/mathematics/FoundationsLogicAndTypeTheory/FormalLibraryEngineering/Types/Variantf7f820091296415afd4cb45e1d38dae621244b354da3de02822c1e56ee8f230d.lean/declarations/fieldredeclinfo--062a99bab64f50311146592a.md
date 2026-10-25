# FieldRedeclInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ca1f82ac04cfe0345b7a79b36b80037cec002c2d4a4ea1c4ec7145ec6d1190e0",
  "kind": "structure",
  "lexical_name": "FieldRedeclInfo",
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
  "slug": "fieldredeclinfo--062a99bab64f50311146592a",
  "source": {
    "blob": "35343b74dbcab1185aef1938da5126db41323555",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 204,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantf7f820091296415afd4cb45e1d38dae621244b354da3de02822c1e56ee8f230d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:062a99bab64f50311146592ac5c7cd4c3e1f63850e317645be00ad72a71911ab",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantf7f820091296415afd4cb45e1d38dae621244b354da3de02822c1e56ee8f230d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ca1f82ac04cfe0345b7a79b36b80037cec002c2d4a4ea1c4ec7145ec6d1190e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FieldRedeclInfo where
  stx : Syntax

/--
Denotes TermInfo with additional configurations to control interactions with delaborated terms.

For example, the omission term `⋯` that is emitted by the delaborator when omitting a term
due to `pp.deepTerms false` or `pp.proofs false` uses this.
Omission needs to be treated differently from regular terms because
it has to be delaborated differently in `Lean.Widget.InteractiveDiagnostics.infoToInteractive`:
Regular terms are delaborated explicitly, whereas omitted terms are simply to be expanded with
regular delaboration settings. Additionally, omissions come with a reason for omission.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantf7f820091296415afd4cb45e1d38dae621244b354da3de02822c1e56ee8f230d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantf7f820091296415afd4cb45e1d38dae621244b354da3de02822c1e56ee8f230d.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35343b74dbcab1185aef1938da5126db41323555` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
