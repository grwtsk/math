# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Product.Variant13c8756add2710072abee567b38e3447ddb798a2cdac3c9e67a72ac896feec92.Equiv.Finset.prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:70a7f73806a5ab451177a0c96499342f9b1c022d20a020836fc99ef87c30b822",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Product.Variant13c8756add2710072abee567b38e3447ddb798a2cdac3c9e67a72ac896feec92.Equiv.Finset.prod",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-product-variant13c8756ad--0fbd2f9b4bfd06ba5f07637e",
  "source": {
    "blob": "9c436bcb7d33a63148e1395d7276f3328d99ff43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 82,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Prod/Variant505c84787039e799b0cd600a199f8904dfb2bb1c011ffa879b9817dd4c201f4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0fbd2f9b4bfd06ba5f07637e5741823b0f9d3358f9759e80758496f30da80270",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Prod/Variant505c84787039e799b0cd600a199f8904dfb2bb1c011ffa879b9817dd4c201f4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:70a7f73806a5ab451177a0c96499342f9b1c022d20a020836fc99ef87c30b822`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Product.Variant13c8756add2710072abee567b38e3447ddb798a2cdac3c9e67a72ac896feec92.Equiv.Finset.prod (s : Finset α) (t : Finset β) : ↥(s ×ˢ t) ≃ s × t where
  toFun x := ⟨⟨x.1.1, (mem_product.mp x.2).1⟩, ⟨x.1.2, (mem_product.mp x.2).2⟩⟩
  invFun x := ⟨⟨x.1.1, x.2.1⟩, mem_product.mpr ⟨x.1.2, x.2.2⟩⟩
  left_inv _ := rfl
  right_inv _ := rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Prod/Variant505c84787039e799b0cd600a199f8904dfb2bb1c011ffa879b9817dd4c201f4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Prod/Variant505c84787039e799b0cd600a199f8904dfb2bb1c011ffa879b9817dd4c201f4d.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c436bcb7d33a63148e1395d7276f3328d99ff43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
