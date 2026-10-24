# RawShellPrefixCode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:15c072621c288640cf50a66384e5dfa65c6a8ff954b262a0ef18e65d99a0ca2c",
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
  "slug": "rawshellprefixcode--68acd495e7b2ac12f9c98141",
  "source": {
    "blob": "e8ca1b1143fb8c5e71226c2db770e9b721ee383f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 78,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ShellPrefixCode/Variant6e78f6ed1ecfe789a6b57250430118c10f0cdea8f222e474df188d10a5d3dcc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:68acd495e7b2ac12f9c98141b9e07f5ae1ff25c5e51d0274598fdfcdcf2a7f9a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ShellPrefixCode/Variant6e78f6ed1ecfe789a6b57250430118c10f0cdea8f222e474df188d10a5d3dcc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:15c072621c288640cf50a66384e5dfa65c6a8ff954b262a0ef18e65d99a0ca2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–94.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ShellPrefixCode/Variant6e78f6ed1ecfe789a6b57250430118c10f0cdea8f222e474df188d10a5d3dcc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ShellPrefixCode/Variant6e78f6ed1ecfe789a6b57250430118c10f0cdea8f222e474df188d10a5d3dcc3.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8ca1b1143fb8c5e71226c2db770e9b721ee383f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
