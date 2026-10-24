# normal_iff_normal_monoidHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:712af6c9-590b-6b58-2e5c-71b1671d7b8e",
  "kind": "theorem",
  "lexical_name": "normal_iff_normal_monoidHom",
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
  "slug": "normal-iff-normal-monoidhom--7a7719cff9d550538e259dd6",
  "source": {
    "blob": "94606fc70ab07da6af4457f014dd0e9cb3af854e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 91,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Normal/Variant5bd6f47a3731b42dfff49bc9666c26a0251f424e7bcd1a688855a33526cb38f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a7719cff9d550538e259dd61cd03486bb3411fe8d3ed0ac6f19d98b4f98b991",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Normal/Variant5bd6f47a3731b42dfff49bc9666c26a0251f424e7bcd1a688855a33526cb38f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:712af6c9-590b-6b58-2e5c-71b1671d7b8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normal_iff_normal_monoidHom [IsMonHom φ] [Mono φ] :
    Normal φ ↔ ∀ (X : C), (monoidHom φ X).range.Normal := by
  rw [isNormalHom_iff]
  refine ⟨?_, ?_⟩
  · intro ⟨ψ, hψ⟩ X
    constructor
    rintro - ⟨x, rfl⟩ z
    exact ⟨lift z x ≫ ψ, by simp [hψ]⟩
  · intro hnormal
    have (X : C) (g : X ⟶ G) (h : X ⟶ H) : ∃ (h' : X ⟶ H), h' ≫ φ = g * h ≫ φ * g⁻¹ :=
      (hnormal X).conj_mem (h ≫ φ) (by simp) g
    choose h' hh' using this
    refine ⟨Yoneda.fullyFaithful.preimage ?_, ?_⟩
    · refine ⟨fun X ↦ ↾fun x ↦ h' _ (x ≫ fst _ _) (x ≫ snd _ _), fun X Y f ↦ ?_⟩
      ext
      simp [← cancel_mono φ, hh', comp_mul, comp_inv]
    · refine yoneda.map_injective ?_
      ext
      simp [hh', conj, comp_mul, comp_inv]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Normal/Variant5bd6f47a3731b42dfff49bc9666c26a0251f424e7bcd1a688855a33526cb38f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Normal/Variant5bd6f47a3731b42dfff49bc9666c26a0251f424e7bcd1a688855a33526cb38f8.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94606fc70ab07da6af4457f014dd0e9cb3af854e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
