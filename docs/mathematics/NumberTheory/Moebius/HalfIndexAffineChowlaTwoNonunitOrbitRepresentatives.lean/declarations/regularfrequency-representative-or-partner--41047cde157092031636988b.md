# regularFrequency_representative_or_partner

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7760a2e3-2632-ca5b-c32f-dbc0e03b5569",
  "kind": "theorem",
  "lexical_name": "regularFrequency_representative_or_partner",
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
  "slug": "regularfrequency-representative-or-partner--41047cde157092031636988b",
  "source": {
    "blob": "2462a35ddac26d0c9c2d20b4caaac4db5daf757b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 118,
    "path": "GRWTSK/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41047cde157092031636988b2801d5e7fc948a97cc1bb5809d8694e604538ea5",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7760a2e3-2632-ca5b-c32f-dbc0e03b5569`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem regularFrequency_representative_or_partner
    (d : ℕ) [NeZero d]
    (hNonunit : TwoNonunitSquareModulusParameter d)
    (k : ZMod (d * d))
    (hk0 : k ≠ 0)
    (hkH : k ≠ twoKernelFrequency d) :
    k ∈ twoKernelRegularOrbitRepresentativeSet d ∨
      twoKernelPartner d k ∈ twoKernelRegularOrbitRepresentativeSet d := by
  have hpartner0 : twoKernelPartner d k ≠ 0 := by
    intro hzero
    have hback := congrArg (twoKernelPartner d) hzero
    rw [twoKernelPartner_involutive d hNonunit,
      twoKernelPartner_zero] at hback
    exact hkH hback
  have hvalne : k.val ≠ (twoKernelPartner d k).val := by
    intro hval
    have heq : k = twoKernelPartner d k := by
      exact ZMod.val_injective (d * d) hval
    exact twoKernelPartner_ne_self d hNonunit k heq.symm
  rcases lt_or_gt_of_ne hvalne with hlt | hgt
  · left
    simp [twoKernelRegularOrbitRepresentativeSet, hk0, hpartner0, hlt]
  · right
    have hback0 :
        twoKernelPartner d (twoKernelPartner d k) ≠ 0 := by
      simpa [twoKernelPartner_involutive d hNonunit] using hk0
    have hbacklt :
        (twoKernelPartner d k).val <
          (twoKernelPartner d (twoKernelPartner d k)).val := by
      simpa [twoKernelPartner_involutive d hNonunit] using hgt
    simp [twoKernelRegularOrbitRepresentativeSet, hpartner0, hk0, hgt,
      twoKernelPartner_involutive d hNonunit]

/-- Every regular representative has a distinct partner. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2462a35ddac26d0c9c2d20b4caaac4db5daf757b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
