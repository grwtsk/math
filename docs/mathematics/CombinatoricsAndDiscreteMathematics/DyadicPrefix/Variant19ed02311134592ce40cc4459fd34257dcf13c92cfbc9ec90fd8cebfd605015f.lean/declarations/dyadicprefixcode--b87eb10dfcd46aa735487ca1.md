# DyadicPrefixCode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aa004ecef5d93dd5fd0d93506a79dfbfc2642b13570ed5bd89d8e3b8ce8d9a87",
  "kind": "structure",
  "lexical_name": "DyadicPrefixCode",
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
  "slug": "dyadicprefixcode--b87eb10dfcd46aa735487ca1",
  "source": {
    "blob": "c22ec58542679bf1f2fe993ea664b9e750813b59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 75,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DyadicPrefix/Variant19ed02311134592ce40cc4459fd34257dcf13c92cfbc9ec90fd8cebfd605015f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b87eb10dfcd46aa735487ca16cceaa12f69b5572149d03f6f5a5e3a563842664",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DyadicPrefix/Variant19ed02311134592ce40cc4459fd34257dcf13c92cfbc9ec90fd8cebfd605015f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aa004ecef5d93dd5fd0d93506a79dfbfc2642b13570ed5bd89d8e3b8ce8d9a87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DyadicPrefixCode (N : ℕ) (x : Fin (2 * N + 1)) where
  Block : Type
  blockFintype : Fintype Block
  blockDecidableEq : DecidableEq Block
  interval : Block → DyadicInterval N
  incidence : Matrix (Fin (dyadicDepth N)) Block Bool
  blocks : Finset Block
  blocks_iff_native_bit : ∀ b,
    b ∈ blocks ↔ incidence (interval b).scale b = true
  selected_only_at_native_scale : ∀ r b,
    incidence r b = true → r = (interval b).scale
  pairwise_disjoint : Set.PairwiseDisjoint (↑blocks) (fun b ↦ (interval b).carrier)
  exact_prefix_cover :
    blocks.biUnion (fun b ↦ (interval b).carrier) = Finset.range (x.val + 1)
  card_le_depth : blocks.card ≤ dyadicDepth N

attribute [instance] DyadicPrefixCode.blockFintype
attribute [instance] DyadicPrefixCode.blockDecidableEq

/-- The Boolean matrix is exactly the typed incidence mask: a true entry is
at the block's native scale and selects that block. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DyadicPrefix/Variant19ed02311134592ce40cc4459fd34257dcf13c92cfbc9ec90fd8cebfd605015f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DyadicPrefix/Variant19ed02311134592ce40cc4459fd34257dcf13c92cfbc9ec90fd8cebfd605015f.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c22ec58542679bf1f2fe993ea664b9e750813b59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
