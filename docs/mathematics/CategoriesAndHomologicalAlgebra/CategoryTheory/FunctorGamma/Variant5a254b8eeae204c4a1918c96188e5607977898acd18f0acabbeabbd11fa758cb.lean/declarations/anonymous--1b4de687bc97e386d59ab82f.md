# Γ₀'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9ba9e6ffb5f8aa882fa8a27d576d4bd38fad84ff2b733f5f947efc68f7f909cc",
  "kind": "def",
  "lexical_name": "Γ₀'",
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
  "slug": "anonymous--1b4de687bc97e386d59ab82f",
  "source": {
    "blob": "2da03bb257a35794629723e95a364ea5bfb7a84d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 327,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorGamma/Variant5a254b8eeae204c4a1918c96188e5607977898acd18f0acabbeabbd11fa758cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1b4de687bc97e386d59ab82f8acc0fd703b654829e08f72a2d10b170e30c817d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorGamma/Variant5a254b8eeae204c4a1918c96188e5607977898acd18f0acabbeabbd11fa758cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9ba9e6ffb5f8aa882fa8a27d576d4bd38fad84ff2b733f5f947efc68f7f909cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 327–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Γ₀' : ChainComplex C ℕ ⥤ SimplicialObject.Split C where
  obj K := SimplicialObject.Split.mk' (Γ₀.splitting K)
  map {K K'} f :=
    { F := Γ₀.map f
      f := f.f
      comm := fun n => by
        dsimp
        simp only [← Splitting.ιSummand_id, (Γ₀.splitting K).ι_desc]
        rfl }
#align algebraic_topology.dold_kan.Γ₀' AlgebraicTopology.DoldKan.Γ₀'

/-- The functor `Γ₀ : ChainComplex C ℕ ⥤ SimplicialObject C`, which is
the inverse functor of the Dold-Kan equivalence when `C` is an abelian
category, or more generally a pseudoabelian category. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorGamma/Variant5a254b8eeae204c4a1918c96188e5607977898acd18f0acabbeabbd11fa758cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorGamma/Variant5a254b8eeae204c4a1918c96188e5607977898acd18f0acabbeabbd11fa758cb.lean#L327).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2da03bb257a35794629723e95a364ea5bfb7a84d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
