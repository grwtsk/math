# eraseRepsBy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c96a394b4f6509170df432c43536c95536c91134649864c533c8ede7b935c482",
  "kind": "def",
  "lexical_name": "eraseRepsBy",
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
  "slug": "eraserepsby--e73eb5c593a66921bfb5b3da",
  "source": {
    "blob": "aa5e35378b6eab59b08beb521645cfe03fd1cd30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2336,
    "line": 2317,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd3b7b17ebd20cc09d7db5e34dcd303490838683e5a66bfb56b57818f5f04150c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e73eb5c593a66921bfb5b3da718797c34ee5f114e50959ea438349dfb226a6f5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd3b7b17ebd20cc09d7db5e34dcd303490838683e5a66bfb56b57818f5f04150c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c96a394b4f6509170df432c43536c95536c91134649864c533c8ede7b935c482`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2317–2336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def eraseRepsBy {α} (r : α → α → Bool) : List α → List α
  | []    => []
  | a::as => loop a as []
where
  loop : α → List α → List α → List α
  | a, [], acc => (a::acc).reverse
  | a, a'::as, acc => match r a a' with
    | true  => loop a as acc
    | false => loop a' as (a::acc)

/-! ### eraseReps -/

/--
Erases repeated elements, keeping the first element of each run.

`O(|l|)`.

Example:
* `[1, 3, 2, 2, 2, 3, 3, 5].eraseReps = [1, 3, 2, 3, 5]`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd3b7b17ebd20cc09d7db5e34dcd303490838683e5a66bfb56b57818f5f04150c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd3b7b17ebd20cc09d7db5e34dcd303490838683e5a66bfb56b57818f5f04150c.lean#L2317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa5e35378b6eab59b08beb521645cfe03fd1cd30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
