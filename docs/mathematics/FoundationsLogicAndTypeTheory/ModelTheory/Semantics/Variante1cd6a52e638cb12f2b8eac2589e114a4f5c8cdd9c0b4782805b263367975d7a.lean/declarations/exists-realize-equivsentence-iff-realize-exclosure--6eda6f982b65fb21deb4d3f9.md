# exists_realize_equivSentence_iff_realize_exClosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:04862d1d-d2d3-3ac7-c548-78167fc1f362",
  "kind": "theorem",
  "lexical_name": "exists_realize_equivSentence_iff_realize_exClosure",
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
  "slug": "exists-realize-equivsentence-iff-realize-exclosure--6eda6f982b65fb21deb4d3f9",
  "source": {
    "blob": "a47db4817589fd8c37be75e9dca0bc555c847881",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 993,
    "line": 966,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Semantics/Variante1cd6a52e638cb12f2b8eac2589e114a4f5c8cdd9c0b4782805b263367975d7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6eda6f982b65fb21deb4d3f967d1f444574959adc167cee9f28cc13b32243d66",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Semantics/Variante1cd6a52e638cb12f2b8eac2589e114a4f5c8cdd9c0b4782805b263367975d7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04862d1d-d2d3-3ac7-c548-78167fc1f362`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 966–993.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_realize_equivSentence_iff_realize_exClosure
    [DecidableEq α] [Nonempty M] {φ : L.Formula α} :
    (∃ v : α → M,
      letI := (constantsOn.structure v);
      (Formula.equivSentence φ).Realize M) ↔ (φ.exClosure.Realize M) := by
  constructor
  · rintro ⟨v, hv⟩
    exact (Formula.realize_exClosure φ).mpr ⟨fun a => v a,
      (BoundedFormula.realize_restrictFreeVar (φ := φ) (f := id) (v := fun a => v a) (v' := v)
        (fun _ => rfl)).2
        (by simpa [Formula.Realize]
          using (realize_equivSentence_symm M (Formula.equivSentence φ) v).2 hv)⟩
  · intro h
    obtain ⟨v, hv⟩ := (Formula.realize_exClosure φ).1 h
    let v' := fun a => if hmem : a ∈ φ.freeVarFinset
      then v ⟨a, hmem⟩ else Classical.choice inferInstance
    exists v'
    refine (Formula.realize_equivSentence_symm M (Formula.equivSentence φ) v').mp ?_
    simpa [Equiv.symm_apply_apply, Formula.Realize] using
      (BoundedFormula.realize_restrictFreeVar v' (by grind)).1 hv

end Formula

namespace StrongHomClass

variable {F : Type*} [EquivLike F M N] [StrongHomClass L F M N] (g : F)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Semantics/Variante1cd6a52e638cb12f2b8eac2589e114a4f5c8cdd9c0b4782805b263367975d7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Semantics/Variante1cd6a52e638cb12f2b8eac2589e114a4f5c8cdd9c0b4782805b263367975d7a.lean#L966).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a47db4817589fd8c37be75e9dca0bc555c847881` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
