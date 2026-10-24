# checkDomainValidDyadic_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5b7e42ee5ea1c850273e30cb3d2b3f2230e0935b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 338,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d53bf27a-7207-dcd0-a377-e1fa8bd93600",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:16a43594-639b-8bdb-d69f-1c52b35cbbd1",
  "kind": "theorem",
  "lexical_name": "checkDomainValidDyadic_correct",
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
  "slug": "checkdomainvaliddyadic-correct--50519bc49c2e2a2b6ba0a858",
  "source": {
    "blob": "5b7e42ee5ea1c850273e30cb3d2b3f2230e0935b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 374,
    "line": 338,
    "path": "GRWTSK/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50519bc49c2e2a2b6ba0a8589b45947d19f0644404564b40fbf6b20e6d49d2a5",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16a43594-639b-8bdb-d69f-1c52b35cbbd1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 338–374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem checkDomainValidDyadic_correct (e : Expr) (ρ : IntervalDyadicEnv) (cfg : DyadicConfig) :
    checkDomainValidDyadic e ρ cfg = true → evalDomainValidDyadic e ρ cfg := by
  induction e with
  | const _ => intro; trivial
  | var _ => intro; trivial
  | add e₁ e₂ ih₁ ih₂ =>
    simp only [checkDomainValidDyadic, Bool.and_eq_true, evalDomainValidDyadic]
    intro ⟨h1, h2⟩; exact ⟨ih₁ h1, ih₂ h2⟩
  | mul e₁ e₂ ih₁ ih₂ =>
    simp only [checkDomainValidDyadic, Bool.and_eq_true, evalDomainValidDyadic]
    intro ⟨h1, h2⟩; exact ⟨ih₁ h1, ih₂ h2⟩
  | neg e ih =>
    simp only [checkDomainValidDyadic, evalDomainValidDyadic]; exact ih
  | inv e ih =>
    simp only [checkDomainValidDyadic, Bool.and_eq_true, Bool.or_eq_true,
      decide_eq_true_eq, evalDomainValidDyadic]
    intro ⟨h1, h2⟩; exact ⟨ih h1, h2⟩
  | exp e ih => simp only [checkDomainValidDyadic, evalDomainValidDyadic]; exact ih
  | sin e ih => simp only [checkDomainValidDyadic, evalDomainValidDyadic]; exact ih
  | cos e ih => simp only [checkDomainValidDyadic, evalDomainValidDyadic]; exact ih
  | log e ih =>
    simp only [checkDomainValidDyadic, Bool.and_eq_true, decide_eq_true_eq, evalDomainValidDyadic]
    intro ⟨h1, h2⟩; exact ⟨ih h1, h2⟩
  | atan e ih => simp only [checkDomainValidDyadic, evalDomainValidDyadic]; exact ih
  | arsinh e ih => simp only [checkDomainValidDyadic, evalDomainValidDyadic]; exact ih
  | atanh e ih =>
    simp only [checkDomainValidDyadic, Bool.and_eq_true, decide_eq_true_eq, evalDomainValidDyadic]
    intro ⟨⟨h1, h2⟩, h3⟩; exact ⟨ih h1, h2, h3⟩
  | sinc e ih => simp only [checkDomainValidDyadic, evalDomainValidDyadic]; exact ih
  | erf e ih => simp only [checkDomainValidDyadic, evalDomainValidDyadic]; exact ih
  | sinh e ih => simp only [checkDomainValidDyadic, evalDomainValidDyadic]; exact ih
  | cosh e ih => simp only [checkDomainValidDyadic, evalDomainValidDyadic]; exact ih
  | tanh e ih => simp only [checkDomainValidDyadic, evalDomainValidDyadic]; exact ih
  | sqrt e ih => simp only [checkDomainValidDyadic, evalDomainValidDyadic]; exact ih
  | namedConst _ => intro; trivial

/-- Domain validity is trivially true for ExprSupported expressions (which exclude log). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean#L338).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b7e42ee5ea1c850273e30cb3d2b3f2230e0935b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
