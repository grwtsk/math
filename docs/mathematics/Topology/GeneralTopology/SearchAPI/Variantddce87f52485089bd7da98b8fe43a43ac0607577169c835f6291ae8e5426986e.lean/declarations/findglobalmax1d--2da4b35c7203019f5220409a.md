# findGlobalMax1D

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:74fd2628bcf46877701f1254989b0ae1074e75824318ececc5d5b31f623ab19d",
  "kind": "def",
  "lexical_name": "findGlobalMax1D",
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
  "slug": "findglobalmax1d--2da4b35c7203019f5220409a",
  "source": {
    "blob": "152a9c94ededf1c30de77d810668fcef69953a87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 371,
    "line": 338,
    "path": "GRWTSK/Topology/GeneralTopology/SearchAPI/Variantddce87f52485089bd7da98b8fe43a43ac0607577169c835f6291ae8e5426986e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2da4b35c7203019f5220409a06172a1714b440dc0592d87897df1b54c66036bd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SearchAPI/Variantddce87f52485089bd7da98b8fe43a43ac0607577169c835f6291ae8e5426986e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:74fd2628bcf46877701f1254989b0ae1074e75824318ececc5d5b31f623ab19d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 338–371.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def findGlobalMax1D (e : Expr) (hsupp : ExprSupported e)
    (he1d : e.usesOnlyVar0 = true)
    (I : IntervalRat) (cfg : OptSearchConfig := {}) :
    GlobalMax1DResult e I :=
  let B := intervalToBox I
  let result := findGlobalMax e hsupp B cfg
  {
    maximizerInterval := result.maximizerBox.head!
    maxValue := result.maxValue
    upperBoundProof := fun x hx => by
      let ρ : Nat → ℝ := fun n => if n = 0 then x else 0
      have hρ : Box.envMem ρ B := by
        intro ⟨i, hi⟩
        simp only [B, intervalToBox] at hi ⊢
        have hi0 : i = 0 := Nat.lt_one_iff.mp hi
        subst hi0
        simp only [List.getElem_cons_zero, ρ, ↓reduceIte]
        exact hx
      have hzero : ∀ i, i ≥ B.length → ρ i = 0 := by
        intro i hi
        simp only [B, intervalToBox, List.length_singleton] at hi
        simp only [ρ]
        split_ifs with h0
        · subst h0; omega
        · rfl
      have hub := result.upperBoundProof ρ hρ hzero
      -- Use eval_1d_equiv to show Expr.eval ρ e = Expr.eval (fun _ => x) e
      rw [Expr.eval_1d_equiv e he1d x] at hub
      exact hub
  }

/-! ## Integration API (0.1.3) -/

/-- Configuration for integration search -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SearchAPI/Variantddce87f52485089bd7da98b8fe43a43ac0607577169c835f6291ae8e5426986e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SearchAPI/Variantddce87f52485089bd7da98b8fe43a43ac0607577169c835f6291ae8e5426986e.lean#L338).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `152a9c94ededf1c30de77d810668fcef69953a87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
