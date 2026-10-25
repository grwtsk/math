# choices_select

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:04f82e11-41c9-b5bc-bafe-6d55517f0c49",
  "kind": "theorem",
  "lexical_name": "choices_select",
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
  "slug": "choices-select--c16c63d582ff5ffce5818363",
  "source": {
    "blob": "671204504e601f15ffbc630afc2f2b204f0486e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 272,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variantb9e0d96626729a7bedfdd3130607d1be8825641c7ad02f01b66ded5552c1643f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c16c63d582ff5ffce58183632f48a5eaf4440de9927af3b97f4824178f056f08",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variantb9e0d96626729a7bedfdd3130607d1be8825641c7ad02f01b66ded5552c1643f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04f82e11-41c9-b5bc-bafe-6d55517f0c49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem choices_select [DecidableEq α] (xs : List α) (q : α) (hq : q ∈ xs)
    (hnd : xs.Nodup) (hm : ∀ t ∈ xs, L.Formula (mark t))
    (hp : ∀ t ∈ xs, L.Formula (property t))
    (hn : ∀ t ∈ xs, Proves P Γ γ (L.code.sign (decide (q = t)) (mark t))) :
    Equivalent P Γ γ (L.code.choices xs mark property) (property q) := by
  induction xs with
  | nil => simp at hq
  | cons t ts ih =>
    have ht := hm t (by simp)
    have hpt := hp t (by simp)
    have hmt : ∀ s ∈ ts, L.Formula (mark s) := fun s hs => hm s (by simp [hs])
    have hps : ∀ s ∈ ts, L.Formula (property s) := fun s hs => hp s (by simp [hs])
    have hc := L.choices_formula ts hmt hps
    have hnt := hn t (by simp)
    by_cases he : q = t
    · subst q
      have hi := L.choices_false ts hmt hps (fun s hs => by
        have hne : t ≠ s := fun he => (List.nodup_cons.mp hnd).1 (he ▸ hs)
        simpa only [hne,decide_false,LogicCode.sign,Bool.false_eq_true,ite_false,
          LogicSetup.code_neg] using hn s (by simp [hs]))
      simp only [decide_true,LogicCode.sign,ite_true] at hnt
      apply L.equivalent_of_iff (L.choices_formula (t::ts) hm hp) hpt
      change Proves P Γ γ (L.iff (L.disj (L.conj (mark t) (property t)) (L.code.choices ts
        mark property)) (property t))
      pts_pl L using [hnt,hi]
    · have hqt : q ∈ ts := (List.mem_cons.mp hq).resolve_left he
      have hi := ih hqt (List.nodup_cons.mp hnd).2 hmt hps (fun s hs => hn s (by simp [hs]))
      have hqp := hp q hq
      simp only [he,decide_false,LogicCode.sign,Bool.false_eq_true,ite_false] at hnt
      apply L.equivalent_of_iff (L.choices_formula (t::ts) hm hp) hqp
      change Proves P Γ γ (L.iff (L.disj (L.conj (mark t) (property t)) (L.code.choices ts
        mark property)) (property q))
      pts_pl L using [hnt,hi]

namespace Family
variable {L} {T : Expr S} {ms ps : α → Expr S}
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variantb9e0d96626729a7bedfdd3130607d1be8825641c7ad02f01b66ded5552c1643f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variantb9e0d96626729a7bedfdd3130607d1be8825641c7ad02f01b66ded5552c1643f.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `671204504e601f15ffbc630afc2f2b204f0486e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
