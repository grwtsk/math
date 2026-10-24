# evalInterval?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7d655062235d21f49948ae4e60516ec5c952e51d6305fc13463f3fa24fba2b20",
  "kind": "def",
  "lexical_name": "evalInterval?",
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
  "slug": "evalinterval--14812b78ce753d81b09bca8d",
  "source": {
    "blob": "27744526be1e5c5eaa4a13c9532b6b350bf57077",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 141,
    "path": "GRWTSK/Analysis/SpecialFunctions/Extended/Variantf65c0d50a9d3fba4c7c1f0152875f6b0de056152c29d922c423ea6a7d4efccf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:14812b78ce753d81b09bca8de93fa33874dc488cc7dbfa2068070a96ab64918e",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Extended/Variantf65c0d50a9d3fba4c7c1f0152875f6b0de056152c29d922c423ea6a7d4efccf6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7d655062235d21f49948ae4e60516ec5c952e51d6305fc13463f3fa24fba2b20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalInterval? (e : Expr) (ρ : IntervalEnv) : Option IntervalRat :=
  match e with
  | Expr.const q => some (IntervalRat.singleton q)
  | Expr.var idx => some (ρ idx)
  | Expr.add e₁ e₂ =>
      match evalInterval? e₁ ρ, evalInterval? e₂ ρ with
      | some I₁, some I₂ => some (IntervalRat.add I₁ I₂)
      | _, _ => none
  | Expr.mul e₁ e₂ =>
      match evalInterval? e₁ ρ, evalInterval? e₂ ρ with
      | some I₁, some I₂ => some (IntervalRat.mul I₁ I₂)
      | _, _ => none
  | Expr.neg e =>
      match evalInterval? e ρ with
      | some I => some (IntervalRat.neg I)
      | none => none
  | Expr.inv e₁ =>
      match evalInterval? e₁ ρ with
      | none => none
      | some J =>
          if h : IntervalRat.containsZero J then
            none
          else
            some (IntervalRat.invNonzero ⟨J, h⟩)
  | Expr.exp e =>
      match evalInterval? e ρ with
      | some I => some (IntervalRat.expComputable I evalIntervalExpDepth)
      | none => none
  | Expr.sin e =>
      match evalInterval? e ρ with
      | some I => some (sinInterval I)
      | none => none
  | Expr.cos e =>
      match evalInterval? e ρ with
      | some I => some (cosInterval I)
      | none => none
  | Expr.log e =>
      match evalInterval? e ρ with
      | none => none
      | some J =>
          if h : IntervalRat.isPositive J then
            some (IntervalRat.logComputable J evalIntervalLogDepth)
          else
            none
  | Expr.atan e =>
      match evalInterval? e ρ with
      | some I => some (atanInterval I)
      | none => none
  | Expr.arsinh e =>
      match evalInterval? e ρ with
      | some I => some (arsinhInterval I)
      | none => none
  | Expr.atanh _ =>
      -- atanh is partial (defined only for |x| < 1) and requires complex bounds
      -- We return none to avoid the complexity of proving atanh bounds
      none
  | Expr.sinc e =>
      match evalInterval? e ρ with
      | some _ => some ⟨-1, 1, by norm_num⟩  -- sinc is bounded by [-1, 1]
      | none => none
  | Expr.erf e =>
      match evalInterval? e ρ with
      | some _ => some ⟨-1, 1, by norm_num⟩  -- erf is bounded by [-1, 1]
      | none => none
  | Expr.sinh e =>
      match evalInterval? e ρ with
      | some I => some (sinhInterval I)
      | none => none
  | Expr.cosh e =>
      match evalInterval? e ρ with
      | some I => some (coshInterval I)
      | none => none
  | Expr.tanh e =>
      match evalInterval? e ρ with
      | some I => some (tanhInterval I)
      | none => none
  | Expr.sqrt e =>
      match evalInterval? e ρ with
      | some I => some (IntervalRat.sqrtInterval I)
      | none => none
  | Expr.namedConst c => some c.interval

/-- Main correctness theorem for evalInterval? (approach 1 from plan).

    When evalInterval? returns `some I`:
    1. The expression evaluates to a value in I for all ρ_real ∈ ρ_int
    2. All inv denominators along the evaluation are guaranteed nonzero
       (because their intervals don't contain zero)

    This follows your suggestion to keep ExprSupported syntactic and add
    separate semantic hypotheses. The key insight is that if evalInterval?
    succeeds (returns Some), the interval arithmetic has already verified
    that no denominator interval contains zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Extended/Variantf65c0d50a9d3fba4c7c1f0152875f6b0de056152c29d922c423ea6a7d4efccf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Extended/Variantf65c0d50a9d3fba4c7c1f0152875f6b0de056152c29d922c423ea6a7d4efccf6.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27744526be1e5c5eaa4a13c9532b6b350bf57077` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
