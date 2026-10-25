# le_iff_eq_sup_sdiff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c8dac25b-ecd5-1c7c-7a18-bd7ca947f03e",
  "kind": "theorem",
  "lexical_name": "le_iff_eq_sup_sdiff",
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
  "slug": "le-iff-eq-sup-sdiff--c791cd7def8dd15f05148c60",
  "source": {
    "blob": "a3be4e5ce2ad069071f651558c8022868f192d6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 252,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanAlgebra/Variant4bc6d2b571151e25c9cafc4616740a5336ed2eed7226574a6c3045116fce21c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c791cd7def8dd15f05148c60a03eefb727799137d7025f418c39780ffc4f4e59",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanAlgebra/Variant4bc6d2b571151e25c9cafc4616740a5336ed2eed7226574a6c3045116fce21c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8dac25b-ecd5-1c7c-7a18-bd7ca947f03e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_iff_eq_sup_sdiff (hz : z ≤ y) (hx : x ≤ y) : x ≤ z ↔ y = z ⊔ y \ x :=
  ⟨fun H => by
    apply le_antisymm
    · conv_lhs => rw [← sup_inf_sdiff y x]
      apply sup_le_sup_right
      rwa [inf_eq_right.2 hx]
    · apply le_trans
      · apply sup_le_sup_right hz
      · rw [sup_sdiff_left],
    fun H => by
    conv_lhs at H => rw [← sup_sdiff_cancel_right hx]
    refine le_of_inf_le_sup_le ?_ H.le
    rw [inf_sdiff_self_right]
    exact bot_le⟩

-- cf. `IsCompl.sup_inf`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanAlgebra/Variant4bc6d2b571151e25c9cafc4616740a5336ed2eed7226574a6c3045116fce21c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanAlgebra/Variant4bc6d2b571151e25c9cafc4616740a5336ed2eed7226574a6c3045116fce21c6.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3be4e5ce2ad069071f651558c8022868f192d6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
