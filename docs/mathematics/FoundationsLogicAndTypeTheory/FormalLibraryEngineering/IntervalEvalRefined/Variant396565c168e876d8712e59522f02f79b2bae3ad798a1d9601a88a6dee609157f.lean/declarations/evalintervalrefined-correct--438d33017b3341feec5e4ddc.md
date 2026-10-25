# evalIntervalRefined_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d46512b5-3fdf-694e-a5b3-6f65ac4fe1d2",
  "kind": "theorem",
  "lexical_name": "evalIntervalRefined_correct",
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
  "slug": "evalintervalrefined-correct--438d33017b3341feec5e4ddc",
  "source": {
    "blob": "6c83dfd87eac9a54170b6c152970ec7ba800b89d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 217,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalRefined/Variant396565c168e876d8712e59522f02f79b2bae3ad798a1d9601a88a6dee609157f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:438d33017b3341feec5e4ddcd3744db116ab1879bcf7d54733f6f057d68e7249",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalRefined/Variant396565c168e876d8712e59522f02f79b2bae3ad798a1d9601a88a6dee609157f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d46512b5-3fdf-694e-a5b3-6f65ac4fe1d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem evalIntervalRefined_correct (e : Expr) (hsupp : ExprSupported e)
    (ρ_real : Nat → ℝ) (ρ_int : IntervalEnv) (hρ : envMem ρ_real ρ_int) :
    Expr.eval ρ_real e ∈ evalIntervalRefined e ρ_int := by
  induction hsupp with
  | const q =>
    simp only [evalIntervalRefined, Expr.eval_const]
    exact IntervalRat.mem_singleton q
  | var i =>
    simp only [evalIntervalRefined, Expr.eval_var]
    exact hρ i
  | add h₁ h₂ ih₁ ih₂ =>
    simp only [evalIntervalRefined, Expr.eval_add]
    exact IntervalRat.mem_add ih₁ ih₂
  | mul h₁ h₂ ih₁ ih₂ =>
    simp only [evalIntervalRefined, Expr.eval_mul]
    exact IntervalRat.mem_mul ih₁ ih₂
  | neg h ih =>
    simp only [evalIntervalRefined, Expr.eval_neg]
    exact IntervalRat.mem_neg ih
  | sin h ih =>
    simp only [evalIntervalRefined, Expr.eval_sin]
    exact mem_sinIntervalRefined ih
  | cos h ih =>
    simp only [evalIntervalRefined, Expr.eval_cos]
    exact mem_cosIntervalRefined ih
  | exp h ih =>
    simp only [evalIntervalRefined, Expr.eval_exp]
    exact mem_expIntervalRefined ih

/-- Single-variable refined evaluation is correct -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalRefined/Variant396565c168e876d8712e59522f02f79b2bae3ad798a1d9601a88a6dee609157f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalRefined/Variant396565c168e876d8712e59522f02f79b2bae3ad798a1d9601a88a6dee609157f.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c83dfd87eac9a54170b6c152970ec7ba800b89d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
