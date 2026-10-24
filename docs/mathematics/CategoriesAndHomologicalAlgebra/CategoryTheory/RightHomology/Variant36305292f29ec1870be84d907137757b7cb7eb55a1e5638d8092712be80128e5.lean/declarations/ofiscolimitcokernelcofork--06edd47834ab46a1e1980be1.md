# ofIsColimitCokernelCofork

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:46b2feaf72d3e3fd371884530844477a09479174190caca01c6587bf8c83e65e",
  "kind": "def",
  "lexical_name": "ofIsColimitCokernelCofork",
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
  "slug": "ofiscolimitcokernelcofork--06edd47834ab46a1e1980be1",
  "source": {
    "blob": "db7db3eb3f9bc867e623dbeaff836577df828c1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 490,
    "line": 474,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightHomology/Variant36305292f29ec1870be84d907137757b7cb7eb55a1e5638d8092712be80128e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:06edd47834ab46a1e1980be145a8e7e53a205421f7a21ff2bf654c052246d2b0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightHomology/Variant36305292f29ec1870be84d907137757b7cb7eb55a1e5638d8092712be80128e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:46b2feaf72d3e3fd371884530844477a09479174190caca01c6587bf8c83e65e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 474–490.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofIsColimitCokernelCofork (φ : S₁ ⟶ S₂)
    (hg₁ : S₁.g = 0) (c₁ : CokernelCofork S₁.f) (hc₁ : IsColimit c₁)
    (hg₂ : S₂.g = 0) (c₂ : CokernelCofork S₂.f) (hc₂ : IsColimit c₂) (f : c₁.pt ⟶ c₂.pt)
    (comm : φ.τ₂ ≫ c₂.π = c₁.π ≫ f) :
    RightHomologyMapData φ (RightHomologyData.ofIsColimitCokernelCofork S₁ hg₁ c₁ hc₁)
      (RightHomologyData.ofIsColimitCokernelCofork S₂ hg₂ c₂ hc₂) where
  φQ := f
  φH := f
  commp := comm.symm

variable (S)

set_option backward.isDefEq.respectTransparency.types false in
/-- When both maps `S.f` and `S.g` of a short complex `S` are zero, this is the right homology map
data (for the identity of `S`) which relates the right homology data
`RightHomologyData.ofIsLimitKernelFork` and `ofZeros` . -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightHomology/Variant36305292f29ec1870be84d907137757b7cb7eb55a1e5638d8092712be80128e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightHomology/Variant36305292f29ec1870be84d907137757b7cb7eb55a1e5638d8092712be80128e5.lean#L474).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db7db3eb3f9bc867e623dbeaff836577df828c1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
