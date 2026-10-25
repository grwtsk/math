# smash

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4513c5c-482d-32be-2055-964498cb15a5",
  "kind": "theorem",
  "lexical_name": "smash",
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
  "slug": "smash--af0cd451c3daccb36bc7def2",
  "source": {
    "blob": "5e56f9e1c69083821878906b365a007e8949e8e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 330,
    "line": 298,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant04d78259e65bd481e21038f886be7318f127f7ef7bcc9c8486fbb048383e5734.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af0cd451c3daccb36bc7def26c2a027996d23ac699792a507a6c3582accbb814",
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

Occurrence: `result:a4513c5c-482d-32be-2055-964498cb15a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–330.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
protected theorem smash {s₁ s₂ t₁ t₂ : CompositionSeries X}
    (hs : s₁.last = s₂.head) (ht : t₁.last = t₂.head)
    (h₁ : Equivalent s₁ t₁) (h₂ : Equivalent s₂ t₂) :
    Equivalent (smash s₁ s₂ hs) (smash t₁ t₂ ht) :=
  let e : Fin (s₁.length + s₂.length) ≃ Fin (t₁.length + t₂.length) :=
    calc
      Fin (s₁.length + s₂.length) ≃ (Fin s₁.length) ⊕ (Fin s₂.length) := finSumFinEquiv.symm
      _ ≃ (Fin t₁.length) ⊕ (Fin t₂.length) := Equiv.sumCongr h₁.choose h₂.choose
      _ ≃ Fin (t₁.length + t₂.length) := finSumFinEquiv
  ⟨e, by
    intro i
    refine Fin.addCases ?_ ?_ i
    · intro i
      simpa [e, smash_castAdd, smash_succ_castAdd] using h₁.choose_spec i
    · intro i
      simpa [e, -Fin.castSucc_natAdd, smash_natAdd, smash_succ_natAdd] using h₂.choose_spec i⟩

#adaptation_note /-- Proof repaired after leanprover/lean4#13492.
The proof body used to be a single term
```
⟨e, fun i => by
  refine Fin.lastCases ?_ ?_ i
  · simpa [e, apply_last] using hlast
  · intro i
    simpa [e, ← Fin.castSucc_succ] using hequiv.choose_spec i⟩
```
(where `e` was defined via the same `calc` block; the signature had `: ... :=` rather
than `: ... := by`).
The replacement proof is a short-term fix, and we request that the authors/maintainers of
this file review the proof, and either approve it by removing this note, revise
the proof or the prerequisites appropriately, or minimize a problem in lean4 that still
needs addressing. -/
set_option backward.isDefEq.respectTransparency false in
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant04d78259e65bd481e21038f886be7318f127f7ef7bcc9c8486fbb048383e5734.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant04d78259e65bd481e21038f886be7318f127f7ef7bcc9c8486fbb048383e5734.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e56f9e1c69083821878906b365a007e8949e8e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
