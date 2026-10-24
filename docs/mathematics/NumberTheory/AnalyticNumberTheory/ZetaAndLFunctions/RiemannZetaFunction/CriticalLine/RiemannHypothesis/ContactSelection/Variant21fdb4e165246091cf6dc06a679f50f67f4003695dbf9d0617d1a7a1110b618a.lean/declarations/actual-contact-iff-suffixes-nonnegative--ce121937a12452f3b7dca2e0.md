# actual_contact_iff_suffixes_nonnegative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6299bae0-3d35-8239-4abc-b73a9690f8e9",
  "kind": "theorem",
  "lexical_name": "actual_contact_iff_suffixes_nonnegative",
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
  "slug": "actual-contact-iff-suffixes-nonnegative--ce121937a12452f3b7dca2e0",
  "source": {
    "blob": "9e310632fc899faa143b29e28e721529f9bf5343",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 43,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ContactSelection/Variant21fdb4e165246091cf6dc06a679f50f67f4003695dbf9d0617d1a7a1110b618a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce121937a12452f3b7dca2e09bae0e3e08c97cec542a56f7333d64e609e9ba0e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ContactSelection/Variant21fdb4e165246091cf6dc06a679f50f67f4003695dbf9d0617d1a7a1110b618a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6299bae0-3d35-8239-4abc-b73a9690f8e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_contact_iff_suffixes_nonnegative (N K : ℕ) :
    primeRecordLevel N K = ordinaryPrimePrimitive (N + K : ℕ) - ordinaryPrimePrimitive N ↔
      ∀ j : ℕ, j ≤ K → 0 ≤ actualSuffix N K j := by
  constructor
  · intro hcontact j hj
    have hbound := (actual_record_level_le_iff N K (primeRecordLevel N K)).mp le_rfl
    have hprior := hbound.2 j hj
    rw [hcontact] at hprior
    unfold actualSuffix
    linarith
  · intro hback
    apply le_antisymm
    · apply (actual_record_level_le_iff N K _).mpr
      refine ⟨by simpa only [actualSuffix, Nat.add_zero] using hback 0 (Nat.zero_le K), ?_⟩
      intro j hj
      have h := hback j hj
      unfold actualSuffix at h
      linarith
    · exact actual_prefix_le_record N K

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ContactSelection/Variant21fdb4e165246091cf6dc06a679f50f67f4003695dbf9d0617d1a7a1110b618a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ContactSelection/Variant21fdb4e165246091cf6dc06a679f50f67f4003695dbf9d0617d1a7a1110b618a.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e310632fc899faa143b29e28e721529f9bf5343` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
