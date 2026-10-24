# checkDomainValidDyadic_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3be040b5-09f3-075c-d112-7a3bd0d3b816",
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
  "slug": "checkdomainvaliddyadic-correct--c859324953e5d04b7c23a064",
  "source": {
    "blob": "416f03a2e1f7ed79cc306cd97a6cc17f15baf6aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 382,
    "line": 346,
    "path": "GRWTSK/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c859324953e5d04b7c23a064ee0e44647ae49def3a9438b5fb4a3b278b8cddcf",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3be040b5-09f3-075c-d112-7a3bd0d3b816`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 346–382.

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

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean#L346).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `416f03a2e1f7ed79cc306cd97a6cc17f15baf6aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
