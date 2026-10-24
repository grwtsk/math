# zmultiplesQuotientStabilizerEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e8d591658ef4671ef08212415d5da8d88843593b058763135789c87c24e30c79",
  "kind": "def",
  "lexical_name": "zmultiplesQuotientStabilizerEquiv",
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
  "slug": "zmultiplesquotientstabilizerequiv--3a816374b5ed580cd1e6bdb9",
  "source": {
    "blob": "c92f7d7f91480e66f932305f77733c8bd135c3e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 56,
    "path": "GRWTSK/Algebra/GroupTheory/QuotientGroup/Variant5b53b1acbcabb9863ce900d248782fd1a4ac9035d65e357ef2bd17e1a9fc2b40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3a816374b5ed580cd1e6bdb9edcaa21b3459edc6943341a47ed42b8e26132951",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/QuotientGroup/Variant5b53b1acbcabb9863ce900d248782fd1a4ac9035d65e357ef2bd17e1a9fc2b40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e8d591658ef4671ef08212415d5da8d88843593b058763135789c87c24e30c79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def zmultiplesQuotientStabilizerEquiv :
    zmultiples a ⧸ stabilizer (zmultiples a) b ≃+ ZMod (minimalPeriod (a +ᵥ ·) b) :=
  (ofBijective
          (map _ (stabilizer (zmultiples a) b) (zmultiplesHom (zmultiples a) ⟨a, mem_zmultiples a⟩)
            (by
              rw [zmultiples_le, mem_comap, mem_stabilizer_iff, zmultiplesHom_apply, natCast_zsmul]
              simp_rw [← vadd_iterate]
              exact isPeriodicPt_minimalPeriod (a +ᵥ ·) b))
          ⟨by
            rw [← ker_eq_bot_iff, eq_bot_iff]
            refine fun q => induction_on q fun n hn => ?_
            rw [mem_bot, eq_zero_iff, Int.mem_zmultiples_iff, ←
              zsmul_vadd_eq_iff_minimalPeriod_dvd]
            exact (eq_zero_iff _).mp hn, fun q =>
            induction_on q fun ⟨_, n, rfl⟩ => ⟨n, rfl⟩⟩).symm.trans
    (Int.quotientZMultiplesNatEquivZMod (minimalPeriod (a +ᵥ ·) b))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/QuotientGroup/Variant5b53b1acbcabb9863ce900d248782fd1a4ac9035d65e357ef2bd17e1a9fc2b40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/QuotientGroup/Variant5b53b1acbcabb9863ce900d248782fd1a4ac9035d65e357ef2bd17e1a9fc2b40.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c92f7d7f91480e66f932305f77733c8bd135c3e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
