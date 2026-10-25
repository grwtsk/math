# goodness_recontext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:67562d34-1499-d3bc-3707-aeb460f4d288",
  "kind": "theorem",
  "lexical_name": "goodness_recontext",
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
  "slug": "goodness-recontext--1a5d12556917bfc9941f350b",
  "source": {
    "blob": "2fbb66912a1a80a00041a163ce8e859aa20dc057",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 723,
    "line": 689,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf92e530cf84ae3a287ac48c2e3ba1dacc60a1447ca74d8f6098be7991038b07d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a5d12556917bfc9941f350b52d3194be9a955fdbbf5dfd45ee8822d3b7a8b28",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf92e530cf84ae3a287ac48c2e3ba1dacc60a1447ca74d8f6098be7991038b07d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67562d34-1499-d3bc-3707-aeb460f4d288`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 689–723.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goodness_recontext {Γ : List (Expr S)} {M T : Expr S} (t : TypingTree P Γ M T)
    {Δ : List (Expr S)} (h : ContextEquivalent P Γ Δ) (ξ : Nat → Expr S) :
    goodness Ω C (t.recontext h) ξ = goodness Ω C t ξ := by
  induction t generalizing Δ ξ with
  | var ht hd hc => rfl
  | sort ht ha hc => rfl
  | @abstraction Γ D m E a s T ht d b hp hc ihd ihb =>
      have hv : (∀ n, Ω.HasType n (D.subst ξ) → ActiveLayer P C (Ω.profile (E.subst
        (Expr.consSub n ξ))) →
          (goodness Ω C (b.recontext (h.cons d.typing)) (Expr.consSub n ξ)).1) =
        (∀ n, Ω.HasType n (D.subst ξ) → ActiveLayer P C (Ω.profile (E.subst (Expr.consSub n ξ))) →
          (goodness Ω C b (Expr.consSub n ξ)).1) := by simp only [ihb]
      exact congrArg (fun G => (G,baseGood Ω C (.lam D m) T ξ G)) hv
  | @application Γ f n D E T ht ft nt hc ihf ihn =>
      have hv : (if ActiveLayer P C (Ω.profile ((Expr.pi D E).subst ξ)) then
          (goodness Ω C (ft.recontext h) ξ).1 ∧
            (ActiveLayer P C (Ω.profile (D.subst ξ)) → (goodness Ω C (nt.recontext h) ξ).1)
          else Neutral (.app f n)) =
        (if ActiveLayer P C (Ω.profile ((Expr.pi D E).subst ξ)) then
          (goodness Ω C ft ξ).1 ∧
            (ActiveLayer P C (Ω.profile (D.subst ξ)) → (goodness Ω C nt ξ).1)
          else Neutral (.app f n)) := by simp only [ihf,ihn]
      exact congrArg (fun G => (G,baseGood Ω C (.app f n) T ξ G)) hv
  | @product Γ D E a b c T ht d b hr hc ihd ihb =>
      have hg : ((Ω.profile (D.subst ξ) ∈ C → (goodness Ω C (d.recontext h) ξ).2) ∧
          ∀ n, Ω.HasType n (D.subst ξ) → Ω.profile (E.subst (Expr.consSub n ξ)) ∈ C →
            (goodness Ω C (b.recontext (h.cons d.typing)) (Expr.consSub n ξ)).2) =
        ((Ω.profile (D.subst ξ) ∈ C → (goodness Ω C d ξ).2) ∧
          ∀ n, Ω.HasType n (D.subst ξ) → Ω.profile (E.subst (Expr.consSub n ξ)) ∈ C →
            (goodness Ω C b (Expr.consSub n ξ)).2) := by simp only [ihd,ihb]
      exact congrArg (fun G => ((({c} : Set S) ∈ C ∧ Ω.profile ((Expr.pi D E).subst ξ) ∈ C → G),
        (Ω.profile ((Expr.pi D E).subst ξ) ∈ C → G))) hg

omit [Fintype S] in
open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf92e530cf84ae3a287ac48c2e3ba1dacc60a1447ca74d8f6098be7991038b07d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf92e530cf84ae3a287ac48c2e3ba1dacc60a1447ca74d8f6098be7991038b07d.lean#L689).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fbb66912a1a80a00041a163ce8e859aa20dc057` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
