# RawShellPrefixCode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:49d4c6f419d7d8edb7c85236bedd426962f896d5c7db8db23ac0a8994e8b9c50",
  "kind": "structure",
  "lexical_name": "RawShellPrefixCode",
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
  "slug": "rawshellprefixcode--9160331640a06c9aed6bbb8c",
  "source": {
    "blob": "bffec46a5ac6d504d203a975f171fe7b1b6f0881",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 70,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ShellPrefixCode/Variantb5f66e5ba6ca8ce9e2e4a4f5350efd2072a1f433e774e7d7ff28bb50b7158987.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9160331640a06c9aed6bbb8c12df0097950be23995b77925e96833838a7cd8d6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ShellPrefixCode/Variantb5f66e5ba6ca8ce9e2e4a4f5350efd2072a1f433e774e7d7ff28bb50b7158987.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:49d4c6f419d7d8edb7c85236bedd426962f896d5c7db8db23ac0a8994e8b9c50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RawShellPrefixCode (depth block x : ℕ) where
  intervals : Finset RawProductDyadicInterval
  contained : ∀ I ∈ intervals,
    block * 2 ^ depth ≤ I.lower ∧ I.upper ≤ x
  scale_le : ∀ I ∈ intervals, I.scale ≤ depth
  pairwise_disjoint :
    (↑intervals : Set RawProductDyadicInterval).PairwiseDisjoint
      RawProductDyadicInterval.carrier
  exact_cover :
    intervals.biUnion RawProductDyadicInterval.carrier =
      Finset.Ioc (block * 2 ^ depth) x
  card_le : intervals.card ≤ depth + 1

/-- Exact recursive binary decomposition.  The endpoint hypotheses say that
`x` lies in the closed dyadic window
`[block*2^depth,(block+1)*2^depth]`. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ShellPrefixCode/Variantb5f66e5ba6ca8ce9e2e4a4f5350efd2072a1f433e774e7d7ff28bb50b7158987.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ShellPrefixCode/Variantb5f66e5ba6ca8ce9e2e4a4f5350efd2072a1f433e774e7d7ff28bb50b7158987.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bffec46a5ac6d504d203a975f171fe7b1b6f0881` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
