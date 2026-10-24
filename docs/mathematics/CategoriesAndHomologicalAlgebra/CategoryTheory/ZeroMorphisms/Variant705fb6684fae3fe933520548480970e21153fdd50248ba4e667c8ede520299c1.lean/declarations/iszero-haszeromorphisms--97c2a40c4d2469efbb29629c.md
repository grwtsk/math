# IsZero.hasZeroMorphisms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:58408c9dff4087ecaff80c598c380500d2b856b51bf527113de04090e2074b0a",
  "kind": "def",
  "lexical_name": "IsZero.hasZeroMorphisms",
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
  "slug": "iszero-haszeromorphisms--97c2a40c4d2469efbb29629c",
  "source": {
    "blob": "f9a7d3ce6cbf78c4c8daf63e7c5a4ccc1ce211cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 209,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroMorphisms/Variant705fb6684fae3fe933520548480970e21153fdd50248ba4e667c8ede520299c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:97c2a40c4d2469efbb29629c1cbc45cc4a1727e5d08fd3edde49988caa7a0ec8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroMorphisms/Variant705fb6684fae3fe933520548480970e21153fdd50248ba4e667c8ede520299c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:58408c9dff4087ecaff80c598c380500d2b856b51bf527113de04090e2074b0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsZero.hasZeroMorphisms {O : C} (hO : IsZero O) : HasZeroMorphisms C where
  zero X Y := { zero := hO.from_ X ≫ hO.to_ Y }
  zero_comp X {Y Z} f := by
    change (hO.from_ X ≫ hO.to_ Y) ≫ f = hO.from_ X ≫ hO.to_ Z
    rw [Category.assoc]
    congr
    apply hO.eq_of_src
  comp_zero {X Y} f Z := by
    change f ≫ (hO.from_ Y ≫ hO.to_ Z) = hO.from_ X ≫ hO.to_ Z
    rw [← Category.assoc]
    congr
    apply hO.eq_of_tgt

namespace HasZeroObject

variable [HasZeroObject C]

open ZeroObject

/-- A category with a zero object has zero morphisms.

It is rarely a good idea to use this. Many categories that have a zero object have zero
morphisms for some other reason, for example from additivity. Library code that uses
`zeroMorphismsOfZeroObject` will then be incompatible with these categories because
the `HasZeroMorphisms` instances will not be definitionally equal. For this reason library
code should generally ask for an instance of `HasZeroMorphisms` separately, even if it already
asks for an instance of `HasZeroObject`. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroMorphisms/Variant705fb6684fae3fe933520548480970e21153fdd50248ba4e667c8ede520299c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroMorphisms/Variant705fb6684fae3fe933520548480970e21153fdd50248ba4e667c8ede520299c1.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9a7d3ce6cbf78c4c8daf63e7c5a4ccc1ce211cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
