# toIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:88932fc16e771bd82c2bd4607d07f5126dc00630b396c8d84adc3214eae73679",
  "kind": "def",
  "lexical_name": "toIso",
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
  "slug": "toiso--b72c5fadcdea62dc65e94fe7",
  "source": {
    "blob": "65a156fdc2531342aadb12f59602686e1d79a50c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 416,
    "line": 400,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant99972ff9a151cf7c9b59d5ef8f18f4ed4704b39c357f82c26d26c0d0916f5727.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b72c5fadcdea62dc65e94fe7de375099a67e3eb8bf2e6c968221b8537f6bdbb1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant99972ff9a151cf7c9b59d5ef8f18f4ed4704b39c357f82c26d26c0d0916f5727.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:88932fc16e771bd82c2bd4607d07f5126dc00630b396c8d84adc3214eae73679`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 400–416.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toIso (e : X ≃ Y) : X ≅ Y where
  hom := ofHom fun x ↦ e x
  inv := ofHom fun x ↦ e.symm x

@[deprecated (since := "2026-03-20")] alias toIso_hom := toIso_hom_hom_apply
@[deprecated (since := "2026-03-20")] alias toIso_inv := toIso_inv_hom_apply

end Equiv

namespace CategoryTheory.Iso

open CategoryTheory

variable {X Y : Type u}

/-- Any isomorphism between types gives an equivalence. -/
@[implicit_reducible, simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant99972ff9a151cf7c9b59d5ef8f18f4ed4704b39c357f82c26d26c0d0916f5727.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant99972ff9a151cf7c9b59d5ef8f18f4ed4704b39c357f82c26d26c0d0916f5727.lean#L400).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65a156fdc2531342aadb12f59602686e1d79a50c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
