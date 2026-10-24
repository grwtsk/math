# mapAugmentedCechNerve

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:351f3c35a9a3ad1362bc2ffbca0ffd79efb988f246d450f34cebb805033e74e0",
  "kind": "def",
  "lexical_name": "mapAugmentedCechNerve",
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
  "slug": "mapaugmentedcechnerve--7b18dcb94f4ef7ef9d0a55c9",
  "source": {
    "blob": "6fd26c1f8b41781e53669fb9a991d6eb0d90039c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 85,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variante91ea3a9633e43bdeb3702243e0a688ebe38a6243ca7a6cb27e4f50409d54bd8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7b18dcb94f4ef7ef9d0a55c9c97bcc07aec05367286272daa0501d2e15ec9e02",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variante91ea3a9633e43bdeb3702243e0a688ebe38a6243ca7a6cb27e4f50409d54bd8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:351f3c35a9a3ad1362bc2ffbca0ffd79efb988f246d450f34cebb805033e74e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapAugmentedCechNerve {f g : Arrow C}
    [∀ n : ℕ, HasWidePullback f.right (fun _ : Fin (n + 1) => f.left) fun _ => f.hom]
    [∀ n : ℕ, HasWidePullback g.right (fun _ : Fin (n + 1) => g.left) fun _ => g.hom] (F : f ⟶ g) :
    f.augmentedCechNerve ⟶ g.augmentedCechNerve where
  left := mapCechNerve F
  right := F.right

end CategoryTheory.Arrow

namespace CategoryTheory

namespace SimplicialObject

variable
  [∀ (n : ℕ) (f : Arrow C), HasWidePullback f.right (fun _ : Fin (n + 1) => f.left) fun _ => f.hom]

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- The Čech nerve construction, as a functor from `Arrow C`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variante91ea3a9633e43bdeb3702243e0a688ebe38a6243ca7a6cb27e4f50409d54bd8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variante91ea3a9633e43bdeb3702243e0a688ebe38a6243ca7a6cb27e4f50409d54bd8.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fd26c1f8b41781e53669fb9a991d6eb0d90039c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
