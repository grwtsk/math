# snoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c46fa60f-9e63-2066-efd3-94ae01bc7cfd",
  "kind": "theorem",
  "lexical_name": "snoc",
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
  "slug": "snoc--5ae66faed20aebf79c41bc75",
  "source": {
    "blob": "5e56f9e1c69083821878906b365a007e8949e8e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 360,
    "line": 331,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant04d78259e65bd481e21038f886be7318f127f7ef7bcc9c8486fbb048383e5734.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ae66faed20aebf79c41bc75fdcb773e41355d66bfa7fa2c456a756701fc2d6a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant04d78259e65bd481e21038f886be7318f127f7ef7bcc9c8486fbb048383e5734.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c46fa60f-9e63-2066-efd3-94ae01bc7cfd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem snoc {s₁ s₂ : CompositionSeries X} {x₁ x₂ : X} {hsat₁ : IsMaximal s₁.last x₁}
    {hsat₂ : IsMaximal s₂.last x₂} (hequiv : Equivalent s₁ s₂)
    (hlast : Iso (s₁.last, x₁) (s₂.last,
      x₂)) : Equivalent (s₁.snoc x₁ hsat₁) (s₂.snoc x₂ hsat₂) := by
  let e : Fin s₁.length.succ ≃ Fin s₂.length.succ :=
    calc
      Fin (s₁.length + 1) ≃ Option (Fin s₁.length) := finSuccEquivLast
      _ ≃ Option (Fin s₂.length) := Functor.mapEquiv Option hequiv.choose
      _ ≃ Fin (s₂.length + 1) := finSuccEquivLast.symm
  have he_last : e (Fin.last s₁.length) = Fin.last s₂.length := by
    simp [e, finSuccEquivLast_last, Functor.mapEquiv_apply]
  have he_castSucc (j : Fin s₁.length) :
      e j.castSucc = (hequiv.choose j).castSucc := by
    simp [e, finSuccEquivLast_castSucc, Functor.mapEquiv_apply]
  refine ⟨e, fun i => ?_⟩
  refine Fin.lastCases ?_ ?_ i
  · change Iso ((snoc s₁ x₁ hsat₁).toFun (Fin.last s₁.length).castSucc,
        (snoc s₁ x₁ hsat₁).toFun (Fin.last s₁.length).succ)
      ((snoc s₂ x₂ hsat₂).toFun (e (Fin.last s₁.length)).castSucc,
        (snoc s₂ x₂ hsat₂).toFun (e (Fin.last s₁.length)).succ)
    rw [he_last]
    simpa [apply_last] using hlast
  · intro i
    change Iso ((snoc s₁ x₁ hsat₁).toFun i.castSucc.castSucc,
        (snoc s₁ x₁ hsat₁).toFun i.castSucc.succ)
      ((snoc s₂ x₂ hsat₂).toFun (e i.castSucc).castSucc,
        (snoc s₂ x₂ hsat₂).toFun (e i.castSucc).succ)
    rw [he_castSucc]
    simpa [snoc_castSucc, ← Fin.castSucc_succ] using hequiv.choose_spec i

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant04d78259e65bd481e21038f886be7318f127f7ef7bcc9c8486fbb048383e5734.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant04d78259e65bd481e21038f886be7318f127f7ef7bcc9c8486fbb048383e5734.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e56f9e1c69083821878906b365a007e8949e8e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
