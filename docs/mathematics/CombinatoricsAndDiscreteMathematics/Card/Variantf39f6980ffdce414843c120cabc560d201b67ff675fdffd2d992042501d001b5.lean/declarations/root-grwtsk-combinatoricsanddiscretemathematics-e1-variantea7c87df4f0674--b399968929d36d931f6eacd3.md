# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.E1.Variantea7c87df4f0674d93dccc285f56c6d202ebffbf0ae6c79744def13f3d3fd3866.Finset.card_sym2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e13111d-4438-e277-ab3d-aecafbca1aaf",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.E1.Variantea7c87df4f0674d93dccc285f56c6d202ebffbf0ae6c79744def13f3d3fd3866.Finset.card_sym2",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-e1-variantea7c87df4f0674--b399968929d36d931f6eacd3",
  "source": {
    "blob": "494f42dbdcb9464e0acb42af3c0667fc42bf0322",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 202,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variantf39f6980ffdce414843c120cabc560d201b67ff675fdffd2d992042501d001b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b399968929d36d931f6eacd34eace3628b479ff79ad05244b36f22728e1c0b79",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Card/Variantf39f6980ffdce414843c120cabc560d201b67ff675fdffd2d992042501d001b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e13111d-4438-e277-ab3d-aecafbca1aaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.E1.Variantea7c87df4f0674d93dccc285f56c6d202ebffbf0ae6c79744def13f3d3fd3866.Finset.card_sym2 (s : Finset α) : s.sym2.card = s.card * (s.card + 1) / 2 := by
  rw [← image_diag_union_image_offDiag, card_union_eq, Sym2.card_image_diag,
    Sym2.card_image_offDiag, Nat.choose_two_right, add_comm, ← Nat.triangle_succ, Nat.succ_sub_one,
    mul_comm]
  rw [disjoint_left]
  rintro m ha hb
  rw [mem_image] at ha hb
  obtain ⟨⟨a, ha, rfl⟩, ⟨b, hb, hab⟩⟩ := ha, hb
  refine' not_isDiag_mk'_of_mem_offDiag hb _
  dsimp [Quotient.mk'] at hab -- Porting note: Added `dsimp`
  rw [hab]
  exact isDiag_mk'_of_mem_diag ha
#align finset.card_sym2 Finset.card_sym2

/-- Type **stars and bars** for the case `n = 2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Card/Variantf39f6980ffdce414843c120cabc560d201b67ff675fdffd2d992042501d001b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variantf39f6980ffdce414843c120cabc560d201b67ff675fdffd2d992042501d001b5.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `494f42dbdcb9464e0acb42af3c0667fc42bf0322` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
