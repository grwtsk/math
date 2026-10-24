# lift_index_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c8507fe0-7732-e064-0bbf-6798b8a6dcc4",
  "kind": "theorem",
  "lexical_name": "lift_index_right",
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
  "slug": "lift-index-right--3c33642cb3c101e1d0dd95db",
  "source": {
    "blob": "bc762418499a1532c1be504ff419be8e8d132d83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 185,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant6c9a2c3e2cf4c95fd8925264549966ab992a48b8250f0af9fdfeef19d4f4f0f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c33642cb3c101e1d0dd95db23d2c1e80dd4c71abb51d285307599945e6e84ef",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant6c9a2c3e2cf4c95fd8925264549966ab992a48b8250f0af9fdfeef19d4f4f0f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8507fe0-7732-e064-0bbf-6798b8a6dcc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_index_right {f : PadicSeq p} (hf : ¬f ≈ 0) (v1 v2 : ℕ) :
    padicNorm p (f (stationaryPoint hf)) =
    padicNorm p (f (max v1 (max v2 (stationaryPoint hf)))) := by
  apply stationaryPoint_spec hf
  · apply le_trans
    · apply le_max_right v2
    · apply le_max_right
  · exact le_rfl

end Embedding

section Valuation

open CauSeq

variable {p : ℕ} [Fact p.Prime]

/-! ### Valuation on `PadicSeq` -/

open Classical in
/-- The `p`-adic valuation on `ℚ` lifts to `PadicSeq p`.
`Valuation f` is defined to be the valuation of the (`ℚ`-valued) stationary point of `f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant6c9a2c3e2cf4c95fd8925264549966ab992a48b8250f0af9fdfeef19d4f4f0f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant6c9a2c3e2cf4c95fd8925264549966ab992a48b8250f0af9fdfeef19d4f4f0f2.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc762418499a1532c1be504ff419be8e8d132d83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
