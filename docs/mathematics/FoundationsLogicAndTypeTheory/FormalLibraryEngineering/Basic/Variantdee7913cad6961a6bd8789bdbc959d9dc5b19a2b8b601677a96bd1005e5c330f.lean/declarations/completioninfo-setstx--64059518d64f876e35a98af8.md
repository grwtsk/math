# CompletionInfo.setStx

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dda5ad70f825b6b30f8ca3fd0710caa3006b2fe5c8a97a96b606d02f1afe1e2e",
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
  "slug": "completioninfo-setstx--64059518d64f876e35a98af8",
  "source": {
    "blob": "c06cec4f426ff14663eebc4801ebc298acaa4e70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 150,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdee7913cad6961a6bd8789bdbc959d9dc5b19a2b8b601677a96bd1005e5c330f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:64059518d64f876e35a98af86286551f92729d7b692600c4df4961e4bccf1649",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdee7913cad6961a6bd8789bdbc959d9dc5b19a2b8b601677a96bd1005e5c330f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dda5ad70f825b6b30f8ca3fd0710caa3006b2fe5c8a97a96b606d02f1afe1e2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–160.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdee7913cad6961a6bd8789bdbc959d9dc5b19a2b8b601677a96bd1005e5c330f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdee7913cad6961a6bd8789bdbc959d9dc5b19a2b8b601677a96bd1005e5c330f.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c06cec4f426ff14663eebc4801ebc298acaa4e70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
