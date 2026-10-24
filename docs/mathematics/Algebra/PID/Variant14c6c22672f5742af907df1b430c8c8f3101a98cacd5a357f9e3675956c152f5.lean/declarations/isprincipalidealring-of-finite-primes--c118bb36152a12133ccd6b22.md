# IsPrincipalIdealRing.of_finite_primes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "44f700c6a30abaa3f68b461753f86cd8a17cda18",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 179,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/14/14c6c22672f5742af907df1b430c8c8f3101a98cacd5a357f9e3675956c152f5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:53e52bc3-8153-41c0-0cb5-76460c52af6b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5f61394f-dbb8-45b1-44d6-cde9de214ad2",
  "kind": "theorem",
  "lexical_name": "IsPrincipalIdealRing.of_finite_primes",
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
  "slug": "isprincipalidealring-of-finite-primes--c118bb36152a12133ccd6b22",
  "source": {
    "blob": "44f700c6a30abaa3f68b461753f86cd8a17cda18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 179,
    "path": "GRWTSK/Algebra/PID/Variant14c6c22672f5742af907df1b430c8c8f3101a98cacd5a357f9e3675956c152f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c118bb36152a12133ccd6b220f701fe67a3a7b04dcea714e2a03748e3387b23e",
  "verification": {
    "reference": "docs/verification/Algebra/PID/Variant14c6c22672f5742af907df1b430c8c8f3101a98cacd5a357f9e3675956c152f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f61394f-dbb8-45b1-44d6-cde9de214ad2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPrincipalIdealRing.of_finite_primes [IsDedekindDomain R]
    (h : {I : Ideal R | I.IsPrime}.Finite) : IsPrincipalIdealRing R :=
  ⟨fun I => by
    obtain rfl | hI := eq_or_ne I ⊥
    · exact bot_isPrincipal
    apply Ideal.IsPrincipal.of_finite_maximals_of_isUnit
    · apply h.subset; exact @Ideal.IsMaximal.isPrime _ _
    · exact isUnit_of_mul_eq_one _ _ (FractionalIdeal.coe_ideal_mul_inv I hI)⟩

variable [IsDedekindDomain R]
variable (S : Type*) [CommRing S]
variable [Algebra R S] [NoZeroSMulDivisors R S] [Module.Finite R S]
variable (p : Ideal R) (hp0 : p ≠ ⊥) [IsPrime p]
variable {Sₚ : Type*} [CommRing Sₚ] [Algebra S Sₚ]
variable [IsLocalization (Algebra.algebraMapSubmonoid S p.primeCompl) Sₚ]
variable [Algebra R Sₚ] [IsScalarTower R S Sₚ]
include hp0

/- The first hypothesis below follows from properties of the localization but is needed for the
second, so we leave it to the user to provide (automatically). -/
variable [IsDedekindDomain Sₚ]

/-- If `p` is a prime in the Dedekind domain `R`, `S` an extension of `R` and `Sₚ` the localization
of `S` at `p`, then all primes in `Sₚ` are factors of the image of `p` in `Sₚ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PID/Variant14c6c22672f5742af907df1b430c8c8f3101a98cacd5a357f9e3675956c152f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PID/Variant14c6c22672f5742af907df1b430c8c8f3101a98cacd5a357f9e3675956c152f5.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44f700c6a30abaa3f68b461753f86cd8a17cda18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
