# card_higherOrderCubicalQuantizedField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0362f2f1-8f3d-4f88-93cd-d274998fc6e1",
  "kind": "theorem",
  "lexical_name": "card_higherOrderCubicalQuantizedField",
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
  "slug": "card-higherordercubicalquantizedfield--3c3d560b90a28a39948aa70e",
  "source": {
    "blob": "4afece44ab7f009fc4cffc5626cd357dddf94ab0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 529,
    "line": 450,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CubicalQuantization/Variant62ee6423f20ef6db7346a3ab4ca32a1f8fb2ae443a2f4580e457b77648e4e574.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c3d560b90a28a39948aa70e399d3ee8bdd62f29f11734f61e7ac5f5cfa299b2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CubicalQuantization/Variant62ee6423f20ef6db7346a3ab4ca32a1f8fb2ae443a2f4580e457b77648e4e574.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0362f2f1-8f3d-4f88-93cd-d274998fc6e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 450–529.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_higherOrderCubicalQuantizedField
    (decomposition : FiniteCubicalDecomposition)
    (profile : CubicalQuantizationProfile decomposition) :
    Fintype.card (HigherOrderCubicalQuantizedField decomposition profile) =
      2 ^ profile.representedBitCount := by
  let exponent := fun
      (k : Fin (profile.maximumEmittedDegree + 1))
      (cell : decomposition.Cell k.val) =>
    (profile.cellResolution k cell).value *
      profile.cellRows k cell * profile.cellColumns k cell
  have inner (k : Fin (profile.maximumEmittedDegree + 1)) :
      (∏ cell : decomposition.Cell k.val, 2 ^ exponent k cell) =
        2 ^ (∑ cell : decomposition.Cell k.val, exponent k cell) := by
    simpa only [Finset.mem_univ, true_implies] using
      (Finset.prod_pow_eq_pow_sum
        (Finset.univ : Finset (decomposition.Cell k.val))
        (exponent k) 2)
  have outer :
      (∏ k : Fin (profile.maximumEmittedDegree + 1),
        2 ^ (∑ cell : decomposition.Cell k.val, exponent k cell)) =
      2 ^ (∑ k : Fin (profile.maximumEmittedDegree + 1),
        ∑ cell : decomposition.Cell k.val, exponent k cell) := by
    simpa only [Finset.mem_univ, true_implies] using
      (Finset.prod_pow_eq_pow_sum
        (Finset.univ : Finset (Fin (profile.maximumEmittedDegree + 1)))
        (fun k => ∑ cell : decomposition.Cell k.val, exponent k cell) 2)
  change Fintype.card
      ((k : Fin (profile.maximumEmittedDegree + 1)) →
        (cell : decomposition.Cell k.val) →
          BitMatrix.QuantizedMatrix
            (profile.cellResolution k cell).value
            (profile.cellRows k cell)
            (profile.cellColumns k cell)) =
    2 ^ (∑ k : Fin (profile.maximumEmittedDegree + 1),
      ∑ cell : decomposition.Cell k.val, exponent k cell)
  calc
    Fintype.card
        ((k : Fin (profile.maximumEmittedDegree + 1)) →
          (cell : decomposition.Cell k.val) →
            BitMatrix.QuantizedMatrix
              (profile.cellResolution k cell).value
              (profile.cellRows k cell)
              (profile.cellColumns k cell)) =
        ∏ k : Fin (profile.maximumEmittedDegree + 1),
          Fintype.card
            ((cell : decomposition.Cell k.val) →
              BitMatrix.QuantizedMatrix
                (profile.cellResolution k cell).value
                (profile.cellRows k cell)
                (profile.cellColumns k cell)) := Fintype.card_pi
    _ = ∏ k : Fin (profile.maximumEmittedDegree + 1),
          2 ^ (∑ cell : decomposition.Cell k.val, exponent k cell) := by
      apply Finset.prod_congr rfl
      intro k _member
      calc
        Fintype.card
            ((cell : decomposition.Cell k.val) →
              BitMatrix.QuantizedMatrix
                (profile.cellResolution k cell).value
                (profile.cellRows k cell)
                (profile.cellColumns k cell)) =
            ∏ cell : decomposition.Cell k.val,
              Fintype.card
                (BitMatrix.QuantizedMatrix
                  (profile.cellResolution k cell).value
                  (profile.cellRows k cell)
                  (profile.cellColumns k cell)) := Fintype.card_pi
        _ = ∏ cell : decomposition.Cell k.val, 2 ^ exponent k cell := by
          apply Finset.prod_congr rfl
          intro cell _cellMember
          exact BitMatrix.card_quantizedMatrix
            (profile.cellResolution k cell).value
            (profile.cellRows k cell)
            (profile.cellColumns k cell)
        _ = 2 ^ (∑ cell : decomposition.Cell k.val, exponent k cell) :=
          inner k
    _ = 2 ^ (∑ k : Fin (profile.maximumEmittedDegree + 1),
          ∑ cell : decomposition.Cell k.val, exponent k cell) := outer

/-- How unequal face resolutions are related; none is inferred implicitly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CubicalQuantization/Variant62ee6423f20ef6db7346a3ab4ca32a1f8fb2ae443a2f4580e457b77648e4e574.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CubicalQuantization/Variant62ee6423f20ef6db7346a3ab4ca32a1f8fb2ae443a2f4580e457b77648e4e574.lean#L450).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4afece44ab7f009fc4cffc5626cd357dddf94ab0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
