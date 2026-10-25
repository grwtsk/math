# sumEmbeddingEquivSigmaEmbeddingRestricted

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b76d4ff281e715b7264e00c2248cb3cfdd2cf230447f106fbe1dcbaa456fa4fc",
  "kind": "def",
  "lexical_name": "sumEmbeddingEquivSigmaEmbeddingRestricted",
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
  "slug": "sumembeddingequivsigmaembeddingrestricted--f51774212626f99a48b1bd88",
  "source": {
    "blob": "092e30202d1575523387bfe16180963f330fd4a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 79,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Embedding/Variant4b2142c5b8505b20f22bcae505cc9c8bc01c77eb524f3f784b06b63bd70a13d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f51774212626f99a48b1bd88a638ee09473952c5fb7556633598ccff75e379a6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Embedding/Variant4b2142c5b8505b20f22bcae505cc9c8bc01c77eb524f3f784b06b63bd70a13d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b76d4ff281e715b7264e00c2248cb3cfdd2cf230447f106fbe1dcbaa456fa4fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sumEmbeddingEquivSigmaEmbeddingRestricted {α β γ : Type*} :
    (α ⊕ β ↪ γ) ≃ Σ f : α ↪ γ, β ↪ ↥(Set.range f)ᶜ :=
  Equiv.trans sumEmbeddingEquivProdEmbeddingDisjoint
    prodEmbeddingDisjointEquivSigmaEmbeddingRestricted

/-- Embeddings from a single-member type are equivalent to members of the target type. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Embedding/Variant4b2142c5b8505b20f22bcae505cc9c8bc01c77eb524f3f784b06b63bd70a13d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Embedding/Variant4b2142c5b8505b20f22bcae505cc9c8bc01c77eb524f3f784b06b63bd70a13d4.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `092e30202d1575523387bfe16180963f330fd4a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
