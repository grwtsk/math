# commRingYoneda

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:09d572f9b0e099199af43b1dde0538b42b45a0a264a8a895784a98894ba50cdc",
  "kind": "def",
  "lexical_name": "commRingYoneda",
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
  "slug": "commringyoneda--de5ef4ea4ce508fff4f5b0d9",
  "source": {
    "blob": "70c2b3a37ba4774d4b70fc0a65ae3dee405ed92a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 264,
    "path": "GRWTSK/Topology/CommRingCat/Variant8fbb62d772f43752bc35249a71cac36b5a09fe9d167d3f7689c5c0ddcb03d83c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de5ef4ea4ce508fff4f5b0d9dc650e0d25d1523d3cb68bd62e49c9697e11e72b",
  "verification": {
    "reference": "docs/verification/Topology/CommRingCat/Variant8fbb62d772f43752bc35249a71cac36b5a09fe9d167d3f7689c5c0ddcb03d83c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:09d572f9b0e099199af43b1dde0538b42b45a0a264a8a895784a98894ba50cdc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def commRingYoneda : TopCommRingCat.{u} ⥤ TopCat.{u}ᵒᵖ ⥤ CommRingCat.{u} where
  obj R :=
    { obj := fun X => continuousFunctions X R
      map := fun {_ _} f => continuousFunctions.pullback f R
      map_id := fun X => by
        ext
        rfl
      map_comp := fun {_ _ _} _ _ => rfl }
  map {_ _} φ :=
    { app := fun X => continuousFunctions.map X φ
      naturality := fun _ _ _ => rfl }
  map_id X := by
    ext
    rfl
  map_comp {_ _ _} _ _ := rfl

/-- The presheaf (of commutative rings), consisting of functions on an open set `U ⊆ X` with
values in some topological commutative ring `T`.

For example, we could construct the presheaf of continuous complex valued functions of `X` as
```
presheafToTopCommRing X (TopCommRingCat.of ℂ)
```
(this requires `import Topology.Instances.Complex`).
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/CommRingCat/Variant8fbb62d772f43752bc35249a71cac36b5a09fe9d167d3f7689c5c0ddcb03d83c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/CommRingCat/Variant8fbb62d772f43752bc35249a71cac36b5a09fe9d167d3f7689c5c0ddcb03d83c.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70c2b3a37ba4774d4b70fc0a65ae3dee405ed92a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
