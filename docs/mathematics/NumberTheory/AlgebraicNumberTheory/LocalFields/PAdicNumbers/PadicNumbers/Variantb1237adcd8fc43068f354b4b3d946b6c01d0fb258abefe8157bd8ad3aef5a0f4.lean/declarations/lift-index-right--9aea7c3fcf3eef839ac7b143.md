# lift_index_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "79040472922216be2c0d66793e3b2a3965347e9c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 279,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b1/b1237adcd8fc43068f354b4b3d946b6c01d0fb258abefe8157bd8ad3aef5a0f4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c8c623f6-4f47-4bb6-8c66-49a4b9196a50",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f069e1b5-ef57-d83f-ad52-e520e8822ce8",
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
  "slug": "lift-index-right--9aea7c3fcf3eef839ac7b143",
  "source": {
    "blob": "79040472922216be2c0d66793e3b2a3965347e9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 279,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variantb1237adcd8fc43068f354b4b3d946b6c01d0fb258abefe8157bd8ad3aef5a0f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9aea7c3fcf3eef839ac7b143ccdc31b922759e122a9e5e584a300668c3439ea8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variantb1237adcd8fc43068f354b4b3d946b6c01d0fb258abefe8157bd8ad3aef5a0f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f069e1b5-ef57-d83f-ad52-e520e8822ce8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–300.

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

open scoped Classical in
/-- The `p`-adic valuation on `ℚ` lifts to `PadicSeq p`.
`Valuation f` is defined to be the valuation of the (`ℚ`-valued) stationary point of `f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variantb1237adcd8fc43068f354b4b3d946b6c01d0fb258abefe8157bd8ad3aef5a0f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variantb1237adcd8fc43068f354b4b3d946b6c01d0fb258abefe8157bd8ad3aef5a0f4.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79040472922216be2c0d66793e3b2a3965347e9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
