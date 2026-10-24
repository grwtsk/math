# _root_.GRWTSK.Algebra.RingKrullDimLEMemMinimalPrimesIff.Variant6d20413221755dea0af8ee4af2acc66f9c011aea4992f7484d2be0a0d081016a.IsLocalization.AtPrime.prime_unique_of_minimal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c6117c8d-cffa-9363-d077-104d46eccfa4",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Algebra.RingKrullDimLEMemMinimalPrimesIff.Variant6d20413221755dea0af8ee4af2acc66f9c011aea4992f7484d2be0a0d081016a.IsLocalization.AtPrime.prime_unique_of_minimal",
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
  "slug": "root-grwtsk-algebra-ringkrulldimlememminimalprimesiff-variant6d204132217--7246c4aee6706619c209d0c5",
  "source": {
    "blob": "2b94daae17e4e24bbb42cc85788a279b3d900f36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 190,
    "path": "GRWTSK/Algebra/Zero/Variant44ff51c41229633ae556ca99a2ab18c4dea1ae3fd6b63b6531d4146d93af1863.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7246c4aee6706619c209d0c51702b0b88a0f171162b51686768f7f5f1cb2ec78",
  "verification": {
    "reference": "docs/verification/Algebra/Zero/Variant44ff51c41229633ae556ca99a2ab18c4dea1ae3fd6b63b6531d4146d93af1863.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6117c8d-cffa-9363-d077-104d46eccfa4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Algebra.RingKrullDimLEMemMinimalPrimesIff.Variant6d20413221755dea0af8ee4af2acc66f9c011aea4992f7484d2be0a0d081016a.IsLocalization.AtPrime.prime_unique_of_minimal {S} [CommSemiring S] [Algebra R S]
    [IsLocalization.AtPrime S I] {J K : Ideal S} [J.IsPrime] [K.IsPrime] : J = K :=
  haveI := Ring.KrullDimLE.of_isLocalization I hMin S
  haveI := IsLocalization.AtPrime.isLocalRing S I
  (Ring.KrullDimLE.existsUnique_isPrime _).unique inferInstance inferInstance

@[deprecated (since := "2024-12-20")]
alias prime_unique_of_minimal := Ring.KrullDimLE.eq_maximalIdeal_of_isPrime

@[deprecated (since := "2024-12-20")]
alias nilpotent_iff_mem_maximal_of_minimal := Ring.KrullDimLE.isNilpotent_iff_mem_maximalIdeal

@[deprecated (since := "2024-12-20")]
alias nilpotent_iff_not_unit_of_minimal := Ring.KrullDimLE.isNilpotent_iff_mem_nonunits

end Localization.AtPrime

@[deprecated "Use `PrimeSpectrum.unique_of_ringKrullDimLE_zero` with
  `Ring.KrullDimLE.of_isLocalization`" (since := "2024-12-20")]
alias PrimeSpectrum.primeSpectrum_unique_of_localization_at_minimal :=
  PrimeSpectrum.unique_of_ringKrullDimLE_zero

section Nilrad_max_localization

open Ideal

@[deprecated (since := "2024-11-09")]
alias LocalRing.of_nilradical_isMaximal := IsLocalRing.of_isMaximal_nilradical

variable {R : Type*} [CommSemiring R] {S : Type*} [CommSemiring S] [Algebra R S] {M : Submonoid R}

attribute [local instance]
  IsLocalRing.of_isMaximal_nilradical Ring.KrullDimLE.of_isMaximal_nilradical in
/--
Let `S` be the localization of a commutative semiring `R` at a submonoid `M` that does not
contain 0. If the nilradical of `R` is maximal then there is a `R`-algebra isomorphism between
`R` and `S`. -/
@[deprecated IsLocalization.atUnits (since := "2024-12-20")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Zero/Variant44ff51c41229633ae556ca99a2ab18c4dea1ae3fd6b63b6531d4146d93af1863.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Zero/Variant44ff51c41229633ae556ca99a2ab18c4dea1ae3fd6b63b6531d4146d93af1863.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b94daae17e4e24bbb42cc85788a279b3d900f36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
