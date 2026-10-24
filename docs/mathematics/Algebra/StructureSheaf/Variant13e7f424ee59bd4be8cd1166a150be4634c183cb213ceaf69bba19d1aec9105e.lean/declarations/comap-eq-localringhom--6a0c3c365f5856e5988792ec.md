# comapₗ_eq_localRingHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15dd17e7-56d9-1994-0288-cf1f59e45c8c",
  "kind": "theorem",
  "lexical_name": "comapₗ_eq_localRingHom",
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
  "slug": "comap-eq-localringhom--6a0c3c365f5856e5988792ec",
  "source": {
    "blob": "08b659a0a3f3a16341f764ca121c95b64ce83209",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1088,
    "line": 1065,
    "path": "GRWTSK/Algebra/StructureSheaf/Variant13e7f424ee59bd4be8cd1166a150be4634c183cb213ceaf69bba19d1aec9105e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a0c3c365f5856e5988792ec0248455cc23248c45b61bef175d84021b4ff82c2",
  "verification": {
    "reference": "docs/verification/Algebra/StructureSheaf/Variant13e7f424ee59bd4be8cd1166a150be4634c183cb213ceaf69bba19d1aec9105e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15dd17e7-56d9-1994-0288-cf1f59e45c8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1065–1088.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comapₗ_eq_localRingHom (f : R →+* S) (U : Opens (PrimeSpectrum.Top R))
    (V : Opens (PrimeSpectrum.Top S)) (hUV : V.1 ⊆ PrimeSpectrum.comap f ⁻¹' U.1)
    (s : (structureSheaf R).1.obj (op U)) (p : V) :
    (comapₗ f.toSemilinearMap U V hUV s).1 p =
      Localization.localRingHom (PrimeSpectrum.comap f p.1).asIdeal _ f rfl
        (s.1 ⟨PrimeSpectrum.comap f p.1, hUV p.2⟩) := by
  dsimp [comapₗ, comapFun]
  suffices ⇑(Localizations.comapFun f.toSemilinearMap p.1) =
      ⇑(Localization.localRingHom (PrimeSpectrum.comap f p.1).asIdeal _ f rfl) from
    congr($this _)
  ext m
  induction m using LocalizedModule.induction_on with | h m s =>
  trans LocalizedModule.mk (f m) ⟨f ↑s, s.2⟩
  · simp
  convert_to! Localization.mk _ _ = Localization.localRingHom _ _ _ _ (Localization.mk _ _)
  simp [Localization.mk_eq_mk']

/-- For a ring homomorphism `f : R →+* S` and open sets `U` and `V` of the prime spectra of `R` and
`S` such that `V ⊆ (comap f) ⁻¹ U`, the induced ring homomorphism from the structure sheaf of `R`
at `U` to the structure sheaf of `S` at `V`.

Explicitly, this map is given as follows: For a point `p : V`, if the section `s` evaluates on `p`
to the fraction `a / b`, its image on `V` evaluates on `p` to the fraction `f(a) / f(b)`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/StructureSheaf/Variant13e7f424ee59bd4be8cd1166a150be4634c183cb213ceaf69bba19d1aec9105e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/StructureSheaf/Variant13e7f424ee59bd4be8cd1166a150be4634c183cb213ceaf69bba19d1aec9105e.lean#L1065).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08b659a0a3f3a16341f764ca121c95b64ce83209` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
