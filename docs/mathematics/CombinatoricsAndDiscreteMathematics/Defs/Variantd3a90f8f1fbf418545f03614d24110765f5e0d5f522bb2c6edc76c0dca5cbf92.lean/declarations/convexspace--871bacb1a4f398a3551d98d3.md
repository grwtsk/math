# ConvexSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:44fa9561cada43a18146e12fbe90ba4a682a4ee8cd4a9e6c4d1335c98b05728a",
  "kind": "class",
  "lexical_name": "ConvexSpace",
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
  "slug": "convexspace--871bacb1a4f398a3551d98d3",
  "source": {
    "blob": "04c87a12e5801673221adb8bc4c459e05bab0220",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 415,
    "line": 384,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variantd3a90f8f1fbf418545f03614d24110765f5e0d5f522bb2c6edc76c0dca5cbf92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:871bacb1a4f398a3551d98d36491ef6128f340369556004abebae9c4908dce3f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Defs/Variantd3a90f8f1fbf418545f03614d24110765f5e0d5f522bb2c6edc76c0dca5cbf92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:44fa9561cada43a18146e12fbe90ba4a682a4ee8cd4a9e6c4d1335c98b05728a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 384–415.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class ConvexSpace (R : Type u) (X : Type v)
    [inst₁ : PartialOrder R] [inst₂ : Semiring R] [inst₃ : IsStrictOrderedRing R] where
  /-- Use `mk` instead. -/
  mk' ::
  /-- Take a convex combination with the given probability distribution over points. -/
  /- FIXME: Lean makes `inst₁`, `inst₂`, `inst₃` implicit by default, which renders `sConvexComb`
  unusable without these manual `[inst]` binders. Why is this so? Shouldn't typeclass arguments to
  a `structure` also be typeclass arguments to its fields? -/
  sConvexComb [inst₁] [inst₂] [inst₃] (f : StdSimplex R X) : X
  /-- A convex combination of a single point is that point. -/
  sConvexComb_single (x : X) : sConvexComb (.single x) = x
  /-- Associativity of convex combination (monadic join law).

  Use `sConvexComb_sConvexComb` instead. -/
  assoc (f : StdSimplex R (StdSimplex R X)) :
    sConvexComb (f.map sConvexComb) = sConvexComb f.join

open ConvexSpace StdSimplex

variable [PartialOrder R] [Semiring R] [IsStrictOrderedRing R]
  [ConvexSpace R X] [ConvexSpace R Y] [ConvexSpace R Z]

export ConvexSpace (sConvexComb sConvexComb_single)

attribute [simp] sConvexComb_single

@[deprecated (since := "2026-05-04")] alias ConvexSpace.convexCombination := sConvexComb

@[deprecated (since := "2026-05-04")]
alias ConvexSpace.convexCombination_single := sConvexComb_single

/-- Take a convex combination with the given weight distribution of an indexed family of points. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Defs/Variantd3a90f8f1fbf418545f03614d24110765f5e0d5f522bb2c6edc76c0dca5cbf92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variantd3a90f8f1fbf418545f03614d24110765f5e0d5f522bb2c6edc76c0dca5cbf92.lean#L384).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04c87a12e5801673221adb8bc4c459e05bab0220` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
