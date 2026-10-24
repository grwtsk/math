# eigenvalue_le_iff_angle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f454c17-2bac-0f4d-55af-22d3f0ad60c2",
  "kind": "theorem",
  "lexical_name": "eigenvalue_le_iff_angle",
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
  "slug": "eigenvalue-le-iff-angle--e0b191a9cf50ec1b062dc7ec",
  "source": {
    "blob": "c343a7fcc959f20cd8c08ab7e51fbbe269360adc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 25,
    "path": "GRWTSK/Analysis/OperatorTheory/SpectralTheory/FreeIDS.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0b191a9cf50ec1b062dc7ecaabda2e1a2e3132be6e6cf6dbec2bc78e9d9730a",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/SpectralTheory/FreeIDS__SourceOccurrencea389a8439b1af31bf793061e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f454c17-2bac-0f4d-55af-22d3f0ad60c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eigenvalue_le_iff_angle (N : ℕ) (k : Fin N) (E : ℝ) :
    eigenvalue N k ≤ E ↔ Real.arccos (E/2) ≤ angle N k := by
  by_cases hlo : E ≤ -2
  · have har : Real.arccos (E/2) = Real.pi := Real.arccos_eq_pi.mpr (by linarith)
    have hc := Real.strictAntiOn_cos
      ⟨(angle_pos N k).le, (angle_lt_pi N k).le⟩
      ⟨Real.pi_pos.le, le_rfl⟩ (angle_lt_pi N k)
    simp only [Real.cos_pi] at hc
    rw [har]
    unfold eigenvalue
    constructor <;> intro h <;> nlinarith [angle_lt_pi N k]
  · by_cases hhi : 2 ≤ E
    · have har : Real.arccos (E/2) = 0 := Real.arccos_eq_zero.mpr (by linarith)
      rw [har]
      unfold eigenvalue
      constructor
      · intro _; exact (angle_pos N k).le
      · intro _; nlinarith [Real.cos_le_one (angle N k)]
    · have hcos := Real.cos_arccos (x := E/2) (by linarith) (by linarith)
      have hc := Real.strictAntiOn_cos.le_iff_ge
        ⟨(angle_pos N k).le, (angle_lt_pi N k).le⟩
        ⟨Real.arccos_nonneg (E/2), Real.arccos_le_pi (E/2)⟩
      rw [hcos] at hc
      unfold eigenvalue
      constructor
      · intro h; apply hc.mp; linarith
      · intro h; have := hc.mpr h; linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/OperatorTheory/SpectralTheory/FreeIDS__SourceOccurrencea389a8439b1af31bf793061e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/OperatorTheory/SpectralTheory/FreeIDS.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c343a7fcc959f20cd8c08ab7e51fbbe269360adc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
