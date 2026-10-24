# Pi.binaryFanOfPropIsLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:06f796e232b1e7084c66e25cc1be58c3c7c19bf82d20c82233424ed30918708d",
  "kind": "def",
  "lexical_name": "Pi.binaryFanOfPropIsLimit",
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
  "slug": "pi-binaryfanofpropislimit--13da499315d26837008924b5",
  "source": {
    "blob": "2b1499e7c4dec5f0a55309fcb9cecfebe9e63191",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 46,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PiProd/Variant485e74509927c114819be6eb27c0a047f132c5287d0ecbb7b25c6992f5d3eab8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:13da499315d26837008924b5b400040bd05f852cac4f16bc0e1a3435e37e9eea",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PiProd/Variant485e74509927c114819be6eb27c0a047f132c5287d0ecbb7b25c6992f5d3eab8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:06f796e232b1e7084c66e25cc1be58c3c7c19bf82d20c82233424ed30918708d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Pi.binaryFanOfPropIsLimit [∀ i, Decidable (P i)] :
    IsLimit (Pi.binaryFanOfProp X P) :=
  BinaryFan.isLimitMk
    (fun s ↦ Pi.lift fun b ↦ if h : P b then
      s.π.app ⟨WalkingPair.left⟩ ≫ Pi.π (fun (i : {x : I // P x}) ↦ X i.val) ⟨b, h⟩ else
      s.π.app ⟨WalkingPair.right⟩ ≫ Pi.π (fun (i : {x : I // ¬ P x}) ↦ X i.val) ⟨b, h⟩)
    (by aesop) (by aesop)
    (fun _ _ h₁ h₂ ↦ Pi.hom_ext _ _ fun b ↦ by
      by_cases h : P b
      · simp [← h₁, dite_eq_left h]
      · simp [← h₂, dite_eq_right h])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PiProd/Variant485e74509927c114819be6eb27c0a047f132c5287d0ecbb7b25c6992f5d3eab8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PiProd/Variant485e74509927c114819be6eb27c0a047f132c5287d0ecbb7b25c6992f5d3eab8.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b1499e7c4dec5f0a55309fcb9cecfebe9e63191` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
