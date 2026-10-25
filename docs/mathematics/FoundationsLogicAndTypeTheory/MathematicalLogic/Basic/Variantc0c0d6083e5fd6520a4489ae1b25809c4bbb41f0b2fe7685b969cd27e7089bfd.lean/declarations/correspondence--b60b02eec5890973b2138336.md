# correspondence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:794082b2982bcaa2e26421ce57c2266fb5cfd39ceb3077cd5ba5dabd150b2ff5",
  "kind": "def",
  "lexical_name": "correspondence",
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
  "slug": "correspondence--b60b02eec5890973b2138336",
  "source": {
    "blob": "5ecd524f73cf763b8e5803f8226397db5ee8cdd6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 444,
    "line": 431,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc0c0d6083e5fd6520a4489ae1b25809c4bbb41f0b2fe7685b969cd27e7089bfd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b60b02eec5890973b2138336bd14f6068e4c625641758a3fd8cc52e6f71cb2c0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc0c0d6083e5fd6520a4489ae1b25809c4bbb41f0b2fe7685b969cd27e7089bfd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:794082b2982bcaa2e26421ce57c2266fb5cfd39ceb3077cd5ba5dabd150b2ff5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 431–444.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def correspondence (r : Setoid α) : { s // r ≤ s } ≃o Setoid (Quotient r) where
  toFun s := ⟨Quotient.lift₂ s.1.1 fun _ _ _ _ h₁ h₂ ↦ Eq.propIntro
      (fun h ↦ s.1.trans' (s.1.trans' (s.1.symm' (s.2 h₁)) h) (s.2 h₂))
      (fun h ↦ s.1.trans' (s.1.trans' (s.2 h₁) h) (s.1.symm' (s.2 h₂))),
    ⟨Quotient.ind s.1.2.1, fun {x y} ↦ Quotient.inductionOn₂ x y fun _ _ ↦ s.1.2.2,
      fun {x y z} ↦ Quotient.inductionOn₃ x y z fun _ _ _ ↦ s.1.2.3⟩⟩
  invFun s := ⟨comap Quotient.mk' s, fun x y h => by rw [comap_rel, Quotient.eq'.2 h]⟩
  left_inv _ := rfl
  right_inv _ := ext fun x y ↦ Quotient.inductionOn₂ x y fun _ _ ↦ Iff.rfl
  map_rel_iff' :=
    ⟨fun h x y hs ↦ @h ⟦x⟧ ⟦y⟧ hs, fun h x y ↦ Quotient.inductionOn₂ x y fun _ _ hs ↦ h hs⟩

/-- Given two equivalence relations with `r ≤ s`, a bijection between the sum of the quotients by
`r` on each equivalence class by `s` and the quotient by `r`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc0c0d6083e5fd6520a4489ae1b25809c4bbb41f0b2fe7685b969cd27e7089bfd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc0c0d6083e5fd6520a4489ae1b25809c4bbb41f0b2fe7685b969cd27e7089bfd.lean#L431).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ecd524f73cf763b8e5803f8226397db5ee8cdd6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
