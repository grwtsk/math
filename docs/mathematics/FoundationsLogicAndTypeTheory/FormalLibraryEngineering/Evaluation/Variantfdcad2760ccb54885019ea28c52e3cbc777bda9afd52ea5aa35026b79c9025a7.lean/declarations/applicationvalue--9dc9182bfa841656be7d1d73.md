# applicationValue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:79ea136684a3e19ebf921e2cf6a2c1f429a19c8f8c3cdcc69c794cbc92bbb0d8",
  "kind": "def",
  "lexical_name": "applicationValue",
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
  "slug": "applicationvalue--9dc9182bfa841656be7d1d73",
  "source": {
    "blob": "f1364eced21911756fc8144bb689b7a45cbfe663",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 778,
    "line": 752,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Variantfdcad2760ccb54885019ea28c52e3cbc777bda9afd52ea5aa35026b79c9025a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9dc9182bfa841656be7d1d73c22ea56e93da148371792c0f005fa27a98a21239",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Variantfdcad2760ccb54885019ea28c52e3cbc777bda9afd52ea5aa35026b79c9025a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:79ea136684a3e19ebf921e2cf6a2c1f429a19c8f8c3cdcc69c794cbc92bbb0d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 752–778.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def applicationValue {f n D E : Expr S} (h : HasType P Γ (.app f n) T)
    (hf : HasType P Γ f (.pi D E)) (hn : HasType P Γ n D) (hc : Converts T (E.instantiate n))
    (ef : ∀ e : Environment (hw := hw) Ω C hno Γ, PreResult Ω C hno f (.pi D E) e)
    (en : ∀ e : Environment (hw := hw) Ω C hno Γ, PreResult Ω C hno n D e)
    (e : Environment (hw := hw) Ω C hno Γ) (ha : ActiveLayer P C (Ω.profile (T.subst
      e.images).normalForm)) :
    Value (hw := hw) Ω C hno (T.subst e.images).normalForm := by
  let Ta := e.activeType h ha
  by_cases hF : ActiveLayer P C (Ω.profile (Expr.pi D E |>.subst e.images).normalForm)
  · let t := ProductInstance.ofFunction hf e
    let Fa := e.activeType hf hF
    have he : Fa.type = .pi t.domainNF t.bodyNF := t.product_nf
    have hn' : Ω.HasType (n.subst e.images) t.domainNF :=
      (ContextTower.HasType.subst hn e.typed).normalize_type hw
    have ht : (T.subst e.images).normalForm = t.targetNF (n.subst e.images) := by
      have hh := e.type_convert_eq h (HasType.application hf hn) hc
      simpa only [ProductInstance.targetNF, ProductInstance.rawTarget,
        t, ProductInstance.ofFunction, ProductInstance.ofFormation,
        ← Expr.instantiate_subst, Expr.instantiate_liftSub] using hh
    have ha' : ActiveLayer P C (Ω.profile (t.targetNF (n.subst e.images))) := ht ▸ ha
    let k := t.argumentFrame he hn' ha'
    have hk : (k.target hw).type = (T.subst e.images).normalForm :=
      (t.argumentFrame_type he hn' ha').trans ht.symm
    let v := applyValue Ω C hno Fa ((ef e).val hF) k (en e).parameter (en e).parameter_fits
    exact ⟨v.val, hk ▸ v.property⟩
  · exact distinguished Ω C hno Ta
open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Variantfdcad2760ccb54885019ea28c52e3cbc777bda9afd52ea5aa35026b79c9025a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Variantfdcad2760ccb54885019ea28c52e3cbc777bda9afd52ea5aa35026b79c9025a7.lean#L752).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1364eced21911756fc8144bb689b7a45cbfe663` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
