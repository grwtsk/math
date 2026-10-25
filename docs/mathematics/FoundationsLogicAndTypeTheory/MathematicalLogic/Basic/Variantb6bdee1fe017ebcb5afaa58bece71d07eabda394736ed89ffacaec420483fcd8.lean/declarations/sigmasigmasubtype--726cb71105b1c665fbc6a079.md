# sigmaSigmaSubtype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d21c5d3a6d815be9f3f5309afd3670359beafa799773195cba1b0cc6f5ed83cb",
  "kind": "def",
  "lexical_name": "sigmaSigmaSubtype",
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
  "slug": "sigmasigmasubtype--726cb71105b1c665fbc6a079",
  "source": {
    "blob": "0754c7d347348d14937db0d0147f374d1150495c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 470,
    "line": 460,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb6bdee1fe017ebcb5afaa58bece71d07eabda394736ed89ffacaec420483fcd8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:726cb71105b1c665fbc6a079fed3fa2913ddc0fadeefc6ab2d59722151be0263",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb6bdee1fe017ebcb5afaa58bece71d07eabda394736ed89ffacaec420483fcd8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d21c5d3a6d815be9f3f5309afd3670359beafa799773195cba1b0cc6f5ed83cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 460–470.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sigmaSigmaSubtype {α : Type*} {β : α → Type*} {γ : (a : α) → β a → Type*}
    (p : (a : α) × β a → Prop) [uniq : Unique {ab // p ab}] {a : α} {b : β a} (h : p ⟨a, b⟩) :
    {s : (a : α) × (b : β a) × γ a b // p ⟨s.1, s.2.1⟩} ≃ γ a b :=
  calc {s : (a : α) × (b : β a) × γ a b // p ⟨s.1, s.2.1⟩}
  _ ≃ _ := subtypeEquiv (p := fun ⟨a, b, c⟩ ↦ p ⟨a, b⟩) (q := (p ·.1))
    (sigmaAssoc γ).symm fun s ↦ by simp [sigmaAssoc]
  _ ≃ _ := subtypeSigmaEquiv _ _
  _ ≃ _ := uniqueSigma (fun ab ↦ γ (Sigma.fst <| Subtype.val ab) (Sigma.snd <| Subtype.val ab))
  _ ≃ γ a b := Equiv.cast <| by rw [← show ⟨⟨a, b⟩, h⟩ = uniq.default from uniq.uniq _]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb6bdee1fe017ebcb5afaa58bece71d07eabda394736ed89ffacaec420483fcd8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb6bdee1fe017ebcb5afaa58bece71d07eabda394736ed89ffacaec420483fcd8.lean#L460).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0754c7d347348d14937db0d0147f374d1150495c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
