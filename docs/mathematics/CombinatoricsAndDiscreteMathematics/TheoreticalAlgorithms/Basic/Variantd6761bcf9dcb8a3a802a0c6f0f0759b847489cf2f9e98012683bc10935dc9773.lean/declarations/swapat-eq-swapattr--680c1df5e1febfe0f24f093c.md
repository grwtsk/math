# swapAt_eq_swapAtTR

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7689069e-1569-2cd3-e4a4-a80f02744ced",
  "kind": "theorem",
  "lexical_name": "swapAt_eq_swapAtTR",
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
  "slug": "swapat-eq-swapattr--680c1df5e1febfe0f24f093c",
  "source": {
    "blob": "bcf49991f263cdec635073a6120ff920b3f2b1a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1136,
    "line": 1127,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd6761bcf9dcb8a3a802a0c6f0f0759b847489cf2f9e98012683bc10935dc9773.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:680c1df5e1febfe0f24f093cba68dc55e5e71c1dc63b95f281f520e93c8aa5e0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd6761bcf9dcb8a3a802a0c6f0f0759b847489cf2f9e98012683bc10935dc9773.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7689069e-1569-2cd3-e4a4-a80f02744ced`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1127–1136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[csimp] theorem swapAt_eq_swapAtTR : @swapAt = @swapAtTR := by
  funext α xs i v
  let rec go : ∀ xs i (acc : Array α), swapAtTR.go (acc.toList ++ xs) v xs i acc =
        (xs[i]?.getD v, acc.toList ++ xs.set i v)
  | [], _, _ | _::_, 0, _ => by simp [swapAtTR.go]
  | a::xs, i+1, acc => by simpa [swapAtTR.go] using go xs i (acc.push a)
  exact (go xs i #[]).symm

/-- `l.swap i j` exchanges the elements at positions `i` and `j` of `l`.
If either index is out of bounds, `l` is returned unchanged. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd6761bcf9dcb8a3a802a0c6f0f0759b847489cf2f9e98012683bc10935dc9773.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd6761bcf9dcb8a3a802a0c6f0f0759b847489cf2f9e98012683bc10935dc9773.lean#L1127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcf49991f263cdec635073a6120ff920b3f2b1a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
