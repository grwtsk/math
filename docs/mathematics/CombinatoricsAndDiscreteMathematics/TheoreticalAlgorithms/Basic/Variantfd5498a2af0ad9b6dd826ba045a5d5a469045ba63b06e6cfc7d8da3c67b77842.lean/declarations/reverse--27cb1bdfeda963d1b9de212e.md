# reverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8f5c4a28b933010e71289bd4ec716ecb2de59a5667b2f06239fe31b2655a7ab7",
  "kind": "def",
  "lexical_name": "reverse",
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
  "slug": "reverse--27cb1bdfeda963d1b9de212e",
  "source": {
    "blob": "7eed7c0f2fb9fae918ce7b1d867ae342e5c6082c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1591,
    "line": 1559,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfd5498a2af0ad9b6dd826ba045a5d5a469045ba63b06e6cfc7d8da3c67b77842.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:27cb1bdfeda963d1b9de212e1bee093e624cbbb2cb15178a2293dcd3f76c0f97",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfd5498a2af0ad9b6dd826ba045a5d5a469045ba63b06e6cfc7d8da3c67b77842.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8f5c4a28b933010e71289bd4ec716ecb2de59a5667b2f06239fe31b2655a7ab7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1559–1591.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def reverse (as : Array α) : Array α :=
  if h : as.size ≤ 1 then
    as
  else
    loop as 0 ⟨as.size - 1, Nat.pred_lt (mt (fun h : as.size = 0 => h ▸ by decide) h)⟩
where
  termination {i j : Nat} (h : i < j) : j - 1 - (i + 1) < j - i := by
    rw [Nat.sub_sub, Nat.add_comm]
    exact Nat.lt_of_le_of_lt (Nat.pred_le _) (Nat.sub_succ_lt_self _ _ h)
  loop (as : Array α) (i : Nat) (j : Fin as.size) :=
    if h : i < j then
      have := termination h
      let as := as.swap i j (Nat.lt_trans h j.2)
      have : j-1 < as.size := by rw [size_swap]; exact Nat.lt_of_le_of_lt (Nat.pred_le _) j.2
      loop as (i+1) ⟨j-1, this⟩
    else
      as

/--
Returns the array of elements in `as` for which `p` returns `true`.

Only elements from `start` (inclusive) to `stop` (exclusive) are considered. Elements outside that
range are discarded. By default, the entire array is considered.

Examples:
* `#[1, 2, 5, 2, 7, 7].filter (· > 2) = #[5, 7, 7]`
* `#[1, 2, 5, 2, 7, 7].filter (fun _ => false) = #[]`
* `#[1, 2, 5, 2, 7, 7].filter (fun _ => true) = #[1, 2, 5, 2, 7, 7]`
* `#[1, 2, 5, 2, 7, 7].filter (· > 2) (start := 3) = #[7, 7]`
* `#[1, 2, 5, 2, 7, 7].filter (fun _ => true) (start := 3) = #[2, 7, 7]`
* `#[1, 2, 5, 2, 7, 7].filter (fun _ => true) (stop := 3) = #[1, 2, 5]`
-/
@[inline, expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfd5498a2af0ad9b6dd826ba045a5d5a469045ba63b06e6cfc7d8da3c67b77842.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfd5498a2af0ad9b6dd826ba045a5d5a469045ba63b06e6cfc7d8da3c67b77842.lean#L1559).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7eed7c0f2fb9fae918ce7b1d867ae342e5c6082c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
