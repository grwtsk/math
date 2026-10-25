# Sigma.curry_update

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:816907fa-45a4-3b4e-a2a9-d55932b77745",
  "kind": "theorem",
  "lexical_name": "Sigma.curry_update",
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
  "slug": "sigma-curry-update--f64e6716605273fcdf469141",
  "source": {
    "blob": "b2af528775a9567e486dc51dc2474eb0b9088343",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 166,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant773eec0ffd1f97144d2f301f1e1202813d615038f7d9c31e7e6300654e0b7e8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f64e6716605273fcdf469141004e7a77f86fb30f4a81a2e05d463bef93528d38",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant773eec0ffd1f97144d2f301f1e1202813d615038f7d9c31e7e6300654e0b7e8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:816907fa-45a4-3b4e-a2a9-d55932b77745`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Sigma.curry_update {γ : ∀ a, β a → Type*} [DecidableEq α] [∀ a, DecidableEq (β a)]
    (i : Σ a, β a) (f : (i : Σ a, β a) → γ i.1 i.2) (x : γ i.1 i.2) :
    Sigma.curry (Function.update f i x) =
      Function.update (Sigma.curry f) i.1 (Function.update (Sigma.curry f i.1) i.2 x) := by
  obtain ⟨ia, ib⟩ := i
  ext ja jb
  unfold Sigma.curry
  obtain rfl | ha := eq_or_ne ia ja
  · obtain rfl | hb := eq_or_ne ib jb
    · simp
    · simp only [update_self]
      rw [Function.update_of_ne (mt _ hb.symm), Function.update_of_ne hb.symm]
      rintro h
      injection h
  · rw [Function.update_of_ne (ne_of_apply_ne Sigma.fst _), Function.update_of_ne]
    · exact ha.symm
    · exact ha.symm

/-- Convert a product type to a Σ-type. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant773eec0ffd1f97144d2f301f1e1202813d615038f7d9c31e7e6300654e0b7e8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant773eec0ffd1f97144d2f301f1e1202813d615038f7d9c31e7e6300654e0b7e8b.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2af528775a9567e486dc51dc2474eb0b9088343` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
