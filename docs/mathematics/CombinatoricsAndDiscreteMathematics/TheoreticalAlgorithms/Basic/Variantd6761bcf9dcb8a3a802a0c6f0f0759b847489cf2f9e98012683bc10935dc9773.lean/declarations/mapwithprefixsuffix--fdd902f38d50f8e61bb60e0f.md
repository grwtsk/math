# mapWithPrefixSuffix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e973e3478d4f87dd51f8077e1774f4295e1ac3b25ee34e73973d8068f48d16f9",
  "kind": "def",
  "lexical_name": "mapWithPrefixSuffix",
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
  "slug": "mapwithprefixsuffix--fdd902f38d50f8e61bb60e0f",
  "source": {
    "blob": "bcf49991f263cdec635073a6120ff920b3f2b1a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1022,
    "line": 1012,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd6761bcf9dcb8a3a802a0c6f0f0759b847489cf2f9e98012683bc10935dc9773.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fdd902f38d50f8e61bb60e0fc3abe4b87ea47faa0d33702209edefafeb461440",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd6761bcf9dcb8a3a802a0c6f0f0759b847489cf2f9e98012683bc10935dc9773.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e973e3478d4f87dd51f8077e1774f4295e1ac3b25ee34e73973d8068f48d16f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1012–1022.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapWithPrefixSuffix {α β} (f : List α → α → List α → β) (l : List α) : List β :=
  mapWithPrefixSuffixAux f [] l

/--
`List.mapWithComplement f l` is a variant of `List.mapWithPrefixSuffix`
that maps `f` across a list `l`.
For each `a ∈ l` with `l = pref ++ [a] ++ suff`, `a` is mapped to `f a (pref ++ suff)`,
i.e., the list input to `f` is `l` with `a` removed.
Example: if `f : Nat → list Nat → β`, `List.mapWithComplement f [1, 2, 3]` will produce the list
`[f 1 [2, 3], f 2 [1, 3], f 3 [1, 2]]`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd6761bcf9dcb8a3a802a0c6f0f0759b847489cf2f9e98012683bc10935dc9773.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd6761bcf9dcb8a3a802a0c6f0f0759b847489cf2f9e98012683bc10935dc9773.lean#L1012).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcf49991f263cdec635073a6120ff920b3f2b1a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
