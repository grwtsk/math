# piEquivPiSubtypeProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a646f8d840678fd0b9c909208f86e2614c175e2c891b0b0a17246fe22fe8bd04",
  "kind": "def",
  "lexical_name": "piEquivPiSubtypeProd",
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
  "slug": "piequivpisubtypeprod--9f5c3041ddd70f11c8427431",
  "source": {
    "blob": "de0edaede351751ab2eac188008031aa301f1445",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 531,
    "line": 514,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Prod/Varianta3cb00b5939719d46d859426e052f74bcb011e92184b01d4b6de9338e91d1bca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9f5c3041ddd70f11c8427431b190f26b79112ef71e25e538f89fb3a2c9b5183a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Prod/Varianta3cb00b5939719d46d859426e052f74bcb011e92184b01d4b6de9338e91d1bca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a646f8d840678fd0b9c909208f86e2614c175e2c891b0b0a17246fe22fe8bd04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 514–531.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def piEquivPiSubtypeProd {α : Type*} (p : α → Prop) (β : α → Type*) [DecidablePred p] :
    (∀ i : α, β i) ≃ (∀ i : { x // p x }, β i) × ∀ i : { x // ¬p x }, β i where
  toFun f := (fun x => f x, fun x => f x)
  invFun f x := if h : p x then f.1 ⟨x, h⟩ else f.2 ⟨x, h⟩
  right_inv := by
    rintro ⟨f, g⟩
    ext1 <;>
      · ext y
        rcases y with ⟨val, property⟩
        simp only [property, dif_pos, dif_neg, not_false_iff, Subtype.coe_mk]
  left_inv f := by
    ext x
    by_cases h : p x <;>
      · simp only [h, dif_neg, dif_pos, not_false_iff]

/-- A product of types can be split as the binary product of one of the types and the product
  of all the remaining types. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Prod/Varianta3cb00b5939719d46d859426e052f74bcb011e92184b01d4b6de9338e91d1bca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Prod/Varianta3cb00b5939719d46d859426e052f74bcb011e92184b01d4b6de9338e91d1bca.lean#L514).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de0edaede351751ab2eac188008031aa301f1445` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
