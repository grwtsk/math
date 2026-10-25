# modEq_and_modEq_iff_modEq_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9ff46cd3-b90b-c61d-c2d0-85ae64f6ee09",
  "kind": "theorem",
  "lexical_name": "modEq_and_modEq_iff_modEq_mul",
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
  "slug": "modeq-and-modeq-iff-modeq-mul--2671dca2cbc94f41c76c8dda",
  "source": {
    "blob": "20eba0dd8c82ba864919d993fb08f2597dbf4e1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 275,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantf4bd8e9339e62ab3bdda59ee628d55e2bce093f8818303736c3d81aa39a03676.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2671dca2cbc94f41c76c8ddadc722b0b0817a877a667e10787a8869d8e9716d7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantf4bd8e9339e62ab3bdda59ee628d55e2bce093f8818303736c3d81aa39a03676.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ff46cd3-b90b-c61d-c2d0-85ae64f6ee09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem modEq_and_modEq_iff_modEq_mul {a b m n : ℤ} (hmn : m.natAbs.coprime n.natAbs) :
    a ≡ b [ZMOD m] ∧ a ≡ b [ZMOD n] ↔ a ≡ b [ZMOD m * n] :=
  ⟨fun h => by
    rw [modEq_iff_dvd, modEq_iff_dvd] at h
    rw [modEq_iff_dvd, ← natAbs_dvd, ← dvd_natAbs, coe_nat_dvd, natAbs_mul]
    refine' hmn.mul_dvd_of_dvd_of_dvd _ _ <;> rw [← coe_nat_dvd, natAbs_dvd, dvd_natAbs] <;>
      tauto,
    fun h => ⟨h.of_mul_right _, h.of_mul_left _⟩⟩
#align int.modeq_and_modeq_iff_modeq_mul Int.modEq_and_modEq_iff_modEq_mul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantf4bd8e9339e62ab3bdda59ee628d55e2bce093f8818303736c3d81aa39a03676.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantf4bd8e9339e62ab3bdda59ee628d55e2bce093f8818303736c3d81aa39a03676.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20eba0dd8c82ba864919d993fb08f2597dbf4e1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
