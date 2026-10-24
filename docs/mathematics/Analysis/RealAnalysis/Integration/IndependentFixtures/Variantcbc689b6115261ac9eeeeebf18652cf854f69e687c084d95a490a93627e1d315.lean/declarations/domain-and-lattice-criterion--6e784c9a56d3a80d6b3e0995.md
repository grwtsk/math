# domain_and_lattice_criterion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fba80436468b086f21ce9fa78be5dc984388d2eb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 276,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cb/cbc689b6115261ac9eeeeebf18652cf854f69e687c084d95a490a93627e1d315.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d80e264d-317c-d8a9-06ac-95e14f0922f8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:60c9c5c0-cd91-b152-8885-b2fccdf45ab8",
  "kind": "theorem",
  "lexical_name": "domain_and_lattice_criterion",
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
  "slug": "domain-and-lattice-criterion--6e784c9a56d3a80d6b3e0995",
  "source": {
    "blob": "fba80436468b086f21ce9fa78be5dc984388d2eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 276,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IndependentFixtures/Variantcbc689b6115261ac9eeeeebf18652cf854f69e687c084d95a490a93627e1d315.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e784c9a56d3a80d6b3e0995dcea1ce71f446c85b4638dedf38b86370a300307",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IndependentFixtures/Variantcbc689b6115261ac9eeeeebf18652cf854f69e687c084d95a490a93627e1d315.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60c9c5c0-cd91-b152-8885-b2fccdf45ab8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem domain_and_lattice_criterion (p : ℕ) [Fact p.Prime] (t : ℚ_[p]) :
    (Supported t ∧ IntegralAt p t) ↔
      (Supported t ∧ ∀ x, IntegralVector p x → IntegralVector p (operation t x)) := by
  constructor
  · rintro ⟨hs, hi⟩
    exact ⟨hs, (integralAt_iff_preserves_integral p t).1 hi⟩
  · rintro ⟨hs, hi⟩
    exact ⟨hs, (integralAt_iff_preserves_integral p t).2 hi⟩

end PhaseIndependentReview
#check PhaseIndependentReview.unsupported_coefficients_zero
#print axioms PhaseIndependentReview.unsupported_coefficients_zero
#check PhaseIndependentReview.domain_and_lattice_criterion
#print axioms PhaseIndependentReview.domain_and_lattice_criterion
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IndependentFixtures/Variantcbc689b6115261ac9eeeeebf18652cf854f69e687c084d95a490a93627e1d315.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IndependentFixtures/Variantcbc689b6115261ac9eeeeebf18652cf854f69e687c084d95a490a93627e1d315.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fba80436468b086f21ce9fa78be5dc984388d2eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
