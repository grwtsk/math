# equivPUnit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:484dfcfa1b82f4fa857e57609cb9b56575c55e46d9bd961e45fad76c13884d4c",
  "kind": "def",
  "lexical_name": "equivPUnit",
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
  "slug": "equivpunit--11bc9dc629c8be50c5c2f70b",
  "source": {
    "blob": "3917a35e1b3e1334a2ae466d49999fb2f4108186",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 63,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant4c8ae3410de70ff70858f6a0794b525d13107dabba9122cd89ddd49baa3a49fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:11bc9dc629c8be50c5c2f70b9d3f87df78fd59acb287d4081f5c9f3bc0c15d36",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant4c8ae3410de70ff70858f6a0794b525d13107dabba9122cd89ddd49baa3a49fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:484dfcfa1b82f4fa857e57609cb9b56575c55e46d9bd961e45fad76c13884d4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivPUnit [HasZeroObject C] : C ≌ Discrete PUnit.{w + 1} :=
  Equivalence.mk (Functor.star C) (Functor.fromPUnit 0)
    (NatIso.ofComponents
      (fun X =>
        { hom := default
          inv := default })
      fun f => Subsingleton.elim _ _)
    (Functor.punitExt _ _)
#align category_theory.equiv_punit CategoryTheory.equivPUnit

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant4c8ae3410de70ff70858f6a0794b525d13107dabba9122cd89ddd49baa3a49fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant4c8ae3410de70ff70858f6a0794b525d13107dabba9122cd89ddd49baa3a49fa.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3917a35e1b3e1334a2ae466d49999fb2f4108186` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
