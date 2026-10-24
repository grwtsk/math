# canonicalFourFamilyRestrictionPacket_support_admissible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1826a723-ca8a-4189-48ee-2b489028378d",
  "kind": "theorem",
  "lexical_name": "canonicalFourFamilyRestrictionPacket_support_admissible",
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
  "slug": "canonicalfourfamilyrestrictionpacket-support-admissible--1567ad704a7c6fd56a9afef6",
  "source": {
    "blob": "8d16fe5e6d37bd0b9eef28ca51b16c0b767dbb8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 51,
    "path": "GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyArithmeticRestrictions.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1567ad704a7c6fd56a9afef6514af15e3cbe23ac8d0fdce90192c9912cc96309",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CanonicalFourFamilyArithmeticRestrictions.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1826a723-ca8a-4189-48ee-2b489028378d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem canonicalFourFamilyRestrictionPacket_support_admissible (X : ℕ)
    (S : CanonicalFourFamilyRestrictionConfig X) :
    CanonicalFourFamilySupportAdmissible X (canonicalFourFamilyRestrictionPacket X S) := by
  intro F c hne
  have hmem : (F, c) ∈ S.val := by
    by_contra h
    simp [canonicalFourFamilyRestrictionPacket, h] at hne
  refine ⟨(Finset.mem_product.mp (S.property hmem)).2, ?_⟩
  by_contra h
  have hempty := Finset.not_nonempty_iff_eq_empty.mp h
  have hz : canonicalFourFamilyCenteredData X F c = 0 := by
    unfold canonicalFourFamilyCenteredData
    rw [authentic_integer_center_amplitude_eq_centered_sum]
    simp [parityZeroWindingCenteredMobiusCorrelation, hempty]
  simp [canonicalFourFamilyRestrictionPacket, hmem, hz] at hne

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CanonicalFourFamilyArithmeticRestrictions.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyArithmeticRestrictions.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d16fe5e6d37bd0b9eef28ca51b16c0b767dbb8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
