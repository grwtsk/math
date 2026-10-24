# least_forbidden_rise_is_contact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:48df8a57-8d7d-5cc6-905f-6fd7936df667",
  "kind": "theorem",
  "lexical_name": "least_forbidden_rise_is_contact",
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
  "slug": "least-forbidden-rise-is-contact--2381080e130378d790756e06",
  "source": {
    "blob": "e33b3857550327b8c31b331115200ab9e68512e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 86,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ContactSelection/Variant0926f3e3f5a42f4227b65031b038620296b4324c7574bfcf9c1944ba3bbde975.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2381080e130378d790756e065096ba584f5f5aee72e49f2f2931da2977f7f7b7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ContactSelection/Variant0926f3e3f5a42f4227b65031b038620296b4324c7574bfcf9c1944ba3bbde975.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48df8a57-8d7d-5cc6-905f-6fd7936df667`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem least_forbidden_rise_is_contact (N : ℕ) {R : ℝ} (hR : 0 ≤ R)
    (hex : ∃ K : ℕ, R < ordinaryPrimePrimitive (N + K : ℕ) - ordinaryPrimePrimitive N) :
    ∃ K : ℕ, 0 < K ∧
      primeRecordLevel N K = ordinaryPrimePrimitive (N + K : ℕ) - ordinaryPrimePrimitive N ∧
      R < actualSuffix N K 0 ∧ (∀ j : ℕ, j < K → 0 < actualSuffix N K j) := by
  obtain ⟨K, hK, hRfinal, hpositive, hterminal⟩ :=
    FirstCrossingSelection.least_forbidden_rise_selects_positive_suffix N hR hex
  refine ⟨K, hK, (actual_contact_iff_suffixes_nonnegative N K).mpr ?_, hRfinal, hpositive⟩
  intro j hj
  rcases lt_or_eq_of_le hj with hjlt | hjeq
  · exact (hpositive j hjlt).le
  · subst j
    rw [hterminal]

end
end GRWTSK.RiemannHypothesis.Conversation.ContactSelection
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ContactSelection/Variant0926f3e3f5a42f4227b65031b038620296b4324c7574bfcf9c1944ba3bbde975.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ContactSelection/Variant0926f3e3f5a42f4227b65031b038620296b4324c7574bfcf9c1944ba3bbde975.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e33b3857550327b8c31b331115200ab9e68512e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
