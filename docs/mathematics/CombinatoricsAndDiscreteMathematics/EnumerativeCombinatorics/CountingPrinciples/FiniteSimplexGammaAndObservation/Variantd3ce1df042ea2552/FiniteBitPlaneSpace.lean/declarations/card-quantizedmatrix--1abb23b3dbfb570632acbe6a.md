# card_quantizedMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:87355d28-5cf7-7fb9-e41d-ecd56130b1cf",
  "kind": "theorem",
  "lexical_name": "card_quantizedMatrix",
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
  "slug": "card-quantizedmatrix--1abb23b3dbfb570632acbe6a",
  "source": {
    "blob": "9f4527ecc4f2800f7e3a02e9d985f62a2607d64a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 80,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/FiniteSimplexGammaAndObservation/Variantd3ce1df042ea2552/FiniteBitPlaneSpace.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1abb23b3dbfb570632acbe6a99a7b0af15cf353cbe805a2892a30ddc94a17166",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/FiniteSimplexGammaAndObservation/Variantd3ce1df042ea2552/FiniteBitPlaneSpace.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87355d28-5cf7-7fb9-e41d-ecd56130b1cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_quantizedMatrix
    (bits rows columns : Nat) :
    Fintype.card (QuantizedMatrix bits rows columns) =
      2 ^ (bits * rows * columns) := by
  calc
    Fintype.card (QuantizedMatrix bits rows columns) =
        Fintype.card (BitMatrix rows columns) ^ bits := by
      change Fintype.card (Fin bits → BitMatrix rows columns) = _
      rw [Fintype.card_fun]
      simp
    _ = (2 ^ (rows * columns)) ^ bits := by
      exact congrArg (fun cardinality : Nat => cardinality ^ bits)
        (Quantizer.card_bitMatrix rows columns)
    _ = 2 ^ ((rows * columns) * bits) := by
      exact (Nat.pow_mul 2 (rows * columns) bits).symm
    _ = 2 ^ (bits * rows * columns) := by
      congr 1
      ac_rfl

end BitMatrix
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/FiniteSimplexGammaAndObservation/Variantd3ce1df042ea2552/FiniteBitPlaneSpace.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/FiniteSimplexGammaAndObservation/Variantd3ce1df042ea2552/FiniteBitPlaneSpace.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f4527ecc4f2800f7e3a02e9d985f62a2607d64a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
