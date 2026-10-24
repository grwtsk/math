# convexCombPair_iConvexComb_iConvexComb

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0847e16f-0369-7353-91e0-b8ccc00f4f6f",
  "kind": "lemma",
  "lexical_name": "convexCombPair_iConvexComb_iConvexComb",
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
  "slug": "convexcombpair-iconvexcomb-iconvexcomb--b7008cbf124ec5e51638f70a",
  "source": {
    "blob": "04c87a12e5801673221adb8bc4c459e05bab0220",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 718,
    "line": 706,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variantd3a90f8f1fbf418545f03614d24110765f5e0d5f522bb2c6edc76c0dca5cbf92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7008cbf124ec5e51638f70adafd0939b435bf1a62b74e3a11b19cbfccabac5d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Defs/Variantd3a90f8f1fbf418545f03614d24110765f5e0d5f522bb2c6edc76c0dca5cbf92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0847e16f-0369-7353-91e0-b8ccc00f4f6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 706–718.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma convexCombPair_iConvexComb_iConvexComb {J₁ : Type u₁} {J₂ : Type u₂}
    (g₁ : StdSimplex R J₁) (g₂ : StdSimplex R J₂)
    (m₁ : J₁ → X) (m₂ : J₂ → X) :
    convexCombPair s t hs ht h (g₁.iConvexComb m₁) (g₂.iConvexComb m₂) =
      (convexCombPair s t hs ht h (g₁.map m₁) (g₂.map m₂)).sConvexComb := by
  have := iConvexComb_assoc'' (I := Fin 2) (.duple 0 1 hs ht h)
    (J := ![ULift.{max u₁ u₂} J₁, ULift.{max u₁ u₂} J₂])
    (X := X) (Fin.cons (g₁.map ULift.up) (Fin.cons (g₂.map ULift.up) nofun))
    (Fin.cons (m₁ ∘ ULift.down) (Fin.cons (m₂ ∘ ULift.down) nofun))
  simp [iConvexComb, map_sConvexComb, map_map, Sigma.uncurry] at this
  simpa [convexCombPair, ← convexCombPair_def]

/-- Flattening with the inner combination specialized to `convexCombPair`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Defs/Variantd3a90f8f1fbf418545f03614d24110765f5e0d5f522bb2c6edc76c0dca5cbf92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variantd3a90f8f1fbf418545f03614d24110765f5e0d5f522bb2c6edc76c0dca5cbf92.lean#L706).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04c87a12e5801673221adb8bc4c459e05bab0220` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
