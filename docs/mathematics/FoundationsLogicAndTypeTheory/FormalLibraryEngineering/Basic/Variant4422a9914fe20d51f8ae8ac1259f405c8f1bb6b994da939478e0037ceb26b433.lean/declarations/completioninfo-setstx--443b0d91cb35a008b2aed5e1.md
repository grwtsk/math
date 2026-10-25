# CompletionInfo.setStx

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ac2e1d15d115b5881a998a97a4b564b799e410250045279be246f46506352a53",
  "kind": "def",
  "lexical_name": "CompletionInfo.setStx",
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
  "slug": "completioninfo-setstx--443b0d91cb35a008b2aed5e1",
  "source": {
    "blob": "5019a6d486c13c19d233eda28b7b74a75318a569",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 158,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4422a9914fe20d51f8ae8ac1259f405c8f1bb6b994da939478e0037ceb26b433.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:443b0d91cb35a008b2aed5e10e132d4da1e8770be04760ebae24037b3d592bf4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4422a9914fe20d51f8ae8ac1259f405c8f1bb6b994da939478e0037ceb26b433.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ac2e1d15d115b5881a998a97a4b564b799e410250045279be246f46506352a53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def CompletionInfo.setStx (stx : Syntax) : CompletionInfo → CompletionInfo
  | dot i e?              => .dot { i with stx } e?
  | id _ n dd lctx e?     => .id stx n dd lctx e?
  | dotId _ n lctx e?     => .dotId stx n lctx e?
  | fieldId _ n? lctx s   => .fieldId stx n? lctx s
  | namespaceId _         => .namespaceId stx
  | option _              => .option stx
  | errorName _ pid       => .errorName stx pid
  | endSection _ n? dd ns => .endSection stx n? dd ns
  | tactic _              => .tactic stx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4422a9914fe20d51f8ae8ac1259f405c8f1bb6b994da939478e0037ceb26b433.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4422a9914fe20d51f8ae8ac1259f405c8f1bb6b994da939478e0037ceb26b433.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5019a6d486c13c19d233eda28b7b74a75318a569` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
