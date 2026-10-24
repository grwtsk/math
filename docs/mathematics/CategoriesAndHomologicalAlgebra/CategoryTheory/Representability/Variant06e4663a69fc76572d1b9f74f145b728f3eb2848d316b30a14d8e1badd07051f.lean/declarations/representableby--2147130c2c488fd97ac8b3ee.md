# representableBy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:439534898f871f27fc7dc13006475ab3fffcf23beba7fd896171b9c9e7580565",
  "kind": "def",
  "lexical_name": "representableBy",
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
  "slug": "representableby--2147130c2c488fd97ac8b3ee",
  "source": {
    "blob": "4b974c2b544e1ec61ad486907a02c3418ca6eeee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 189,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variant06e4663a69fc76572d1b9f74f145b728f3eb2848d316b30a14d8e1badd07051f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2147130c2c488fd97ac8b3eec5eed48cf0367cd5f56f1f0724fcfa9282614e6f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variant06e4663a69fc76572d1b9f74f145b728f3eb2848d316b30a14d8e1badd07051f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:439534898f871f27fc7dc13006475ab3fffcf23beba7fd896171b9c9e7580565`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def representableBy : F.1.RepresentableBy (glueData hf).glued :=
  Functor.representableByEquiv.symm ((sheafToPresheaf _ _).mapIso (yonedaIsoSheaf hf))


include hf in
/--
Suppose
* F is a `Type u`-valued sheaf on `Sch` with respect to the Zariski topology
* X : ι → Sch is a family of schemes
* f : Π i, yoneda.obj (X i) ⟶ F is a family of relatively representable open immersions
* f is jointly surjective

Then `F` is representable.
-/
@[stacks 01JJ]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variant06e4663a69fc76572d1b9f74f145b728f3eb2848d316b30a14d8e1badd07051f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variant06e4663a69fc76572d1b9f74f145b728f3eb2848d316b30a14d8e1badd07051f.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b974c2b544e1ec61ad486907a02c3418ca6eeee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
