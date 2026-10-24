# cocone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f9dcc3fd850177cc3e399e3eccfeddb4e4b3a53030f0db5669b9c7a1ed602ef9",
  "kind": "def",
  "lexical_name": "cocone",
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
  "slug": "cocone--f625faae72a84eeb77b74473",
  "source": {
    "blob": "a627535aa5b615540ad5e83f60791c029000e78f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 266,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PartOrdEmb/Variant7e6ee12138e87228ed2a02df2b86d132d235a10817de4deb45a5c7b3644dba9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f625faae72a84eeb77b74473ddaaa24fe1dd59c19f034b8e35121bcea8b080a9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PartOrdEmb/Variant7e6ee12138e87228ed2a02df2b86d132d235a10817de4deb45a5c7b3644dba9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f9dcc3fd850177cc3e399e3eccfeddb4e4b3a53030f0db5669b9c7a1ed602ef9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cocone : Cocone F where
  pt := ↧(CoconePt hc)
  ι.app j := ofHom
    { toFun := c.ι.app j
      inj' x y h := by
        obtain ⟨k, a, ha⟩ := (Types.FilteredColimit.isColimit_eq_iff' hc x y).1 h
        exact (F.map a).injective ha
      map_rel_iff' {x y} := by
        refine ⟨?_, fun h ↦ ⟨j, x, y, rfl, rfl, h⟩⟩
        rintro ⟨k, x', y', hx, hy, h⟩
        obtain ⟨l₁, a₁, b₁, hl₁⟩ := (Types.FilteredColimit.isColimit_eq_iff _ hc).1 hx
        obtain ⟨l₂, a₂, b₂, hl₂⟩ := (Types.FilteredColimit.isColimit_eq_iff _ hc).1 hy
        dsimp at hx hy hl₁ hl₂
        obtain ⟨m, d, d', h₁, h₂⟩ := bowtie a₁ a₂ b₁ b₂
        rw [← (F.map (a₁ ≫ d)).le_iff_le] at h
        rw [← (F.map (b₁ ≫ d)).le_iff_le]
        conv_rhs => rw [h₂]
        conv_rhs at h => rw [h₁]
        simpa [← hl₁, ← hl₂] using h }
  ι.naturality _ _ f := by ext x; exact ConcreteCategory.congr_hom (c.w f) x

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- Auxiliary definition for `isColimitCocone`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PartOrdEmb/Variant7e6ee12138e87228ed2a02df2b86d132d235a10817de4deb45a5c7b3644dba9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PartOrdEmb/Variant7e6ee12138e87228ed2a02df2b86d132d235a10817de4deb45a5c7b3644dba9b.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a627535aa5b615540ad5e83f60791c029000e78f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
