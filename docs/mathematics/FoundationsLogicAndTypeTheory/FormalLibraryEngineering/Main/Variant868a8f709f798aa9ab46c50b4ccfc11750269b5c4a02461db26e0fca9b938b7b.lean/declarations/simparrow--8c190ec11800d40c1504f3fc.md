# simpArrow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4c95f9bc2f65b08813e88b4967b35f44b2a68ee0e8ea8053e91b7ef8137bc6b1",
  "kind": "def",
  "lexical_name": "simpArrow",
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
  "slug": "simparrow--8c190ec11800d40c1504f3fc",
  "source": {
    "blob": "b648566cb9eb4c6aad421ead0e849092fcf4cffa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 364,
    "line": 333,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant868a8f709f798aa9ab46c50b4ccfc11750269b5c4a02461db26e0fca9b938b7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8c190ec11800d40c1504f3fcb69753b5dff8604dfec897e3b039996216f89017",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant868a8f709f798aa9ab46c50b4ccfc11750269b5c4a02461db26e0fca9b938b7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4c95f9bc2f65b08813e88b4967b35f44b2a68ee0e8ea8053e91b7ef8137bc6b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 333–364.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def simpArrow (e : Expr) : SimpM Result := do
  trace[Debug.Meta.Tactic.simp] "arrow {e}"
  let p := e.bindingDomain!
  let q := e.bindingBody!
  let rp ← simp p
  trace[Debug.Meta.Tactic.simp] "arrow [{(← getConfig).contextual}] {p} [{← isProp p}] -> {q} [{← isProp q}]"
  if (← pure (← getConfig).contextual <&&> isProp p <&&> isProp q) then
    trace[Debug.Meta.Tactic.simp] "ctx arrow {rp.expr} -> {q}"
    withLocalDeclD e.bindingName! rp.expr fun h => withNewLemmas #[h] do
      let rq ← simp q
      match rq.proof? with
      | none    => mkImpCongr e rp rq
      | some hq =>
        let hq ← mkLambdaFVars #[h] hq
        /-
          We use the default reducibility setting at `mkImpDepCongrCtx` and `mkImpCongrCtx` because they use the theorems
          ```lean
          @implies_dep_congr_ctx : ∀ {p₁ p₂ q₁ : Prop}, p₁ = p₂ → ∀ {q₂ : p₂ → Prop}, (∀ (h : p₂), q₁ = q₂ h) → (p₁ → q₁) = ∀ (h : p₂), q₂ h
          @implies_congr_ctx : ∀ {p₁ p₂ q₁ q₂ : Prop}, p₁ = p₂ → (p₂ → q₁ = q₂) → (p₁ → q₁) = (p₂ → q₂)
          ```
          And the proofs may be from `rfl` theorems which are now omitted. Moreover, we cannot establish that the two
          terms are definitionally equal using `withReducible`.
          TODO (better solution): provide the problematic implicit arguments explicitly. It is more efficient and avoids this
          problem.
          -/
        if rq.expr.containsFVar h.fvarId! then
          return { expr := (← mkForallFVars #[h] rq.expr), proof? := (← withDefault <| mkImpDepCongrCtx (← rp.getProof) hq) }
        else
          return { expr := e.updateForallE! rp.expr rq.expr, proof? := (← withDefault <| mkImpCongrCtx (← rp.getProof) hq) }
  else
    mkImpCongr e rp (← simp q)

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant868a8f709f798aa9ab46c50b4ccfc11750269b5c4a02461db26e0fca9b938b7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant868a8f709f798aa9ab46c50b4ccfc11750269b5c4a02461db26e0fca9b938b7b.lean#L333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b648566cb9eb4c6aad421ead0e849092fcf4cffa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
