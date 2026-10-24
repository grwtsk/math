# WeightedTheoremConfiguration

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cf43c8c6de99f8a7a61bdde24d0c63fb0b479499a912bda2985e5c544e777488",
  "kind": "structure",
  "lexical_name": "WeightedTheoremConfiguration",
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
  "slug": "weightedtheoremconfiguration--cfa33b3acdcdccf5f3ad28fa",
  "source": {
    "blob": "7d4f18260897909407af939a7ce6e58c41b7a199",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 75,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoremBarycenter/Variant9522e4025a5d511b6a0b8626433c78ee496ac2ba57155bb8751b00272fd5e598.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cfa33b3acdcdccf5f3ad28fa2c2bbf153bbfd2199872b3ae4206356d2c8020f6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoremBarycenter/Variant9522e4025a5d511b6a0b8626433c78ee496ac2ba57155bb8751b00272fd5e598.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cf43c8c6de99f8a7a61bdde24d0c63fb0b479499a912bda2985e5c544e777488`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure WeightedTheoremConfiguration (X : Type*) (count : Nat) where
  theoremDenotation : Fin count → TheoremDenotation X
  theoremOccurrence : Fin count → TheoremOccurrence
  point : Fin count → X
  theoremOccurrenceExact : ∀ index,
    theoremOccurrence index = (theoremDenotation index).occurrence
  pointExact : ∀ index, point index = (theoremDenotation index).point
  weight : Fin count → ℝ
  weightNonnegative : ∀ index, 0 ≤ weight index
  normalized : ∑ index, weight index = 1

/-- Finite Fréchet functional. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoremBarycenter/Variant9522e4025a5d511b6a0b8626433c78ee496ac2ba57155bb8751b00272fd5e598.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoremBarycenter/Variant9522e4025a5d511b6a0b8626433c78ee496ac2ba57155bb8751b00272fd5e598.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d4f18260897909407af939a7ce6e58c41b7a199` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
