# isDedekindDomain_iff_isDiscreteValuationRing_atPrime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15d56e03-c4b1-9f1d-32da-504835cf5815",
  "kind": "theorem",
  "lexical_name": "isDedekindDomain_iff_isDiscreteValuationRing_atPrime",
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
  "slug": "isdedekinddomain-iff-isdiscretevaluationring-atprime--8c7533d0fca780b6ac03035f",
  "source": {
    "blob": "b50a2c39215ac6df3a17afc1bf84d4927596b638",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 137,
    "path": "GRWTSK/Algebra/Dvr/Variantce13b695c8953bc4100d345e657a8380d308f0c4ea9258a878586b3d9e634e6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c7533d0fca780b6ac03035fd444177ea45a626c3fd51891a1e2c7db922618be",
  "verification": {
    "reference": "docs/verification/Algebra/Dvr/Variantce13b695c8953bc4100d345e657a8380d308f0c4ea9258a878586b3d9e634e6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15d56e03-c4b1-9f1d-32da-504835cf5815`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem isDedekindDomain_iff_isDiscreteValuationRing_atPrime [IsDomain A] :
    IsDedekindDomain A ↔ IsNoetherian A A ∧
      ∀ P ≠ (⊥ : Ideal A), ∀ _ : P.IsPrime, IsDiscreteValuationRing (Localization.AtPrime P) := by
  constructor
  · intro
    exact ⟨inferInstance, fun P hP _ =>
      IsLocalization.AtPrime.isDiscreteValuationRing_of_dedekind_domain A hP _⟩
  · intro ⟨_i1, h⟩
    have _i2 : Ring.DimensionLEOne A := by
      constructor
      intro p hp hpp
      rcases p.exists_le_maximal (Ideal.IsPrime.ne_top hpp) with ⟨q, hq, hpq⟩
      let f := (IsLocalization.orderIsoOfPrime q.primeCompl (Localization.AtPrime q)).symm
      let P := f ⟨p, hpp, hpq.disjoint_compl_left⟩
      let Q := f ⟨q, hq.isPrime, Set.disjoint_left.mpr fun _ a => a⟩
      have hinj : Function.Injective (algebraMap A (Localization.AtPrime q)) :=
        IsLocalization.injective (Localization.AtPrime q) q.primeCompl_le_nonZeroDivisors
      have hp1 : P.1 ≠ ⊥ := fun x => hp ((p.map_eq_bot_iff_of_injective hinj).mp x)
      have hq1 : Q.1 ≠ ⊥ :=
        fun x => (ne_bot_of_le_ne_bot hp hpq) ((q.map_eq_bot_iff_of_injective hinj).mp x)
      rcases (IsDiscreteValuationRing.iff_pid_with_one_nonzero_prime (Localization.AtPrime q)).mp
        (h q (ne_bot_of_le_ne_bot hp hpq) hq.isPrime) with ⟨_, huq⟩
      rw [show p = q from Subtype.val_inj.mpr <| f.injective <|
        Subtype.val_inj.mp (huq.unique ⟨hp1, P.2⟩ ⟨hq1, Q.2⟩)]
      exact hq
    have _i3 : IsIntegrallyClosed A :=
      IsIntegrallyClosed.of_localization_maximal <| fun p hp0 hpm ↦
        let ⟨_, _⟩ := (IsDiscreteValuationRing.iff_pid_with_one_nonzero_prime
          (Localization.AtPrime p)).mp (h p hp0 hpm.isPrime)
        inferInstance
    exact {}
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Dvr/Variantce13b695c8953bc4100d345e657a8380d308f0c4ea9258a878586b3d9e634e6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Dvr/Variantce13b695c8953bc4100d345e657a8380d308f0c4ea9258a878586b3d9e634e6f.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b50a2c39215ac6df3a17afc1bf84d4927596b638` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
