# application_val_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c43dd61c35d3d36651c01f53530ca36ac91fcb76",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 9937,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/87/87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a3e93fd3-863d-942b-cfa8-29f98a65bcbb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0ca5bc7e-25d0-50bb-7540-890960cf651d",
  "kind": "theorem",
  "lexical_name": "application_val_congr",
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
  "slug": "application-val-congr--a3cb3eb4189e3f5137d1cbf2",
  "source": {
    "blob": "c43dd61c35d3d36651c01f53530ca36ac91fcb76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 9965,
    "line": 9937,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3cb3eb4189e3f5137d1cbf2b2fdae909a4a79aab16336fe4ca38f159f7459c5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ca5bc7e-25d0-50bb-7540-890960cf651d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 9937–9965.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
 theorem application_val_congr {f n D E f' n' D' E' : Expr S}
    (h : HasType P Γ (.app f n) T) (h' : HasType P Δ (.app f' n') T')
    (hf : HasType P Γ f (.pi D E)) (hf' : HasType P Δ f' (.pi D' E'))
    (hn : HasType P Γ n D) (hn' : HasType P Δ n' D')
    (hc : Converts T (E.instantiate n)) (hc' : Converts T' (E'.instantiate n'))
    (ef : Evaluator (hw := hw) Ω C hno Γ f (.pi D E))
    (ef' : Evaluator (hw := hw) Ω C hno Δ f' (.pi D' E'))
    (en : Evaluator (hw := hw) Ω C hno Γ n D)
    (en' : Evaluator (hw := hw) Ω C hno Δ n' D')
    (e : Environment (hw := hw) Ω C hno Γ) (e' : Environment (hw := hw) Ω C hno Δ)
    (hT : (T.subst e.images).normalForm = (T'.subst e'.images).normalForm)
    (hF : (Expr.pi D E |>.subst e.images).normalForm = (Expr.pi D' E' |>.subst e'.images).normalForm)
    (hN : (n.subst e.images).normalForm = (n'.subst e'.images).normalForm)
    (hvf : ∀ ha ha', ((ef e).val ha).val = ((ef' e').val ha').val)
    (hvn : (en e).parameter = (en' e').parameter)
    (ha : ActiveLayer P C (Ω.profile (T.subst e.images).normalForm))
    (ha' : ActiveLayer P C (Ω.profile (T'.subst e'.images).normalForm)) :
    ((application h hf hn hc ef en e).val ha).val =
      ((application h' hf' hn' hc' ef' en' e').val ha').val := by
  by_cases hA : ActiveLayer P C (Ω.profile (Expr.pi D E |>.subst e.images).normalForm)
  · have hA' : ActiveLayer P C (Ω.profile (Expr.pi D' E' |>.subst e'.images).normalForm) := hF ▸ hA
    dsimp only [application,baseResult,applicationValue]
    simp only [dite_eq_left hA,dite_eq_left hA']
    apply applyValue_congr Ω C hno hF _ _ (hvf _ _) _ _ hN _ _ hvn
  · have hA' : ¬ ActiveLayer P C (Ω.profile (Expr.pi D' E' |>.subst e'.images).normalForm) := hF ▸ hA
    dsimp only [application,baseResult,applicationValue]
    simp only [dite_eq_right hA,dite_eq_right hA']
    exact distinguished_congr Ω C hno hT

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean#L9937).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c43dd61c35d3d36651c01f53530ca36ac91fcb76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
