# hrecOn₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ba7087db9e362987e6ab073c7ec4c8ff53c334ace94b71428dcc55b07b20ccd6",
  "kind": "def",
  "lexical_name": "hrecOn₂",
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
  "slug": "hrecon--a3a98cc0ecc1c4991c0ec338",
  "source": {
    "blob": "07e09a433fbbe18ded16bd4b438ae9c8c1a99e24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 71,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Quot/Variantca04f70efdb8f73687de81ac7befee14fe49ab2c87e63e3aa48e5769edb27005.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a3a98cc0ecc1c4991c0ec3383b09d1244187f9845ce46030e096f4bbb69e17f8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Quot/Variantca04f70efdb8f73687de81ac7befee14fe49ab2c87e63e3aa48e5769edb27005.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ba7087db9e362987e6ab073c7ec4c8ff53c334ace94b71428dcc55b07b20ccd6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def hrecOn₂ (qa : Quot ra) (qb : Quot rb) (f : ∀ a b, φ ⟦a⟧ ⟦b⟧)
    (ca : ∀ {b a₁ a₂}, ra a₁ a₂ → HEq (f a₁ b) (f a₂ b))
    (cb : ∀ {a b₁ b₂}, rb b₁ b₂ → HEq (f a b₁) (f a b₂)) :
    φ qa qb :=
  Quot.hrecOn (motive := fun qa ↦ φ qa qb) qa
    (fun a ↦ Quot.hrecOn qb (f a) (fun _ _ pb ↦ cb pb))
    fun a₁ a₂ pa ↦
      Quot.induction_on qb fun b ↦
        have h₁ : HEq (@Quot.hrecOn _ _ (φ _) ⟦b⟧ (f a₁) (@cb _)) (f a₁ b) := by
          simp [heq_self_iff_true]
        have h₂ : HEq (f a₂ b) (@Quot.hrecOn _ _ (φ _) ⟦b⟧ (f a₂) (@cb _)) := by
          simp [heq_self_iff_true]
        (h₁.trans (ca pa)).trans h₂

/-- Map a function `f : α → β` such that `ra x y` implies `rb (f x) (f y)`
to a map `Quot ra → Quot rb`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Quot/Variantca04f70efdb8f73687de81ac7befee14fe49ab2c87e63e3aa48e5769edb27005.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Quot/Variantca04f70efdb8f73687de81ac7befee14fe49ab2c87e63e3aa48e5769edb27005.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07e09a433fbbe18ded16bd4b438ae9c8c1a99e24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
