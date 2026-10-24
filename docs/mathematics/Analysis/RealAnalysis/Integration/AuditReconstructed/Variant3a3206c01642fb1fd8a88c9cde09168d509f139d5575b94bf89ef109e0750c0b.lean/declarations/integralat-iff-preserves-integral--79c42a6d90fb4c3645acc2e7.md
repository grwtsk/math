# integralAt_iff_preserves_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bc51d0223ec17b1c3d5913552a7d2dd7ba9c3a3b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 178,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d57c7466-d40f-e20d-f91e-316b99ab51d2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c0e5677c-5bd1-9c7d-0901-7da34c74a8b8",
  "kind": "theorem",
  "lexical_name": "integralAt_iff_preserves_integral",
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
  "slug": "integralat-iff-preserves-integral--79c42a6d90fb4c3645acc2e7",
  "source": {
    "blob": "bc51d0223ec17b1c3d5913552a7d2dd7ba9c3a3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 178,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79c42a6d90fb4c3645acc2e7d2c095aef6f93e6c40423604354a4aa8bdf8f4a8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0e5677c-5bd1-9c7d-0901-7da34c74a8b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integralAt_iff_preserves_integral (t : ℚ_[p]) :
    IntegralAt p t ↔ ∀ x, IntegralVector p x → IntegralVector p (operation t x) := by
  constructor
  · intro ht x hx
    exact operation_integral p ht hx
  · intro h
    have hv : IntegralVector p ((1 : ℚ_[p]), 0) := by simp [IntegralVector]
    have hc := h _ hv
    simpa [IntegralAt, IntegralVector, operation_eq_coefficients] using hc

end IntegralCorrection

section LocalDomainFixtures

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc51d0223ec17b1c3d5913552a7d2dd7ba9c3a3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
