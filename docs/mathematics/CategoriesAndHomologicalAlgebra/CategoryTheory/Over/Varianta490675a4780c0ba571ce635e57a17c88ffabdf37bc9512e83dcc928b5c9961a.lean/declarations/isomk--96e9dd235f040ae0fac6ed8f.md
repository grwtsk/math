# isoMk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:07c029513380a58de3727b327d5992d20ef1140976805815d3e5a4620b4fa1ec",
  "kind": "def",
  "lexical_name": "isoMk",
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
  "slug": "isomk--96e9dd235f040ae0fac6ed8f",
  "source": {
    "blob": "87a301cd3495db020e50255637cc753acd8f6392",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 128,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Varianta490675a4780c0ba571ce635e57a17c88ffabdf37bc9512e83dcc928b5c9961a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:96e9dd235f040ae0fac6ed8f70ef550376f354540da715d4d8971aca4e42e804",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Varianta490675a4780c0ba571ce635e57a17c88ffabdf37bc9512e83dcc928b5c9961a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:07c029513380a58de3727b327d5992d20ef1140976805815d3e5a4620b4fa1ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isoMk {f g : Over X} (hl : f.left ≅ g.left) (hw : hl.hom ≫ g.hom = f.hom := by aesop_cat) :
    f ≅ g :=
  CostructuredArrow.isoMk hl hw
#align category_theory.over.iso_mk CategoryTheory.Over.isoMk

-- Porting note: simp solves this; simpNF still sees them after `-simp` (?)
attribute [-simp, nolint simpNF] isoMk_hom_right_down_down isoMk_inv_right_down_down

section

variable (X)

/-- The forgetful functor mapping an arrow to its domain.

See <https://stacks.math.columbia.edu/tag/001G>.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Varianta490675a4780c0ba571ce635e57a17c88ffabdf37bc9512e83dcc928b5c9961a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Varianta490675a4780c0ba571ce635e57a17c88ffabdf37bc9512e83dcc928b5c9961a.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87a301cd3495db020e50255637cc753acd8f6392` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
