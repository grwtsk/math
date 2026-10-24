# induction_subterms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cce31160-aa65-a8da-781e-bec9e867cf61",
  "kind": "theorem",
  "lexical_name": "induction_subterms",
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
  "slug": "induction-subterms--0239b14960feb2781470cbe8",
  "source": {
    "blob": "8d364e9c3ed17618824ff839edb851a0b5ac042b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 958,
    "line": 916,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0239b14960feb2781470cbe84551d269a3efbf21a9fb889c9029ed843d01666d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cce31160-aa65-a8da-781e-bec9e867cf61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 916–958.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem induction_subterms {Q : Expr S → Prop}
    (step : ∀ M, StronglyNormalizing M → (∀ N, Beta M N → Q N) →
      (∀ N, Expr.Child N M → Q N) → Q M)
    {M : Expr S} (hs : StronglyNormalizing M) : Q M := by
  have aux : ∀ M : Expr S, StronglyNormalizing M → ∀ N, Expr.Subterm N M → Q N := by
    intro M hs
    induction hs with
    | intro M hred ih =>
      intro N
      have hreds (N : Expr S) (hNM : Expr.Subterm N M) : ∀ L, Beta N L → Q L := by
        intro L hr
        obtain ⟨M',hr',hLM'⟩ := hNM.beta_lift hr
        exact ih M' hr' L hLM'
      induction N with
      | var n =>
        intro hn
        exact step _ (hn.sn (.intro M hred)) (hreds _ hn) (fun _ hc => by cases hc)
      | sort s =>
        intro hn
        exact step _ (hn.sn (.intro M hred)) (hreds _ hn) (fun _ hc => by cases hc)
      | app f a ihf iha =>
        intro hn
        apply step _ (hn.sn (.intro M hred)) (hreds _ hn)
        intro L hc
        cases hc with
        | app_left => exact ihf ((Expr.Subterm.of_child (.app_left f a)).trans hn)
        | app_right => exact iha ((Expr.Subterm.of_child (.app_right f a)).trans hn)
      | lam D m ihD ihm =>
        intro hn
        apply step _ (hn.sn (.intro M hred)) (hreds _ hn)
        intro L hc
        cases hc with
        | lam_domain => exact ihD ((Expr.Subterm.of_child (.lam_domain D m)).trans hn)
        | lam_body => exact ihm ((Expr.Subterm.of_child (.lam_body D m)).trans hn)
      | pi D E ihD ihE =>
        intro hn
        apply step _ (hn.sn (.intro M hred)) (hreds _ hn)
        intro L hc
        cases hc with
        | pi_domain => exact ihD ((Expr.Subterm.of_child (.pi_domain D E)).trans hn)
        | pi_body => exact ihE ((Expr.Subterm.of_child (.pi_body D E)).trans hn)
  exact aux M hs M (.refl M)
/-- The child hypothesis can equivalently cover every proper syntactic part. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean#L916).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d364e9c3ed17618824ff839edb851a0b5ac042b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
