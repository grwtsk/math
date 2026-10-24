# decodeBitPlanes_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:73fe1f1f-71b4-1d31-f5eb-9abdee6b3db1",
  "kind": "theorem",
  "lexical_name": "decodeBitPlanes_succ",
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
  "slug": "decodebitplanes-succ--aa1c37e38d05135de343daa6",
  "source": {
    "blob": "faebb625c94eeebc422a3c41d6b9eaa931d22365",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 81,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/FiniteSimplexGammaAndObservation/Variantd3ce1df042ea2552/LittleEndianBitPlaneCorrespondence.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa1c37e38d05135de343daa67c11b2f2cfc737495ebb3f27aea6696e1a45f765",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/FiniteSimplexGammaAndObservation/Variantd3ce1df042ea2552/LittleEndianBitPlaneCorrespondence.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73fe1f1f-71b4-1d31-f5eb-9abdee6b3db1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem decodeBitPlanes_succ
    (q : QuantizedMatrix (bits + 1) rows columns)
    (row : Fin rows)
    (column : Fin columns) :
    decodeBitPlanes q row column =
      (if q 0 row column then 1 else 0) +
        2 * decodeBitPlanes (fun plane => q plane.succ) row column := by
  simp only [decodeBitPlanes, Fin.sum_univ_succ, Fin.val_zero, pow_zero,
    Fin.val_succ, pow_succ]
  rw [Finset.mul_sum]
  apply congrArg ((if q 0 row column then 1 else 0) + ·)
  apply Finset.sum_congr rfl
  intro plane _
  split <;> simp [Nat.mul_comm]

/-- The explicit weighted sum agrees with Batteries' little-endian `ofBits`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/FiniteSimplexGammaAndObservation/Variantd3ce1df042ea2552/LittleEndianBitPlaneCorrespondence.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/FiniteSimplexGammaAndObservation/Variantd3ce1df042ea2552/LittleEndianBitPlaneCorrespondence.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `faebb625c94eeebc422a3c41d6b9eaa931d22365` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
