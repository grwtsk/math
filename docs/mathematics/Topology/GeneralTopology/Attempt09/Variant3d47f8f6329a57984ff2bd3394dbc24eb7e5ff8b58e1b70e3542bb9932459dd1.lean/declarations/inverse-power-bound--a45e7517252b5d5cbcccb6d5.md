# inverse_power_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:850e65e7-5e80-8676-777b-65cb6aebc9a2",
  "kind": "theorem",
  "lexical_name": "inverse_power_bound",
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
  "slug": "inverse-power-bound--a45e7517252b5d5cbcccb6d5",
  "source": {
    "blob": "2d30321055c5d9b99797af77b10aadbe1332c607",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 125,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt09/Variant3d47f8f6329a57984ff2bd3394dbc24eb7e5ff8b58e1b70e3542bb9932459dd1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a45e7517252b5d5cbcccb6d5f9dc7b61f171b16c8391b08772496ada8c5752e6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt09/Variant3d47f8f6329a57984ff2bd3394dbc24eb7e5ff8b58e1b70e3542bb9932459dd1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:850e65e7-5e80-8676-777b-65cb6aebc9a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inverse_power_bound {A delta : ℝ} (hA : 1 ≤ A) (hdelta : 0 < delta)
    {z : ℂ} (hz : delta ≤ z.re) (n : ℕ) (hn : n ≠ 0) :
    ‖(1 : ℂ)/((A : ℂ)*z)^n‖ ≤ (1/delta^n)/A := by
  have hp : 0 < A := by linarith
  have hzN : delta ≤ ‖z‖ := hz.trans (Complex.re_le_norm z)
  rw [norm_div,norm_one,norm_pow,norm_mul,Complex.norm_real,
    Real.norm_eq_abs,abs_of_pos hp]
  calc
    _ ≤ 1/(A*delta)^n := by gcongr
    _ = (1/delta^n)/A^n := by ring
    _ ≤ (1/delta^n)/A := by
      apply div_le_div_of_nonneg_left
      · positivity
      · exact hp
      · exact le_self_pow₀ hA hn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt09/Variant3d47f8f6329a57984ff2bd3394dbc24eb7e5ff8b58e1b70e3542bb9932459dd1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt09/Variant3d47f8f6329a57984ff2bd3394dbc24eb7e5ff8b58e1b70e3542bb9932459dd1.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d30321055c5d9b99797af77b10aadbe1332c607` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
