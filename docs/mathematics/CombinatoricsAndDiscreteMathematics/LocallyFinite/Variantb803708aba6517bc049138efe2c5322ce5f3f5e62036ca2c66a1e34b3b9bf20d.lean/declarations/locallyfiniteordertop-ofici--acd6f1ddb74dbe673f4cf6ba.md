# LocallyFiniteOrderTop.ofIci'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3ecdb5b9871a91dc72b2cdf61ed926e906ebafe19a565847161476a96af09a90",
  "kind": "def",
  "lexical_name": "LocallyFiniteOrderTop.ofIci'",
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
  "slug": "locallyfiniteordertop-ofici--acd6f1ddb74dbe673f4cf6ba",
  "source": {
    "blob": "85cee2cb0851fc43a44df6e83f34895cf214a5ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 209,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/LocallyFinite/Variantb803708aba6517bc049138efe2c5322ce5f3f5e62036ca2c66a1e34b3b9bf20d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:acd6f1ddb74dbe673f4cf6ba817d4cf3529cb433ac1a16e588d527d00b4f3d22",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/LocallyFinite/Variantb803708aba6517bc049138efe2c5322ce5f3f5e62036ca2c66a1e34b3b9bf20d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3ecdb5b9871a91dc72b2cdf61ed926e906ebafe19a565847161476a96af09a90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LocallyFiniteOrderTop.ofIci' (α : Type*) [Preorder α] [DecidableRel ((· ≤ ·) : α → α → Prop)]
    (finsetIci : α → Finset α) (mem_Ici : ∀ a x, x ∈ finsetIci a ↔ a ≤ x) :
    LocallyFiniteOrderTop α :=
  { finsetIci
    finsetIoi := fun a => (finsetIci a).filter fun x => ¬x ≤ a
    finset_mem_Ici := mem_Ici
    finset_mem_Ioi := fun a x => by rw [mem_filter, mem_Ici, lt_iff_le_not_le] }
#align locally_finite_order_top.of_Ici' LocallyFiniteOrderTop.ofIci'

/-- A constructor from a definition of `Finset.Iic` alone, the other ones being derived by removing
the ends. As opposed to `LocallyFiniteOrderTop.ofIci'`, this one requires `PartialOrder` but
only `DecidableEq`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/LocallyFinite/Variantb803708aba6517bc049138efe2c5322ce5f3f5e62036ca2c66a1e34b3b9bf20d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/LocallyFinite/Variantb803708aba6517bc049138efe2c5322ce5f3f5e62036ca2c66a1e34b3b9bf20d.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85cee2cb0851fc43a44df6e83f34895cf214a5ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
