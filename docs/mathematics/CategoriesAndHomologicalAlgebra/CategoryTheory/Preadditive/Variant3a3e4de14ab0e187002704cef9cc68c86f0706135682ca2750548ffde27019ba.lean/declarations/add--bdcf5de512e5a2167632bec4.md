# add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b078bc808bb91d6ec0a6948fd5841a8aa9fcaf9e21efd78824815b19137b55de",
  "kind": "def",
  "lexical_name": "add",
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
  "slug": "add--bdcf5de512e5a2167632bec4",
  "source": {
    "blob": "db607b900b1d4b046afe7aa10ebdf16197d05575",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 28,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant3a3e4de14ab0e187002704cef9cc68c86f0706135682ca2750548ffde27019ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bdcf5de512e5a2167632bec45ed1a1898bcae6a30158f64ca19086483202b27b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant3a3e4de14ab0e187002704cef9cc68c86f0706135682ca2750548ffde27019ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b078bc808bb91d6ec0a6948fd5841a8aa9fcaf9e21efd78824815b19137b55de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def add (hr : ∀ ⦃X Y : C⦄ (f₁ f₂ g₁ g₂ : X ⟶ Y) (_ : r f₁ f₂) (_ : r g₁ g₂), r (f₁ + g₁) (f₂ + g₂))
    {X Y : Quotient r} (f g : X ⟶ Y) : X ⟶ Y :=
  Quot.liftOn₂ f g (fun a b => Quot.mk _ (a + b))
    (fun f g₁ g₂ h₁₂ => by
      simp only [compClosure_iff_self] at h₁₂
      erw [functor_map_eq_iff]
      exact hr _ _ _ _ (Congruence.equivalence.refl f) h₁₂)
    (fun f₁ f₂ g h₁₂ => by
      simp only [compClosure_iff_self] at h₁₂
      erw [functor_map_eq_iff]
      exact hr _ _ _ _ h₁₂ (Congruence.equivalence.refl g))

/-- The negation on the morphisms in the category `Quotient r` when `r` is compatible
with the addition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant3a3e4de14ab0e187002704cef9cc68c86f0706135682ca2750548ffde27019ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant3a3e4de14ab0e187002704cef9cc68c86f0706135682ca2750548ffde27019ba.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db607b900b1d4b046afe7aa10ebdf16197d05575` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
