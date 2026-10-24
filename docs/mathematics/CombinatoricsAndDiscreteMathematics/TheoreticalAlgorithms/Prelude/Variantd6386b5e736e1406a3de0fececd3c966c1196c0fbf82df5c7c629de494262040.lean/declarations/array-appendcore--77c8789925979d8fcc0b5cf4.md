# Array.appendCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e84654d9b1f13b52b254660ee17d311833b89498163b5407493466190a33c8a1",
  "kind": "def",
  "lexical_name": "Array.appendCore",
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
  "slug": "array-appendcore--77c8789925979d8fcc0b5cf4",
  "source": {
    "blob": "a48bfcd7f182375f04a8fe3f19bf3e8424b106cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3409,
    "line": 3383,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prelude/Variantd6386b5e736e1406a3de0fececd3c966c1196c0fbf82df5c7c629de494262040.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:77c8789925979d8fcc0b5cf438fe72b060f2fdfa9387956fe7e33f7d5f20880b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prelude/Variantd6386b5e736e1406a3de0fececd3c966c1196c0fbf82df5c7c629de494262040.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e84654d9b1f13b52b254660ee17d311833b89498163b5407493466190a33c8a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3383–3409.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def Array.appendCore {α : Type u}  (as : Array α) (bs : Array α) : Array α :=
  let rec loop (i : Nat) (j : Nat) (as : Array α) : Array α :=
    dite (LT.lt j bs.size)
      (fun hlt =>
        match i with
        | 0           => as
        | Nat.succ i' => loop i' (hAdd j 1) (as.push (bs.getInternal j hlt)))
      (fun _ => as)
  loop bs.size 0 as

/--
Returns the slice of `as` from indices `start` to `stop` (exclusive). The resulting array has size
`(min stop as.size) - start`.

If `start` is greater or equal to `stop`, the result is empty. If `stop` is greater than the size of
`as`, the size is used instead.

Examples:
 * `#[0, 1, 2, 3, 4].extract 1 3 = #[1, 2]`
 * `#[0, 1, 2, 3, 4].extract 1 30 = #[1, 2, 3, 4]`
 * `#[0, 1, 2, 3, 4].extract 0 0 = #[]`
 * `#[0, 1, 2, 3, 4].extract 2 1 = #[]`
 * `#[0, 1, 2, 3, 4].extract 2 2 = #[]`
 * `#[0, 1, 2, 3, 4].extract 2 3 = #[2]`
 * `#[0, 1, 2, 3, 4].extract 2 4 = #[2, 3]`
-/
-- NOTE: used in the quotation elaborator output
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prelude/Variantd6386b5e736e1406a3de0fececd3c966c1196c0fbf82df5c7c629de494262040.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prelude/Variantd6386b5e736e1406a3de0fececd3c966c1196c0fbf82df5c7c629de494262040.lean#L3383).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a48bfcd7f182375f04a8fe3f19bf3e8424b106cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
