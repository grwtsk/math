# negative_one_has_positive_shift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:04460a19-d2f4-8e54-2602-abd3c9c0ce82",
  "kind": "theorem",
  "lexical_name": "negative_one_has_positive_shift",
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
  "slug": "negative-one-has-positive-shift--bab8c219a225b88d8f74cbe1",
  "source": {
    "blob": "c37145a941506bbff7fc5caa170e9fb5548a0712",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 100,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt02/Variantd9d7d3ec527d3ba2ec51dd5a42e5d7a72b0ec30bcee5f5bba4a4237d7a45ac1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bab8c219a225b88d8f74cbe12d464eb19b804f6e92d4e122b3b6e701cea1f1bc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt02/Variantd9d7d3ec527d3ba2ec51dd5a42e5d7a72b0ec30bcee5f5bba4a4237d7a45ac1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04460a19-d2f4-8e54-2602-abd3c9c0ce82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem negative_one_has_positive_shift :
    (shifted (- (1 : Matrix (Fin 1) (Fin 1) ℝ)) (-2)).PosSemidef := by
  rw [negative_one_shifted_by_negative_two]
  convert (posSemidef_diagonal_iff.mpr (fun _ : Fin 1 => (show (0:ℝ) ≤ 1 by norm_num))) using 1
  simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt02/Variantd9d7d3ec527d3ba2ec51dd5a42e5d7a72b0ec30bcee5f5bba4a4237d7a45ac1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt02/Variantd9d7d3ec527d3ba2ec51dd5a42e5d7a72b0ec30bcee5f5bba4a4237d7a45ac1d.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c37145a941506bbff7fc5caa170e9fb5548a0712` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
