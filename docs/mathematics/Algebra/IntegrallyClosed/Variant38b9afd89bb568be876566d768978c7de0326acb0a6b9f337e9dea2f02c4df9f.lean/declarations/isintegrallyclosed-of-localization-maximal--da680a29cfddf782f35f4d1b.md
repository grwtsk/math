# IsIntegrallyClosed.of_localization_maximal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:95ff78ea-b944-82db-f302-9e376df7bcd4",
  "kind": "theorem",
  "lexical_name": "IsIntegrallyClosed.of_localization_maximal",
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
  "slug": "isintegrallyclosed-of-localization-maximal--da680a29cfddf782f35f4d1b",
  "source": {
    "blob": "ebafec634cb1551ca4640b8f1c9425bedb3aae4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 73,
    "path": "GRWTSK/Algebra/IntegrallyClosed/Variant38b9afd89bb568be876566d768978c7de0326acb0a6b9f337e9dea2f02c4df9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da680a29cfddf782f35f4d1b63d97d46602650ab2b7bf255306f22c46bf70a70",
  "verification": {
    "reference": "docs/verification/Algebra/IntegrallyClosed/Variant38b9afd89bb568be876566d768978c7de0326acb0a6b9f337e9dea2f02c4df9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95ff78ea-b944-82db-f302-9e376df7bcd4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsIntegrallyClosed.of_localization_maximal [IsDomain R]
    (h : ∀ p : Ideal R, p ≠ ⊥ → [p.IsMaximal] → IsIntegrallyClosed (Localization.AtPrime p)) :
    IsIntegrallyClosed R := by
  by_cases hf : IsField R
  · exact hf.toField.instIsIntegrallyClosed
  refine of_localization (.range MaximalSpectrum.toPrimeSpectrum) (fun _ ↦ ?_) ?_
  · rintro ⟨p, rfl⟩
    exact h p.asIdeal (Ring.ne_bot_of_isMaximal_of_not_isField p.isMaximal hf)
  · rw [iInf_range]
    convert MaximalSpectrum.iInf_localization_eq_bot R (FractionRing R)
    rw [subalgebra.ofField_eq, MaximalSpectrum.toPrimeSpectrum]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IntegrallyClosed/Variant38b9afd89bb568be876566d768978c7de0326acb0a6b9f337e9dea2f02c4df9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IntegrallyClosed/Variant38b9afd89bb568be876566d768978c7de0326acb0a6b9f337e9dea2f02c4df9f.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebafec634cb1551ca4640b8f1c9425bedb3aae4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
