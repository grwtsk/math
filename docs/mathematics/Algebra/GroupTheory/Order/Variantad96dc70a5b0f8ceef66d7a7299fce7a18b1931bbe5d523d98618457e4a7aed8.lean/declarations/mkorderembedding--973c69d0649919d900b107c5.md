# mkOrderEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:21d5599a9de5197cc50a2f00d696c9bc36806ac6e6733f44d45286b0fd2f2612",
  "kind": "def",
  "lexical_name": "mkOrderEmbedding",
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
  "slug": "mkorderembedding--973c69d0649919d900b107c5",
  "source": {
    "blob": "4f963340a2d93320d5a7cf9c4e41748f06aba90d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 105,
    "path": "GRWTSK/Algebra/GroupTheory/Order/Variantad96dc70a5b0f8ceef66d7a7299fce7a18b1931bbe5d523d98618457e4a7aed8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:973c69d0649919d900b107c58844d1da826612a2bdf4c8ea7294c4719c50ee50",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Order/Variantad96dc70a5b0f8ceef66d7a7299fce7a18b1931bbe5d523d98618457e4a7aed8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:21d5599a9de5197cc50a2f00d696c9bc36806ac6e6733f44d45286b0fd2f2612`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkOrderEmbedding (b : s) : α ↪o Localization s where
  toFun a := mk a b
  inj' := mk_left_injective _
  map_rel_iff' {a b} := by simp [mk_le_mk]

end OrderedCancelCommMonoid

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Order/Variantad96dc70a5b0f8ceef66d7a7299fce7a18b1931bbe5d523d98618457e4a7aed8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Order/Variantad96dc70a5b0f8ceef66d7a7299fce7a18b1931bbe5d523d98618457e4a7aed8.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f963340a2d93320d5a7cf9c4e41748f06aba90d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
