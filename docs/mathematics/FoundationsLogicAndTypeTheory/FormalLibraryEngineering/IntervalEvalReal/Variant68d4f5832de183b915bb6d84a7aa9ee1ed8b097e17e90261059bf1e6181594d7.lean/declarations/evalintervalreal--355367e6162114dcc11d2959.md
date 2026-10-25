# evalIntervalReal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:88c3c55fcd5d3fddf133cea8c1695b5f8889e4527e6d436812950a80514e6117",
  "kind": "def",
  "lexical_name": "evalIntervalReal",
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
  "slug": "evalintervalreal--355367e6162114dcc11d2959",
  "source": {
    "blob": "b9fa3a8f17715b3de17331d875fa5600fc699909",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 84,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalReal/Variant68d4f5832de183b915bb6d84a7aa9ee1ed8b097e17e90261059bf1e6181594d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:355367e6162114dcc11d29598cd97ed0fd4abd3198a645b2035ec3fb7d2a5404",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalReal/Variant68d4f5832de183b915bb6d84a7aa9ee1ed8b097e17e90261059bf1e6181594d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:88c3c55fcd5d3fddf133cea8c1695b5f8889e4527e6d436812950a80514e6117`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def evalIntervalReal (e : Expr) (ρ : IntervalRealEnv) : IntervalReal :=
  match e with
  | Expr.const q => IntervalReal.singleton q
  | Expr.var idx => ρ idx
  | Expr.add e₁ e₂ => IntervalReal.add (evalIntervalReal e₁ ρ) (evalIntervalReal e₂ ρ)
  | Expr.mul e₁ e₂ => IntervalReal.mul (evalIntervalReal e₁ ρ) (evalIntervalReal e₂ ρ)
  | Expr.neg e => IntervalReal.neg (evalIntervalReal e ρ)
  | Expr.inv _ => ⟨0, 0, le_refl 0⟩  -- Unsupported: returns trivial interval
  | Expr.exp e => IntervalReal.expInterval (evalIntervalReal e ρ)
  | Expr.sin e => IntervalReal.sinInterval (evalIntervalReal e ρ)
  | Expr.cos e => IntervalReal.cosInterval (evalIntervalReal e ρ)
  | Expr.log _ => ⟨0, 0, le_refl 0⟩  -- Unsupported: returns trivial interval
  | Expr.atan e => IntervalReal.atanInterval (evalIntervalReal e ρ)
  | Expr.arsinh e => IntervalReal.arsinhInterval (evalIntervalReal e ρ)
  | Expr.atanh _ => ⟨0, 0, le_refl 0⟩  -- Partial function: returns trivial interval
  | Expr.sinc _ => ⟨-1, 1, by norm_num⟩  -- sinc is bounded by [-1, 1]
  | Expr.erf _ => ⟨-1, 1, by norm_num⟩  -- erf is bounded by [-1, 1]
  | Expr.sinh e => IntervalReal.sinhInterval (evalIntervalReal e ρ)
  | Expr.cosh e => IntervalReal.coshInterval (evalIntervalReal e ρ)
  | Expr.tanh _ => ⟨-1, 1, by norm_num⟩  -- tanh is bounded by (-1, 1)
  | Expr.sqrt e => IntervalReal.sqrtInterval (evalIntervalReal e ρ)
  | Expr.namedConst c => ⟨c.toReal, c.toReal, le_refl _⟩

/-- A real environment is contained in a real-interval environment -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalReal/Variant68d4f5832de183b915bb6d84a7aa9ee1ed8b097e17e90261059bf1e6181594d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalReal/Variant68d4f5832de183b915bb6d84a7aa9ee1ed8b097e17e90261059bf1e6181594d7.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9fa3a8f17715b3de17331d875fa5600fc699909` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
