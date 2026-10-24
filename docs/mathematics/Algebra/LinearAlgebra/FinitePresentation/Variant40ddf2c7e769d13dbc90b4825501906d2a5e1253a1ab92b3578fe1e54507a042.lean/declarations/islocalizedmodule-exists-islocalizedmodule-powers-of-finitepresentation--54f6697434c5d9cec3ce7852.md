# IsLocalizedModule.exists_isLocalizedModule_powers_of_finitePresentation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f569e94-ca36-2311-af0f-448b26ff00e7",
  "kind": "lemma",
  "lexical_name": "IsLocalizedModule.exists_isLocalizedModule_powers_of_finitePresentation",
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
  "slug": "islocalizedmodule-exists-islocalizedmodule-powers-of-finitepresentation--54f6697434c5d9cec3ce7852",
  "source": {
    "blob": "e1393e7617530450add7ca5c4955aad59cabc93c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 641,
    "line": 612,
    "path": "GRWTSK/Algebra/LinearAlgebra/FinitePresentation/Variant40ddf2c7e769d13dbc90b4825501906d2a5e1253a1ab92b3578fe1e54507a042.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54f6697434c5d9cec3ce7852260766a1dde8a2b0d4f5707701bc47ee8f622422",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FinitePresentation/Variant40ddf2c7e769d13dbc90b4825501906d2a5e1253a1ab92b3578fe1e54507a042.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f569e94-ca36-2311-af0f-448b26ff00e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 612–641.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsLocalizedModule.exists_isLocalizedModule_powers_of_finitePresentation
    [Module.Finite R M] [Module.FinitePresentation R M'] :
    ∃ r ∈ S, IsLocalizedModule.Away r f := by
  have : IsLocalizedModule S (.id (R := R) (M := M')) :=
    ⟨IsLocalizedModule.map_units f, fun y ↦ ⟨⟨y, 1⟩, by simp⟩, by simpa using ⟨1, S.one_mem⟩⟩
  obtain ⟨r, hrp, H⟩ := exists_bijective_map_powers S
      f (.id (R := R) (M := M')) f <| by
    convert! show Function.Bijective LinearMap.id from Function.bijective_id
    apply IsLocalizedModule.ext S f
    · exact IsLocalizedModule.map_units f
    · simp [IsLocalizedModule.map_comp]
  have hrp' : .powers r ≤ S := by simpa [Submonoid.powers_le]
  refine ⟨r, hrp, ⟨fun x ↦ IsLocalizedModule.map_units f ⟨x, hrp' x.2⟩, ?_, ?_⟩⟩
  · intro y
    obtain ⟨x, hx⟩ := (H _ dvd_rfl).2 (LocalizedModule.mkLinearMap _ _ y)
    obtain ⟨⟨x, ⟨_, n, rfl⟩⟩, rfl⟩ := IsLocalizedModule.mk'_surjective
      (.powers r) (LocalizedModule.mkLinearMap _ _) x
    obtain ⟨m, hm⟩ : ∃ m, r ^ (m + n) • y = f (r ^ m • x) := by
      simpa [LocalizedModule.map, IsLocalizedModule.mk_eq_mk', -IsLocalizedModule.mk'_one,
        pow_add, mul_smul, IsLocalizedModule.mk'_eq_mk'_iff, Submonoid.mem_powers_iff,
        Submonoid.smul_def] using hx
    exact ⟨⟨_, ⟨_, _, rfl⟩⟩, hm⟩
  · exact fun {x₁ x₂} hx ↦ IsLocalizedModule.exists_of_eq (f := LocalizedModule.mkLinearMap
      (.powers r) _) ((H _ dvd_rfl).1 (by simp [hx]))

/--
Let `M` be a finitely presented `R`-module, `N` an `R`-module, `S : Submonoid R`.
The linear equivalence between the `M →ₗ[R] N` localized at `S` and
`LocalizedModule S M →ₗ[R] LocalizedModule S N`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FinitePresentation/Variant40ddf2c7e769d13dbc90b4825501906d2a5e1253a1ab92b3578fe1e54507a042.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FinitePresentation/Variant40ddf2c7e769d13dbc90b4825501906d2a5e1253a1ab92b3578fe1e54507a042.lean#L612).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1393e7617530450add7ca5c4955aad59cabc93c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
