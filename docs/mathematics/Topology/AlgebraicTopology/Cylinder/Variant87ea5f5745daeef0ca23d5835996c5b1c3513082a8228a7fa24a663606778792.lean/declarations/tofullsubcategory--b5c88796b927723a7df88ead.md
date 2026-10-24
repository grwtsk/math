# toFullSubcategory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:01f661ce9ee2c6098726ef5ab5597aa031ea30379ee3bac8d7176eeb2ce5b4ba",
  "kind": "def",
  "lexical_name": "toFullSubcategory",
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
  "slug": "tofullsubcategory--b5c88796b927723a7df88ead",
  "source": {
    "blob": "b25e4d249a347dccd21f35043353c9b6e71a9ff3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 110,
    "path": "GRWTSK/Topology/AlgebraicTopology/Cylinder/Variant87ea5f5745daeef0ca23d5835996c5b1c3513082a8228a7fa24a663606778792.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b5c88796b927723a7df88eadf957677f6178beaa8bc73907a596c2b3f0d089ca",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Cylinder/Variant87ea5f5745daeef0ca23d5835996c5b1c3513082a8228a7fa24a663606778792.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:01f661ce9ee2c6098726ef5ab5597aa031ea30379ee3bac8d7176eeb2ce5b4ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toFullSubcategory {P : ObjectProperty C} {X : P.FullSubcategory} (Q : Precylinder X.obj)
    (hQ : P Q.I) :
    Precylinder X where
  I := ⟨Q.I, hQ⟩
  i₀ := P.homMk Q.i₀
  i₁ := P.homMk Q.i₁
  π := P.homMk Q.π

/-- The image of a precylinder by a functor. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Cylinder/Variant87ea5f5745daeef0ca23d5835996c5b1c3513082a8228a7fa24a663606778792.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Cylinder/Variant87ea5f5745daeef0ca23d5835996c5b1c3513082a8228a7fa24a663606778792.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b25e4d249a347dccd21f35043353c9b6e71a9ff3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
