# coe_isUnit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "91e5584d07e30cedfd6de43e39471f90b20d98e1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 231,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2c/2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3dcb10b4-54dc-01e9-6f97-ae86e04bd363",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6480df98-3e16-a0da-9f9e-65f6c68a3a20",
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
  "slug": "coe-isunit--a916c9532fb95282eabc7e4b",
  "source": {
    "blob": "91e5584d07e30cedfd6de43e39471f90b20d98e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 231,
    "path": "GRWTSK/Topology/GeneralTopology/Spectrum/Variant2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a916c9532fb95282eabc7e4b120e93b0c74379d13439ee564b1eb73a3a9b70dd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Spectrum/Variant2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6480df98-3e16-a0da-9f9e-65f6c68a3a20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–245.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Spectrum/Variant2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Spectrum/Variant2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91e5584d07e30cedfd6de43e39471f90b20d98e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
