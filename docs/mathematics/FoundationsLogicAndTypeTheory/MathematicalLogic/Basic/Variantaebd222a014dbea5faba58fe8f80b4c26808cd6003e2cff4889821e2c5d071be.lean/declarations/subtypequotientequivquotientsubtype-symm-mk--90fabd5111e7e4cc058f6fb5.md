# subtypeQuotientEquivQuotientSubtype_symm_mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b2359623-dfd9-2231-5823-abc7ad187528",
  "kind": "theorem",
  "lexical_name": "subtypeQuotientEquivQuotientSubtype_symm_mk",
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
  "slug": "subtypequotientequivquotientsubtype-symm-mk--90fabd5111e7e4cc058f6fb5",
  "source": {
    "blob": "94261d9af251a015efc523739fa0a047efe9a94d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 628,
    "line": 618,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantaebd222a014dbea5faba58fe8f80b4c26808cd6003e2cff4889821e2c5d071be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90fabd5111e7e4cc058f6fb5127e497da613a448df25e8445e06cda1b9dd844b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantaebd222a014dbea5faba58fe8f80b4c26808cd6003e2cff4889821e2c5d071be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2359623-dfd9-2231-5823-abc7ad187528`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 618–628.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subtypeQuotientEquivQuotientSubtype_symm_mk (p₁ : α → Prop)
    [s₁ : Setoid α] [s₂ : Setoid (Subtype p₁)] (p₂ : Quotient s₁ → Prop) (hp₂ : ∀ a, p₁ a ↔ p₂ ⟦a⟧)
    (h : ∀ x y : Subtype p₁, s₂ x y ↔ (x : α) ≈ y) (x) :
    (subtypeQuotientEquivQuotientSubtype p₁ p₂ hp₂ h).symm ⟦x⟧ = ⟨⟦x⟧, (hp₂ _).1 x.property⟩ :=
  rfl

section Swap

variable [DecidableEq α]

/-- A helper function for `Equiv.swap`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantaebd222a014dbea5faba58fe8f80b4c26808cd6003e2cff4889821e2c5d071be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantaebd222a014dbea5faba58fe8f80b4c26808cd6003e2cff4889821e2c5d071be.lean#L618).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94261d9af251a015efc523739fa0a047efe9a94d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
