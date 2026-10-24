# flatMapM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5cc221b06110c4a003ce7790cd6b8b23fc99bd1c60722f941e6a295f60efa89b",
  "kind": "def",
  "lexical_name": "flatMapM",
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
  "slug": "flatmapm--f83e32e1feb9ec08cde305be",
  "source": {
    "blob": "a58ae05876cec668e0413124b4338e74a109dcf6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 266,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd2b5e00d72b2cc1db9b2aece6254c114b3ca6107d03db2e67dff08fd04f20aa3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f83e32e1feb9ec08cde305be481b883d7e1c12b358784c846985cfa7a942bc46",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd2b5e00d72b2cc1db9b2aece6254c114b3ca6107d03db2e67dff08fd04f20aa3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5cc221b06110c4a003ce7790cd6b8b23fc99bd1c60722f941e6a295f60efa89b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] def flatMapM [Monad m] (xs : Vector α n) (f : α → m (Vector β k)) : m (Vector β (n * k)) := do
  go 0 (Nat.zero_le n) (#v[].cast (by omega))
where
  go (i : Nat) (h : i ≤ n) (acc : Vector β (i * k)) : m (Vector β (n * k)) := do
    if h' : i < n then
      go (i+1) (by omega) ((acc ++ (← f xs[i])).cast (Nat.succ_mul i k).symm)
    else
      return acc.cast (by congr; omega)

/-- Variant of `mapIdxM` which receives the index `i` along with the bound `i < n. -/
@[inline, expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd2b5e00d72b2cc1db9b2aece6254c114b3ca6107d03db2e67dff08fd04f20aa3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd2b5e00d72b2cc1db9b2aece6254c114b3ca6107d03db2e67dff08fd04f20aa3.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a58ae05876cec668e0413124b4338e74a109dcf6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
