# exists_ideal_over_prime_of_isIntegral_of_isDomain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "38effe378f18fa023464dcbc1e58e32d389bf789",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 308,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ad/ad19132ac2067905db8149215b9f7075466970b5263358bb591b4a9e81a2dac3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3cd9099e-f301-f873-34b2-95630c733ac7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cf589203-3a70-88e5-7bc4-e8886b47f0e8",
  "kind": "theorem",
  "lexical_name": "exists_ideal_over_prime_of_isIntegral_of_isDomain",
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
  "slug": "exists-ideal-over-prime-of-isintegral-of-isdomain--50e1d1d804032edd672b8dac",
  "source": {
    "blob": "38effe378f18fa023464dcbc1e58e32d389bf789",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 328,
    "line": 308,
    "path": "GRWTSK/Algebra/GoingUp/Variantad19132ac2067905db8149215b9f7075466970b5263358bb591b4a9e81a2dac3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50e1d1d804032edd672b8dac1f5088777daea750f5d54708ce04bd4ba00ebe63",
  "verification": {
    "reference": "docs/verification/Algebra/GoingUp/Variantad19132ac2067905db8149215b9f7075466970b5263358bb591b4a9e81a2dac3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf589203-3a70-88e5-7bc4-e8886b47f0e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 308–328.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_ideal_over_prime_of_isIntegral_of_isDomain [Algebra.IsIntegral R S] (P : Ideal R)
    [IsPrime P] (hP : RingHom.ker (algebraMap R S) ≤ P) :
    ∃ Q : Ideal S, IsPrime Q ∧ Q.under R = P := by
  have hP0 : (0 : S) ∉ Algebra.algebraMapSubmonoid S P.primeCompl := by
    rintro ⟨x, ⟨hx, x0⟩⟩
    exact absurd (hP x0) hx
  let Rₚ := Localization P.primeCompl
  let Sₚ := Localization (Algebra.algebraMapSubmonoid S P.primeCompl)
  let : IsDomain (Localization (Algebra.algebraMapSubmonoid S P.primeCompl)) :=
    IsLocalization.isDomain_localization (le_nonZeroDivisors_of_noZeroDivisors hP0)
  obtain ⟨Qₚ : Ideal Sₚ, Qₚ_maximal⟩ := exists_maximal Sₚ
  have : Algebra.IsIntegral Rₚ Sₚ := ⟨isIntegral_localization⟩
  have Qₚ_max : IsMaximal (Qₚ.under Rₚ) := isMaximal_under_of_isIntegral_of_isMaximal Qₚ
  refine ⟨Qₚ.under S, ⟨inferInstance, ?_⟩⟩
  convert! Localization.AtPrime.under_maximalIdeal (I := P)
  rw [under_under, ← IsLocalRing.eq_maximalIdeal Qₚ_max, under_under]

end

/-- More general going-up theorem than `exists_ideal_over_prime_of_isIntegral_of_isDomain`.
Generalized to arbitrary length chains in `Ideal.exists_ltSeries_of_hasGoingUp`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GoingUp/Variantad19132ac2067905db8149215b9f7075466970b5263358bb591b4a9e81a2dac3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GoingUp/Variantad19132ac2067905db8149215b9f7075466970b5263358bb591b4a9e81a2dac3.lean#L308).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38effe378f18fa023464dcbc1e58e32d389bf789` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
