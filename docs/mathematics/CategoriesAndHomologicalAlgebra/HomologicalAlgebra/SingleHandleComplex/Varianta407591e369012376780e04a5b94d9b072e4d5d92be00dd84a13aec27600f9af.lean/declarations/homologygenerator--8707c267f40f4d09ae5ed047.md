# homologyGenerator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b66bd5651050a7d1c4217e695860e5b3e4f7239f506fc8a2e64bf979297277cc",
  "kind": "def",
  "lexical_name": "homologyGenerator",
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
  "slug": "homologygenerator--8707c267f40f4d09ae5ed047",
  "source": {
    "blob": "19c5de3ac030d9ccd983900c58f36499af67aa24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 120,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHandleComplex/Varianta407591e369012376780e04a5b94d9b072e4d5d92be00dd84a13aec27600f9af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8707c267f40f4d09ae5ed0471ee98c2a1e70a5cc8e0baa68c1d1fb0cda0e4ad5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHandleComplex/Varianta407591e369012376780e04a5b94d9b072e4d5d92be00dd84a13aec27600f9af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b66bd5651050a7d1c4217e695860e5b3e4f7239f506fc8a2e64bf979297277cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def homologyGenerator
    (R : Type*) [CommRing R]
    (index : Nat) :
    (complex R index).homology index :=
  (homologyLinearEquiv R index).symm 1

/-- Homology uses the same normalization: its distinguished class maps to `1 : R`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHandleComplex/Varianta407591e369012376780e04a5b94d9b072e4d5d92be00dd84a13aec27600f9af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHandleComplex/Varianta407591e369012376780e04a5b94d9b072e4d5d92be00dd84a13aec27600f9af.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19c5de3ac030d9ccd983900c58f36499af67aa24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
