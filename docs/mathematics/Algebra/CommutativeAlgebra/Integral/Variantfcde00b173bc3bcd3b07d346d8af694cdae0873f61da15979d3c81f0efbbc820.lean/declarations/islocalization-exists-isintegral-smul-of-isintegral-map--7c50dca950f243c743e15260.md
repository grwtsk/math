# IsLocalization.exists_isIntegral_smul_of_isIntegral_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e2714f7-9e45-f6ef-0efd-153f27e54c1a",
  "kind": "lemma",
  "lexical_name": "IsLocalization.exists_isIntegral_smul_of_isIntegral_map",
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
  "slug": "islocalization-exists-isintegral-smul-of-isintegral-map--7c50dca950f243c743e15260",
  "source": {
    "blob": "70bbddb523939a045ac3dcd118a1fa44b755cb52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 253,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Integral/Variantfcde00b173bc3bcd3b07d346d8af694cdae0873f61da15979d3c81f0efbbc820.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c50dca950f243c743e152600bdd4f874bf068de65102af215c5746a02cff683",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Integral/Variantfcde00b173bc3bcd3b07d346d8af694cdae0873f61da15979d3c81f0efbbc820.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e2714f7-9e45-f6ef-0efd-153f27e54c1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsLocalization.exists_isIntegral_smul_of_isIntegral_map
    {R S Sₘ : Type*} [CommRing R] [CommRing S] [CommRing Sₘ] [Algebra R S] [Algebra S Sₘ]
    [Algebra R Sₘ] [IsScalarTower R S Sₘ] (M : Submonoid R)
    [IsLocalization (Algebra.algebraMapSubmonoid S M) Sₘ] {x : S}
    (hx : IsIntegral R (algebraMap S Sₘ x)) : ∃ m ∈ M, IsIntegral R (m • x) := by
  obtain ⟨p, hpm, hp⟩ := hx
  simp only [IsScalarTower.algebraMap_eq R S Sₘ, ← hom_eval₂,
    IsLocalization.map_eq_zero_iff (Algebra.algebraMapSubmonoid S M), Algebra.algebraMapSubmonoid,
    Subtype.exists, Submonoid.mem_map, exists_prop, exists_exists_and_eq_and] at hp
  obtain ⟨m, hm, e⟩ := hp
  exact ⟨m, hm, by simpa [Algebra.smul_def, leadingCoeff_mul_monic hpm] using!
    RingHom.isIntegralElem_leadingCoeff_mul (algebraMap R S) (C m * p) x (by simpa)⟩

/-- If `t` is `R`-integral in `S[1/r]` where `r : S` is integral over `R`,
then `r ^ n • t` is integral in `S` for some `n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Integral/Variantfcde00b173bc3bcd3b07d346d8af694cdae0873f61da15979d3c81f0efbbc820.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Integral/Variantfcde00b173bc3bcd3b07d346d8af694cdae0873f61da15979d3c81f0efbbc820.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70bbddb523939a045ac3dcd118a1fa44b755cb52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
