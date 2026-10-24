# coe_isUnit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a5d319c-93cd-9a11-5870-f488cc8be909",
  "kind": "lemma",
  "lexical_name": "coe_isUnit",
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
  "slug": "coe-isunit--f540cc7ac274dbb2e4a10056",
  "source": {
    "blob": "f5a9603fbf1f74769e0c3ea58cc75febad5722c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 212,
    "path": "GRWTSK/Topology/GeneralTopology/Spectrum/Variant22a8cfd2c011b998def47fa0b780aa52cf966406749db669f5e421de31a95ddf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f540cc7ac274dbb2e4a10056bf2447936dea78d3f4467da6203aeb1bc73984c6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Spectrum/Variant22a8cfd2c011b998def47fa0b780aa52cf966406749db669f5e421de31a95ddf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a5d319c-93cd-9a11-5870-f488cc8be909`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coe_isUnit {a : S} : IsUnit (a : A) ↔ IsUnit a := by
  refine ⟨fun ha ↦ ?_, IsUnit.map S.subtype⟩
  have ha₁ := ha.star.mul ha
  have ha₂ := ha.mul ha.star
  have spec_eq {x : S} (hx : IsSelfAdjoint x) : spectrum ℂ x = spectrum ℂ (x : A) :=
    Subalgebra.spectrum_eq_of_isPreconnected_compl S _ <|
      (hx.map S.subtype).isConnected_spectrum_compl.isPreconnected
  rw [← StarMemClass.coe_star, ← MulMemClass.coe_mul, ← spectrum.zero_notMem_iff ℂ, ← spec_eq,
    spectrum.zero_notMem_iff] at ha₁ ha₂
  · have h₁ : ha₁.unit⁻¹ * star a * a = 1 := mul_assoc _ _ a ▸ ha₁.val_inv_mul
    have h₂ : a * (star a * ha₂.unit⁻¹) = 1 := (mul_assoc a _ _).symm ▸ ha₂.mul_val_inv
    exact ⟨⟨a, ha₁.unit⁻¹ * star a, left_inv_eq_right_inv h₁ h₂ ▸ h₂, h₁⟩, rfl⟩
  · exact IsSelfAdjoint.mul_star_self a
  · exact IsSelfAdjoint.star_mul_self a

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Spectrum/Variant22a8cfd2c011b998def47fa0b780aa52cf966406749db669f5e421de31a95ddf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Spectrum/Variant22a8cfd2c011b998def47fa0b780aa52cf966406749db669f5e421de31a95ddf.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5a9603fbf1f74769e0c3ea58cc75febad5722c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
