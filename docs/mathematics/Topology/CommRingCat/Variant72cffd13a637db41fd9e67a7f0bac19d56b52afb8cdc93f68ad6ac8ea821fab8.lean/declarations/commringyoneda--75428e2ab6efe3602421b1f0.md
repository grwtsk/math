# commRingYoneda

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9e8d1a36f199960334c932e270815174dd32fe18e40cc9ebf43ae541716a9cd6",
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
  "slug": "commringyoneda--75428e2ab6efe3602421b1f0",
  "source": {
    "blob": "34ded50dd2dcc7a608d6256429657aa2cbf4178d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 245,
    "path": "GRWTSK/Topology/CommRingCat/Variant72cffd13a637db41fd9e67a7f0bac19d56b52afb8cdc93f68ad6ac8ea821fab8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:75428e2ab6efe3602421b1f04ec492adf7701e15a39194c279ecc8d40b72dadc",
  "verification": {
    "reference": "docs/verification/Topology/CommRingCat/Variant72cffd13a637db41fd9e67a7f0bac19d56b52afb8cdc93f68ad6ac8ea821fab8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9e8d1a36f199960334c932e270815174dd32fe18e40cc9ebf43ae541716a9cd6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–269.

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

For example, we could construct the presheaf of continuous complex-valued functions of `X` as
```
presheafToTopCommRing X (TopCommRingCat.of ℂ)
```
(this requires `import Topology.Instances.Complex`).
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/CommRingCat/Variant72cffd13a637db41fd9e67a7f0bac19d56b52afb8cdc93f68ad6ac8ea821fab8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/CommRingCat/Variant72cffd13a637db41fd9e67a7f0bac19d56b52afb8cdc93f68ad6ac8ea821fab8.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34ded50dd2dcc7a608d6256429657aa2cbf4178d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
