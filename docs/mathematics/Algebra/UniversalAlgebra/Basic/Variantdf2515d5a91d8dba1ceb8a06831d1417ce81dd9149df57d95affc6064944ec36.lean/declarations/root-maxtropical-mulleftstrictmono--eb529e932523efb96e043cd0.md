# _root_.MaxTropical.mulLeftStrictMono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8d4952146c9a3d6304b20a1c125035f3d85a77c08c122e03f0dffcf2e07294a4",
  "kind": "instance",
  "lexical_name": "_root_.MaxTropical.mulLeftStrictMono",
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
  "slug": "root-maxtropical-mulleftstrictmono--eb529e932523efb96e043cd0",
  "source": {
    "blob": "4f3e19c1dd11f85f9f94dfa756aff8427dc26583",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 560,
    "line": 556,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variantdf2515d5a91d8dba1ceb8a06831d1417ce81dd9149df57d95affc6064944ec36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eb529e932523efb96e043cd07a8607c3a061be4fbf5837d075db57203bd3fe9f",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variantdf2515d5a91d8dba1ceb8a06831d1417ce81dd9149df57d95affc6064944ec36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8d4952146c9a3d6304b20a1c125035f3d85a77c08c122e03f0dffcf2e07294a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 556–560.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance _root_.MaxTropical.mulLeftStrictMono [LT R] [Add R] [AddLeftStrictMono R] :
    MulLeftStrictMono (MaxTropical R) :=
  ⟨fun _ _ _ h => add_lt_add_right (MaxTropical.untrop_lt_iff.2 h) _⟩

@[to_dual existing]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variantdf2515d5a91d8dba1ceb8a06831d1417ce81dd9149df57d95affc6064944ec36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variantdf2515d5a91d8dba1ceb8a06831d1417ce81dd9149df57d95affc6064944ec36.lean#L556).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f3e19c1dd11f85f9f94dfa756aff8427dc26583` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
