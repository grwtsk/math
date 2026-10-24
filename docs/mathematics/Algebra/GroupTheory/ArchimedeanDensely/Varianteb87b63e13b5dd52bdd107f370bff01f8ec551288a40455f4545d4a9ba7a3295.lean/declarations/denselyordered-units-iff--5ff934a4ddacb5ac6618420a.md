# denselyOrdered_units_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:786aeac9-7666-3842-53cc-f35bdadf3983",
  "kind": "lemma",
  "lexical_name": "denselyOrdered_units_iff",
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
  "slug": "denselyordered-units-iff--5ff934a4ddacb5ac6618420a",
  "source": {
    "blob": "c8d89e44d4a0088e14edd4367f66a87ba4413f99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 263,
    "path": "GRWTSK/Algebra/GroupTheory/ArchimedeanDensely/Varianteb87b63e13b5dd52bdd107f370bff01f8ec551288a40455f4545d4a9ba7a3295.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ff934a4ddacb5ac6618420aed36213aa34fc86079d22f84fc70157ff1a40f41",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ArchimedeanDensely/Varianteb87b63e13b5dd52bdd107f370bff01f8ec551288a40455f4545d4a9ba7a3295.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:786aeac9-7666-3842-53cc-f35bdadf3983`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma denselyOrdered_units_iff {G₀ : Type*} [LinearOrderedCommGroupWithZero G₀] [Nontrivial G₀ˣ] :
    DenselyOrdered G₀ˣ ↔ DenselyOrdered G₀ := by
  constructor
  · intro H
    refine ⟨fun x y h ↦ ?_⟩
    rcases (zero_le' (a := x)).eq_or_lt with rfl|hx
    · lift y to G₀ˣ using h.ne'.isUnit
      obtain ⟨z, hz⟩ := exists_ne (1 : G₀ˣ)
      refine ⟨(y * |z|ₘ⁻¹ : G₀ˣ), ?_, ?_⟩
      · simp [zero_lt_iff]
      · rw [Units.val_lt_val]
        simp [hz]
    · obtain ⟨z, hz, hz'⟩ := H.dense (Units.mk0 x hx.ne') (Units.mk0 y (hx.trans h).ne')
        (by simp [← Units.val_lt_val, h])
      refine ⟨z, ?_, ?_⟩ <;>
      simpa [← Units.val_lt_val]
  · intro H
    refine ⟨fun x y h ↦ ?_⟩
    obtain ⟨z, hz⟩ := exists_between (Units.val_lt_val.mpr h)
    rcases (zero_le' (a := z)).eq_or_lt with rfl|hz'
    · simp at hz
    refine ⟨Units.mk0 z hz'.ne', ?_⟩
    simp [← Units.val_lt_val, hz]

/-- Any nontrivial (has other than 0 and 1) linearly ordered mul-archimedean group with zero is
either isomorphic (and order-isomorphic) to `ℤₘ₀`, or is densely ordered. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ArchimedeanDensely/Varianteb87b63e13b5dd52bdd107f370bff01f8ec551288a40455f4545d4a9ba7a3295.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ArchimedeanDensely/Varianteb87b63e13b5dd52bdd107f370bff01f8ec551288a40455f4545d4a9ba7a3295.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8d89e44d4a0088e14edd4367f66a87ba4413f99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
