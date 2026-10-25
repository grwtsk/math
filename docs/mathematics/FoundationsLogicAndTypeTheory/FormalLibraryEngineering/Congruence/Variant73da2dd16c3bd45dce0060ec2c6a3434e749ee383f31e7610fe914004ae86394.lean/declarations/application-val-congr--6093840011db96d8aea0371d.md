# application_val_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a907529-a024-c7bb-5463-506919cb61e0",
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
  "slug": "application-val-congr--6093840011db96d8aea0371d",
  "source": {
    "blob": "96d3ffeb86b9dc10530fed949ca0490756771eb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 175,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant73da2dd16c3bd45dce0060ec2c6a3434e749ee383f31e7610fe914004ae86394.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6093840011db96d8aea0371d8db611e0100ef17666a3f6eef48e8de6e8a1fce6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant73da2dd16c3bd45dce0060ec2c6a3434e749ee383f31e7610fe914004ae86394.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a907529-a024-c7bb-5463-506919cb61e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–204.

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
    (hF : (Expr.pi D E |>.subst e.images).normalForm = (Expr.pi D' E' |>.subst
      e'.images).normalForm)
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
    simp only [dif_pos hA,dif_pos hA']
    apply applyValue_congr Ω C hno hF _ _ (hvf _ _) _ _ hN _ _ hvn
  · have hA' : ¬ ActiveLayer P C (Ω.profile (Expr.pi D' E' |>.subst e'.images).normalForm) :=
    hF ▸ hA
    dsimp only [application,baseResult,applicationValue]
    simp only [dif_neg hA,dif_neg hA']
    exact distinguished_congr Ω C hno hT
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant73da2dd16c3bd45dce0060ec2c6a3434e749ee383f31e7610fe914004ae86394.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant73da2dd16c3bd45dce0060ec2c6a3434e749ee383f31e7610fe914004ae86394.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96d3ffeb86b9dc10530fed949ca0490756771eb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
