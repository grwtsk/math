# effectiveEpiFamilyStructOfComp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:70209c6dcaf434bec25f1d97163658c10b9274df7bf5f36f081f9ea266434da9",
  "kind": "def",
  "lexical_name": "effectiveEpiFamilyStructOfComp",
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
  "slug": "effectiveepifamilystructofcomp--e3b92bdb26645aee19a41031",
  "source": {
    "blob": "6632acca21b41f003005cd159cdb0c016296ca56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 76,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant64812c2b99f774860e2904afbef3f84cacbe8a2c18e679ddf3be356b66532184.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e3b92bdb26645aee19a41031f8889df2d094f310fd7f4b238ad57791485045a0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant64812c2b99f774860e2904afbef3f84cacbe8a2c18e679ddf3be356b66532184.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:70209c6dcaf434bec25f1d97163658c10b9274df7bf5f36f081f9ea266434da9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def effectiveEpiFamilyStructOfComp {C : Type*} [Category C]
    {I : Type*} {Z Y : I → C} {X : C} (g : ∀ i, Z i ⟶ Y i) (f : ∀ i, Y i ⟶ X)
    [EffectiveEpiFamily _ (fun i => g i ≫ f i)] [∀ i, Epi (g i)] :
    EffectiveEpiFamilyStruct _ f where
  desc {W} φ h := EffectiveEpiFamily.desc _ (fun i => g i ≫ f i)
    (fun i => g i ≫ φ i) (fun {T} i₁ i₂ g₁ g₂ eq =>
      by simpa [assoc] using h i₁ i₂ (g₁ ≫ g i₁) (g₂ ≫ g i₂) (by simpa [assoc] using eq))
  fac {W} φ h i := by
    dsimp
    rw [← cancel_epi (g i), ← assoc, EffectiveEpiFamily.fac _ (fun i => g i ≫ f i)]
  uniq {W} φ _ m hm := EffectiveEpiFamily.uniq _ (fun i => g i ≫ f i) _ _ _
    (fun i => by rw [assoc, hm])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant64812c2b99f774860e2904afbef3f84cacbe8a2c18e679ddf3be356b66532184.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant64812c2b99f774860e2904afbef3f84cacbe8a2c18e679ddf3be356b66532184.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6632acca21b41f003005cd159cdb0c016296ca56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
