# reflectsIsomorphisms_forget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6bbd307ad8304dfc15f5a095aeeed1993831355ede493eedf4ce2f4c22a32bad",
  "kind": "instance",
  "lexical_name": "reflectsIsomorphisms_forget",
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
  "slug": "reflectsisomorphisms-forget--2982c125a140db3a36c62949",
  "source": {
    "blob": "7d1f7f720ee1b664785395541118d2c688c7ed88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 160,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommHopfAlgCat/Variantf1851e95d1d826f4f906c414cb59055a9af3f4fe7236ba7f2c24389ed96b79bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2982c125a140db3a36c629494ac2bc6eaec28f07c5a9144fb5cb09d70e0656bc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommHopfAlgCat/Variantf1851e95d1d826f4f906c414cb59055a9af3f4fe7236ba7f2c24389ed96b79bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6bbd307ad8304dfc15f5a095aeeed1993831355ede493eedf4ce2f4c22a32bad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance reflectsIsomorphisms_forget : (forget (CommHopfAlgCat.{u} R)).ReflectsIsomorphisms where
  reflects {X Y} f _ := by
    let i := asIso ((forget (CommHopfAlgCat.{u} R)).map f)
    let e : X ≃ₐc[R] Y := { f.hom, i.toEquiv with }
    exact (isoMk e).isIso_hom

end CommHopfAlgCat

attribute [local ext] Quiver.Hom.unop_inj

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommHopfAlgCat/Variantf1851e95d1d826f4f906c414cb59055a9af3f4fe7236ba7f2c24389ed96b79bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommHopfAlgCat/Variantf1851e95d1d826f4f906c414cb59055a9af3f4fe7236ba7f2c24389ed96b79bb.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d1f7f720ee1b664785395541118d2c688c7ed88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
