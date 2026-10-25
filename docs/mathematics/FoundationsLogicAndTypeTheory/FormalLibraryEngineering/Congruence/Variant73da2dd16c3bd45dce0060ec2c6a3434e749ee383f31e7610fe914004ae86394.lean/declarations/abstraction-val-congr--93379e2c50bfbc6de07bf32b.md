# abstraction_val_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a1428d71-abb0-0707-23aa-5d2c8d55d3cd",
  "kind": "theorem",
  "lexical_name": "abstraction_val_congr",
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
  "slug": "abstraction-val-congr--93379e2c50bfbc6de07bf32b",
  "source": {
    "blob": "96d3ffeb86b9dc10530fed949ca0490756771eb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 158,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant73da2dd16c3bd45dce0060ec2c6a3434e749ee383f31e7610fe914004ae86394.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93379e2c50bfbc6de07bf32bb9aac33ce40c12b969ddb10b5f12698aa47fdde8",
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

Occurrence: `result:a1428d71-abb0-0707-23aa-5d2c8d55d3cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abstraction_val_congr {D m E D' m' E' : Expr S} {s s' : S}
    (h : HasType P Γ (.lam D m) T) (h' : HasType P Δ (.lam D' m') T')
    (hp : HasType P Γ (.pi D E) (.sort s)) (hp' : HasType P Δ (.pi D' E') (.sort s'))
    (hc : Converts T (.pi D E)) (hc' : Converts T' (.pi D' E'))
    (eb : Evaluator (hw := hw) Ω C hno (D :: Γ) m E)
    (eb' : Evaluator (hw := hw) Ω C hno (D' :: Δ) m' E')
    (e : Environment (hw := hw) Ω C hno Γ) (e' : Environment (hw := hw) Ω C hno Δ)
    (hT : (T.subst e.images).normalForm = (T'.subst e'.images).normalForm)
    (hb : ∀ n n' (hn : Ω.HasType n (D.subst e.images)) (hn' : Ω.HasType n' (D'.subst e'.images)),
      n = n' → ∀ p hp hp' ha ha',
        ((eb (e.cons hn p hp)).val ha).val = ((eb' (e'.cons hn' p hp')).val ha').val)
    (ha : ActiveLayer P C (Ω.profile (T.subst e.images).normalForm))
    (ha' : ActiveLayer P C (Ω.profile (T'.subst e'.images).normalForm)) :
    ((abstraction h hp hc eb e).val ha).val =
      ((abstraction h' hp' hc' eb' e').val ha').val := by
  apply lambdaValue_congr Ω C hno hT
  exact abstractionAction_congr h h' hp hp' hc hc' eb eb' e e' hb ha ha'
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant73da2dd16c3bd45dce0060ec2c6a3434e749ee383f31e7610fe914004ae86394.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant73da2dd16c3bd45dce0060ec2c6a3434e749ee383f31e7610fe914004ae86394.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96d3ffeb86b9dc10530fed949ca0490756771eb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
