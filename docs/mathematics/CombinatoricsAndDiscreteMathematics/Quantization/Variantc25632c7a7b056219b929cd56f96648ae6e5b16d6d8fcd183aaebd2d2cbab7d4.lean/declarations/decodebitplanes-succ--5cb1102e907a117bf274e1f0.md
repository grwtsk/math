# decodeBitPlanes_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:08983edb-cab5-a4b5-b775-e2708ccc831f",
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
  "slug": "decodebitplanes-succ--5cb1102e907a117bf274e1f0",
  "source": {
    "blob": "e2ae163336eb522ead3f0c496540e380e30249d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 490,
    "line": 475,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5cb1102e907a117bf274e1f0525475e2c0342271fce0434740397f95c025ced5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08983edb-cab5-a4b5-b775-e2708ccc831f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 475–490.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean#L475).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2ae163336eb522ead3f0c496540e380e30249d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
