# normalizeAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:75c359149f34738ae70cb061523f833eec1eff461f2fce0322b01d469369fcef",
  "kind": "def",
  "lexical_name": "normalizeAux",
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
  "slug": "normalizeaux--500ecdeb05f9019949a4f6b2",
  "source": {
    "blob": "a7c1aedb0d960007d5d9c60ec6692022afb3209a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 101,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantc4f73180f19383bd0716940aa73df29d968d89dd109f59901cdd255a146c0433.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:500ecdeb05f9019949a4f6b2a0b7b5a90647ded2839b9d2b2fee9a3698e5f8c3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantc4f73180f19383bd0716940aa73df29d968d89dd109f59901cdd255a146c0433.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:75c359149f34738ae70cb061523f833eec1eff461f2fce0322b01d469369fcef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def normalizeAux {a : B} : ∀ {b c : B}, Path a b → Hom b c → Path a c
  | _, _, p, Hom.of f => p.cons f
  | _, _, p, Hom.id _ => p
  | _, _, p, Hom.comp f g => normalizeAux (normalizeAux p f) g

/-
We may define
```
def normalizeAux' : ∀ {a b : B}, Hom a b → Path a b
  | _, _, (Hom.of f) => f.toPath
  | _, _, (Hom.id b) => nil
  | _, _, (Hom.comp f g) => (normalizeAux' f).comp (normalizeAux' g)
```
and define `normalizeAux p f` to be `p.comp (normalizeAux' f)` and this will be
equal to the above definition, but the equality proof requires `comp_assoc`, and it
thus lacks the correct definitional property to make the definition of `normalizeIso`
typecheck.
```
example {a b c : B} (p : Path a b) (f : Hom b c) :
    normalizeAux p f = p.comp (normalizeAux' f) := by
  induction f; rfl; rfl;
  case comp _ _ _ _ _ ihf ihg => rw [normalizeAux, ihf, ihg]; apply comp_assoc
```
-/
set_option backward.isDefEq.respectTransparency.types false in
/-- A 2-isomorphism between a partially-normalized 1-morphism in the free bicategory to the
fully-normalized 1-morphism.
-/
@[simp]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantc4f73180f19383bd0716940aa73df29d968d89dd109f59901cdd255a146c0433.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantc4f73180f19383bd0716940aa73df29d968d89dd109f59901cdd255a146c0433.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7c1aedb0d960007d5d9c60ec6692022afb3209a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
