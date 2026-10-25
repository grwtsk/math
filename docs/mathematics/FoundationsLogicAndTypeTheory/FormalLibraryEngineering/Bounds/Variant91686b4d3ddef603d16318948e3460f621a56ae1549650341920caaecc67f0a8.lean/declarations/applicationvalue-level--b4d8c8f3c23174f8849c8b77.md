# applicationValue_level

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:87f997e9-84bd-a497-d74d-a3e382a391c9",
  "kind": "theorem",
  "lexical_name": "applicationValue_level",
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
  "slug": "applicationvalue-level--b4d8c8f3c23174f8849c8b77",
  "source": {
    "blob": "5bfe6cad9a8c758eabcd970b3091ffea72fa6e57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1015,
    "line": 985,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant91686b4d3ddef603d16318948e3460f621a56ae1549650341920caaecc67f0a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4d8c8f3c23174f8849c8b779b788250ef30b19f9b6eb5bdd1e223ab825c18ff",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant91686b4d3ddef603d16318948e3460f621a56ae1549650341920caaecc67f0a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87f997e9-84bd-a497-d74d-a3e382a391c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 985–1015.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem applicationValue_level {f n D E : Expr S} (h : HasType P Γ (.app f n) T)
    (hf : HasType P Γ f (.pi D E)) (hn : HasType P Γ n D) (hc : Converts T (E.instantiate n))
    (ef : Evaluator (hw := hw) Ω C hno Γ f (.pi D E)) (en : Evaluator (hw := hw) Ω C hno Γ n D)
    {F N : Nat → Nat} (huf : Uniform Ω C hno ef F) (hun : Uniform Ω C hno en N)
    (k : Nat) (e e' : Environment (hw := hw) Ω C hno Γ) (he : e.Bounded k) (he' : e'.Bounded k)
    (hee : e.LevelEq (appBound F N k) e')
    (ha : ActiveLayer P C (Ω.profile (T.subst e.images).normalForm))
    (ha' : ActiveLayer P C (Ω.profile (T.subst e'.images).normalForm)) :
    RawValue.LevelEq Ω C hno k (applicationValue h hf hn hc ef en e ha).val
      (applicationValue h hf hn hc ef en e' ha').val := by
  have ht := e.actual_type_eq hee.1 hf
  by_cases hF : ActiveLayer P C (Ω.profile (Expr.pi D E |>.subst e.images).normalForm)
  · have hF' : ActiveLayer P C (Ω.profile (Expr.pi D E |>.subst e'.images).normalForm) := ht ▸ hF
    simp only [applicationValue, hF, hF', dite_true]
    apply applyValue_level_of_type_eq Ω C hno (j := F k) (r := N k) ht
    · exact huf.val_bounded k e he _
    · exact huf.val_level (max k (N k)) e e'
        (e.bounded_mono (le_max_left _ _) he) (e'.bounded_mono (le_max_left _ _) he')
        (e.level_mono (by unfold appBound; omega) hee) _ _
    · exact e.actual_expr_eq hee.1 hn
    · exact hun.bounded k e he
    · apply Parameter.level_mono (le_max_right k (F k))
      exact (hun.compare (max k (F k)) e e'
        (e.bounded_mono (le_max_left _ _) he) (e'.bounded_mono (le_max_left _ _) he')
        (e.level_mono (by unfold appBound; omega) hee)).1
  · have hF' : ¬ ActiveLayer P C (Ω.profile (Expr.pi D E |>.subst e'.images).normalForm) := ht ▸ hF
    simp only [applicationValue, hF, hF', dite_false]
    have hA : e.activeType h ha = e'.activeType h ha' := ActiveType.ext (e.actual_type_eq hee.1 h)
    have hv := congrArg (fun A : ActiveType Ω C => (distinguished (hw := hw) Ω C hno A).val) hA
    rw [hv]
    exact RawValue.level_refl k _
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant91686b4d3ddef603d16318948e3460f621a56ae1549650341920caaecc67f0a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant91686b4d3ddef603d16318948e3460f621a56ae1549650341920caaecc67f0a8.lean#L985).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bfe6cad9a8c758eabcd970b3091ffea72fa6e57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
