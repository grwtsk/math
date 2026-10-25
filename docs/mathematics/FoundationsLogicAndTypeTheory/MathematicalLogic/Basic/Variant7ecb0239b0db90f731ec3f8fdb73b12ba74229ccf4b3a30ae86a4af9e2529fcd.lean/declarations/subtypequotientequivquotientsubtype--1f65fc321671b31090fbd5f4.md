# subtypeQuotientEquivQuotientSubtype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e47aa3ad7777a9b4b88cfa1ad5fa701e40af6a873c6b9031e320b8ff3a78991e",
  "kind": "def",
  "lexical_name": "subtypeQuotientEquivQuotientSubtype",
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
  "slug": "subtypequotientequivquotientsubtype--1f65fc321671b31090fbd5f4",
  "source": {
    "blob": "8db63fbc42f7f389179399572e3ece56d53f5bee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 602,
    "line": 585,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7ecb0239b0db90f731ec3f8fdb73b12ba74229ccf4b3a30ae86a4af9e2529fcd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1f65fc321671b31090fbd5f49fbb406c328650a73c858d1d31a0eea4ed1d160b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7ecb0239b0db90f731ec3f8fdb73b12ba74229ccf4b3a30ae86a4af9e2529fcd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e47aa3ad7777a9b4b88cfa1ad5fa701e40af6a873c6b9031e320b8ff3a78991e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 585–602.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def subtypeQuotientEquivQuotientSubtype (p₁ : α → Prop) {s₁ : Setoid α} {s₂ : Setoid (Subtype p₁)}
    (p₂ : Quotient s₁ → Prop) (hp₂ : ∀ a, p₁ a ↔ p₂ ⟦a⟧)
    (h : ∀ x y : Subtype p₁, s₂.r x y ↔ s₁.r x y) : {x // p₂ x} ≃ Quotient s₂ where
  toFun a :=
    Quotient.hrecOn a.1 (fun a h => ⟦⟨a, (hp₂ _).2 h⟩⟧)
      (fun a b hab => hfunext (by rw [Quotient.sound hab]) fun _ _ _ =>
        heq_of_eq (Quotient.sound ((h _ _).2 hab)))
      a.2
  invFun a :=
    Quotient.liftOn a (fun a => (⟨⟦a.1⟧, (hp₂ _).1 a.2⟩ : { x // p₂ x })) fun _ _ hab =>
      Subtype.ext (Quotient.sound ((h _ _).1 hab))
  left_inv a := by
    obtain ⟨a, ha⟩ := a
    induction a using Quotient.inductionOn
    rfl
  right_inv a := by induction a using Quotient.inductionOn; rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7ecb0239b0db90f731ec3f8fdb73b12ba74229ccf4b3a30ae86a4af9e2529fcd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7ecb0239b0db90f731ec3f8fdb73b12ba74229ccf4b3a30ae86a4af9e2529fcd.lean#L585).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8db63fbc42f7f389179399572e3ece56d53f5bee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
