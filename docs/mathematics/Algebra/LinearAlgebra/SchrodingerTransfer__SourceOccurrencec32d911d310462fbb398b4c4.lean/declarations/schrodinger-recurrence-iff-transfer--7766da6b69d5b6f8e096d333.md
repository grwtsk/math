# schrodinger_recurrence_iff_transfer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c1a79f75-346b-084d-fb14-1067569ee9e7",
  "kind": "theorem",
  "lexical_name": "schrodinger_recurrence_iff_transfer",
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
  "slug": "schrodinger-recurrence-iff-transfer--7766da6b69d5b6f8e096d333",
  "source": {
    "blob": "ff6b73545cb92a4bc48a99962c3f58695f6d545e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 52,
    "path": "GRWTSK/Algebra/LinearAlgebra/SchrodingerTransfer.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7766da6b69d5b6f8e096d333ceddf7ff961afcdf95deaeae772e6445e469ce0b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SchrodingerTransfer__SourceOccurrencec32d911d310462fbb398b4c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1a79f75-346b-084d-fb14-1067569ee9e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem schrodinger_recurrence_iff_transfer {R : Type u} [CommRing R]
    (E V previous current next : R) :
    next + previous + V * current = E * current ↔
      rawState next current = (schrodingerTransfer E V).mulVec (rawState current previous) := by
  have hcoord : (schrodingerTransfer E V).mulVec (rawState current previous) =
      rawState ((E - V) * current - previous) current := by
    ext i
    fin_cases i <;> simp [schrodingerTransfer, rawState, Matrix.mulVec, dotProduct,
      Fin.sum_univ_two]
    all_goals ring
  rw [hcoord]
  constructor
  · intro h
    have hnext : next = (E - V) * current - previous := by
      linear_combination h
    rw [hnext]
  · intro h
    have hnext := congrFun h 0
    simp only [rawState, Matrix.cons_val_zero] at hnext
    rw [hnext]
    ring



/-- The Schrödinger transfer is determinant one over any commutative ring. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LinearAlgebra/SchrodingerTransfer__SourceOccurrencec32d911d310462fbb398b4c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SchrodingerTransfer.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff6b73545cb92a4bc48a99962c3f58695f6d545e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
