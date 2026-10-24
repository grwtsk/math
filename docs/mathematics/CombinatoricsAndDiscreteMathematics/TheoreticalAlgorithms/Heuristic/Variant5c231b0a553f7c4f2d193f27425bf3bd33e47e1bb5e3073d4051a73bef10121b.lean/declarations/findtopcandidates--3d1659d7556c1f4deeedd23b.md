# findTopCandidates

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a54545c8fcc3a21d839b406b411fccff3f3c14962d20436c651b7fddeccaf68e",
  "kind": "def",
  "lexical_name": "findTopCandidates",
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
  "slug": "findtopcandidates--3d1659d7556c1f4deeedd23b",
  "source": {
    "blob": "e2e38d8c95b7e1d7540459ea61f3bee546aca038",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 165,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant5c231b0a553f7c4f2d193f27425bf3bd33e47e1bb5e3073d4051a73bef10121b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3d1659d7556c1f4deeedd23b734587970839f6276cf3ff335ccb3a86bb43f903",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant5c231b0a553f7c4f2d193f27425bf3bd33e47e1bb5e3073d4051a73bef10121b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a54545c8fcc3a21d839b406b411fccff3f3c14962d20436c651b7fddeccaf68e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def findTopCandidates (e : Expr) (B : Box) (samples : Nat := 100) (k : Nat := 5)
    (seed : Nat := 12345) : Array ((Nat → Float) × Float) :=
  let fb := boxToFloatBox B
  let startPt := fb.center
  let startVal := evalFloat e startPt

  -- Collect all samples with their values
  let rec collectSamples (i : Nat) (rng : PRNG) (acc : Array ((Nat → Float) × Float)) :
      Array ((Nat → Float) × Float) :=
    match i with
    | 0 => acc
    | n + 1 =>
      let (pt, rng') := samplePoint fb rng
      let val := evalFloat e pt
      collectSamples n rng' (acc.push (pt, val))

  let allSamples := collectSamples samples (PRNG.new seed) #[(startPt, startVal)]

  -- Sort by value and take top k
  let sorted := allSamples.qsort (fun a b => a.2 < b.2)
  sorted.extract 0 k

/-! ### Grid Search -/

/--
Uniform grid search over a box.
Samples a regular grid with `pointsPerDim` points along each dimension.
Total samples = pointsPerDim^dim, so use sparingly for high dimensions.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant5c231b0a553f7c4f2d193f27425bf3bd33e47e1bb5e3073d4051a73bef10121b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant5c231b0a553f7c4f2d193f27425bf3bd33e47e1bb5e3073d4051a73bef10121b.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2e38d8c95b7e1d7540459ea61f3bee546aca038` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
