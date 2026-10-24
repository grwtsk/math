# Subring.exists_le_valuationSubring_of_isIntegrallyClosedIn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d15f5e2f-e888-9261-84ab-74e886ecbfdb",
  "kind": "lemma",
  "lexical_name": "Subring.exists_le_valuationSubring_of_isIntegrallyClosedIn",
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
  "slug": "subring-exists-le-valuationsubring-of-isintegrallyclosedin--e8038980e5f4ffa639fb0b58",
  "source": {
    "blob": "8799df0564fc3ad2e388effbfe78be11707c5feb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 158,
    "path": "GRWTSK/Algebra/LocalSubring/Variant123d75144afc288da3a2c6f4e07fd75f6e2193fe958b75a58c4e1d90fcd4aacc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8038980e5f4ffa639fb0b58f95dce20f8e71dc8a7e2844071f2f8bc6b3cad58",
  "verification": {
    "reference": "docs/verification/Algebra/LocalSubring/Variant123d75144afc288da3a2c6f4e07fd75f6e2193fe958b75a58c4e1d90fcd4aacc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d15f5e2f-e888-9261-84ab-74e886ecbfdb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[stacks 090P "part (1)"] lemma Subring.exists_le_valuationSubring_of_isIntegrallyClosedIn
    {x : K} {R : Subring K} (hxR : x ∉ R) [IsIntegrallyClosedIn R K] :
    ∃ V : ValuationSubring K, R ≤ V.toSubring ∧ x ∉ V := by
  obtain rfl | hx0 := eq_or_ne x 0
  · exact (hxR R.zero_mem).elim
  let := invertibleOfNonzero hx0
  let B := R[x⁻¹]
  let xinv : B.toSubring := ⟨x⁻¹, subset_adjoin rfl⟩
  have : Ideal.span {xinv} ≠ ⊤ := fun eq ↦ hxR <|
    have ⟨p, hp, hpx⟩ := exists_aeval_invOf_eq_zero_of_idealMap_adjoin_sup_span_eq_top _
      (⊥ : Ideal R) bot_ne_top (top_unique <| eq.ge.trans le_add_self)
    (Subring.isIntegrallyClosedIn_iff).mp ‹_› ⟨p, by simpa [Monic, sub_eq_zero] using hp, hpx⟩
  have ⟨V, hV⟩ := Ideal.image_subset_nonunits_valuationSubring _ this
  exact ⟨V, fun r hr ↦ hV.1 (B.algebraMap_mem ⟨r, hr⟩),
    (V.inv_mem_nonunits_iff.mp <| hV.2 ⟨_, Ideal.subset_span rfl, rfl⟩).resolve_left hx0⟩

open Polynomial Algebra in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LocalSubring/Variant123d75144afc288da3a2c6f4e07fd75f6e2193fe958b75a58c4e1d90fcd4aacc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LocalSubring/Variant123d75144afc288da3a2c6f4e07fd75f6e2193fe958b75a58c4e1d90fcd4aacc.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8799df0564fc3ad2e388effbfe78be11707c5feb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
