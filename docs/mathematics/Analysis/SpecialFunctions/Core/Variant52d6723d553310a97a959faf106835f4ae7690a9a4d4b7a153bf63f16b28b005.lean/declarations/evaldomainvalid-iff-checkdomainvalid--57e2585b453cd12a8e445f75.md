# evalDomainValid_iff_checkDomainValid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "32fb82ba8b8c36521ad64b9d2daf0848859eb61f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 889,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2329fdc5-1c3d-eade-f05b-54d7f7959b9a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:939dd4a2-ee48-8f63-ce2b-f4857163a958",
  "kind": "theorem",
  "lexical_name": "evalDomainValid_iff_checkDomainValid",
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
  "slug": "evaldomainvalid-iff-checkdomainvalid--57e2585b453cd12a8e445f75",
  "source": {
    "blob": "32fb82ba8b8c36521ad64b9d2daf0848859eb61f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 969,
    "line": 889,
    "path": "GRWTSK/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57e2585b453cd12a8e445f752a266887e563dbfacf6664bfe7af6ee0afcba656",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:939dd4a2-ee48-8f63-ce2b-f4857163a958`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 889–969.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem evalDomainValid_iff_checkDomainValid (e : Expr) (ρ : IntervalEnv) (cfg : EvalConfig) :
    evalDomainValid e ρ cfg ↔ checkDomainValid e ρ cfg = true := by
  constructor
  · -- evalDomainValid → checkDomainValid
    intro h
    induction e with
    | const _ => rfl
    | var _ => rfl
    | add e₁ e₂ ih₁ ih₂ =>
      simp only [evalDomainValid] at h
      simp only [checkDomainValid, Bool.and_eq_true]
      exact ⟨ih₁ h.1, ih₂ h.2⟩
    | mul e₁ e₂ ih₁ ih₂ =>
      simp only [evalDomainValid] at h
      simp only [checkDomainValid, Bool.and_eq_true]
      exact ⟨ih₁ h.1, ih₂ h.2⟩
    | neg e ih =>
      simp only [evalDomainValid] at h
      simp only [checkDomainValid]
      exact ih h
    | inv e ih =>
      simp only [evalDomainValid] at h
      simp only [checkDomainValid]
      exact ih h
    | exp e ih =>
      simp only [evalDomainValid] at h
      simp only [checkDomainValid]
      exact ih h
    | sin e ih =>
      simp only [evalDomainValid] at h
      simp only [checkDomainValid]
      exact ih h
    | cos e ih =>
      simp only [evalDomainValid] at h
      simp only [checkDomainValid]
      exact ih h
    | log e ih =>
      simp only [evalDomainValid] at h
      simp only [checkDomainValid, Bool.and_eq_true, decide_eq_true_eq]
      exact ⟨ih h.1, h.2⟩
    | atan e ih =>
      simp only [evalDomainValid] at h
      simp only [checkDomainValid]
      exact ih h
    | arsinh e ih =>
      simp only [evalDomainValid] at h
      simp only [checkDomainValid]
      exact ih h
    | atanh e ih =>
      simp only [evalDomainValid] at h
      simp only [checkDomainValid]
      exact ih h
    | sinc e ih =>
      simp only [evalDomainValid] at h
      simp only [checkDomainValid]
      exact ih h
    | erf e ih =>
      simp only [evalDomainValid] at h
      simp only [checkDomainValid]
      exact ih h
    | sinh e ih =>
      simp only [evalDomainValid] at h
      simp only [checkDomainValid]
      exact ih h
    | cosh e ih =>
      simp only [evalDomainValid] at h
      simp only [checkDomainValid]
      exact ih h
    | tanh e ih =>
      simp only [evalDomainValid] at h
      simp only [checkDomainValid]
      exact ih h
    | sqrt e ih =>
      simp only [evalDomainValid] at h
      simp only [checkDomainValid]
      exact ih h
    | namedConst _ => rfl
  · -- checkDomainValid → evalDomainValid
    exact checkDomainValid_correct e ρ cfg

/-- Decidability instance for domain validity -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean#L889).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32fb82ba8b8c36521ad64b9d2daf0848859eb61f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
