# effectiveEpi_desc_iff_effectiveEpiFamily

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:087fd252-5bbe-9af3-c864-7eb54a924738",
  "kind": "theorem",
  "lexical_name": "effectiveEpi_desc_iff_effectiveEpiFamily",
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
  "slug": "effectiveepi-desc-iff-effectiveepifamily--948cc6973312e5e585dbff55",
  "source": {
    "blob": "4cf0b84695b199e1e28b2c4525058aa3db9d3add",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 32,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant1907de5867e00e36ee103c80dad13b79c4d4b2069d014090ec11f16457d903f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:948cc6973312e5e585dbff55a219ec05066a9a44daf16f5e1f4ad23b64ace904",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant1907de5867e00e36ee103c80dad13b79c4d4b2069d014090ec11f16457d903f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:087fd252-5bbe-9af3-c864-7eb54a924738`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem effectiveEpi_desc_iff_effectiveEpiFamily {α : Type} [Finite α]
    {B : C} (X : α → C) (π : (a : α) → X a ⟶ B) :
    EffectiveEpi (Sigma.desc π) ↔ EffectiveEpiFamily X π := by
  exact ⟨fun h ↦ ⟨⟨@effectiveEpiFamilyStructOfEffectiveEpiDesc _ _ _ _ X π _ h _ _ (fun g ↦
    (FinitaryPreExtensive.sigma_desc_iso (fun a ↦ Sigma.ι X a) g inferInstance).epi_of_iso)⟩⟩,
    fun _ ↦ inferInstance⟩

variable {D : Type*} [Category D] [FinitaryPreExtensive D]
variable (F : C ⥤ D) [PreservesFiniteCoproducts F]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant1907de5867e00e36ee103c80dad13b79c4d4b2069d014090ec11f16457d903f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant1907de5867e00e36ee103c80dad13b79c4d4b2069d014090ec11f16457d903f2.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cf0b84695b199e1e28b2c4525058aa3db9d3add` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
