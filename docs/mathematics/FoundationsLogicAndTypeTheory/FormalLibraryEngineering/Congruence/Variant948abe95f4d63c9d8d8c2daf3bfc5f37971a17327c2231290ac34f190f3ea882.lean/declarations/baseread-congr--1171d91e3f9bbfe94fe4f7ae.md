# baseRead_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5af9f727-1f36-15ce-b715-4b463c88161f",
  "kind": "theorem",
  "lexical_name": "baseRead_congr",
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
  "slug": "baseread-congr--1171d91e3f9bbfe94fe4f7ae",
  "source": {
    "blob": "fc8b46f226b462286f2b1ca9f76a4d37bb84c64a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 105,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant948abe95f4d63c9d8d8c2daf3bfc5f37971a17327c2231290ac34f190f3ea882.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1171d91e3f9bbfe94fe4f7aeee3435aaad3f406654ee79340a8a87bd0004e964",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant948abe95f4d63c9d8d8c2daf3bfc5f37971a17327c2231290ac34f190f3ea882.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5af9f727-1f36-15ce-b715-4b463c88161f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem baseRead_congr (h : HasType P Γ M T) (h' : HasType P Δ M' T')
    (hM : (M.subst e.images).normalForm = (M'.subst f.images).normalForm)
    (hT : (T.subst e.images).normalForm = (T'.subst f.images).normalForm)
    (hS : (∃ s : S, T = .sort s ∧ ({s} : Set S) ∈ C) ↔
      (∃ s : S, T' = .sort s ∧ ({s} : Set S) ∈ C))
    (v : ActiveLayer P C (Ω.profile (T.subst e.images).normalForm) →
      Value (hw := hw) Ω C hno (T.subst e.images).normalForm)
    (w : ActiveLayer P C (Ω.profile (T'.subst f.images).normalForm) →
      Value (hw := hw) Ω C hno (T'.subst f.images).normalForm)
    (hv : ∀ ha hb, (v ha).val = (w hb).val) :
    (baseRead h v).val = (baseRead h' w).val := by
  by_cases hm : Ω.profile (M.subst e.images).normalForm ∈ C
  · have hm' : Ω.profile (M'.subst f.images).normalForm ∈ C := hM ▸ hm
    by_cases hs : ∃ s : S, T = .sort s ∧ ({s} : Set S) ∈ C
    · have hs' := hS.mp hs
      by_cases ha : ActiveLayer P C (Ω.profile (T.subst e.images).normalForm)
      · have hb : ActiveLayer P C (Ω.profile (T'.subst f.images).normalForm) := hT ▸ ha
        simp only [baseRead,hm,hm',hs,hs',ha,hb,dite_true]
        have hX : e.actualExpression (hs.choose_spec.1 ▸ h) =
            f.actualExpression (hs'.choose_spec.1 ▸ h') := Subtype.ext hM
        rw [hv ha hb]
        exact congrArg (fun X : ActualType Ω => ((RawValue.base Ω C hno (w hb).val) X).val) hX
      · have hb : ¬ ActiveLayer P C (Ω.profile (T'.subst f.images).normalForm) := hT ▸ ha
        simp only [baseRead,hm,hm',hs,hs',ha,hb,dite_true,dite_false]
        exact congrArg (Candidates.Top Ω) hM
    · have hs' := mt hS.mpr hs
      simp only [baseRead,hm,hm',hs,hs',dite_true,dite_false]
      exact congrArg (Candidates.Top Ω) hM
  · have hm' : Ω.profile (M'.subst f.images).normalForm ∉ C := hM ▸ hm
    simp only [baseRead,hm,hm',dite_false]
    exact congrArg (Candidates.Top Ω) hM
end

variable {Ω C hno} {Γ Δ : List (Expr S)} {T T' : Expr S}
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant948abe95f4d63c9d8d8c2daf3bfc5f37971a17327c2231290ac34f190f3ea882.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant948abe95f4d63c9d8d8c2daf3bfc5f37971a17327c2231290ac34f190f3ea882.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc8b46f226b462286f2b1ca9f76a4d37bb84c64a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
