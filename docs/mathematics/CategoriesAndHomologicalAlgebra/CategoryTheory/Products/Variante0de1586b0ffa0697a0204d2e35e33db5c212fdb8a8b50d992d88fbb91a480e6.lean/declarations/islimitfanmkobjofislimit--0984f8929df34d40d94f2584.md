# isLimitFanMkObjOfIsLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:02af87744b16a19f6beee23131b7254627a917006b220945e1a390dcd63c3d88",
  "kind": "def",
  "lexical_name": "isLimitFanMkObjOfIsLimit",
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
  "slug": "islimitfanmkobjofislimit--0984f8929df34d40d94f2584",
  "source": {
    "blob": "76e7b54e32c94b9deadfc5e7877853a69f8dbb48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 54,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variante0de1586b0ffa0697a0204d2e35e33db5c212fdb8a8b50d992d88fbb91a480e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0984f8929df34d40d94f2584ee64f6e68e89c2e8aaf1ae9bd4e20fffbb0c0618",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variante0de1586b0ffa0697a0204d2e35e33db5c212fdb8a8b50d992d88fbb91a480e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:02af87744b16a19f6beee23131b7254627a917006b220945e1a390dcd63c3d88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isLimitFanMkObjOfIsLimit [PreservesLimit (Discrete.functor f) G] {P : C} (g : ∀ j, P ⟶ f j)
    (t : IsLimit (Fan.mk _ g)) :
    IsLimit (Fan.mk (G.obj P) fun j => G.map (g j) : Fan fun j => G.obj (f j)) :=
  isLimitMapConeFanMkEquiv _ _ _ (isLimitOfPreserves G t)

/-- The property of reflecting products expressed in terms of fans. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variante0de1586b0ffa0697a0204d2e35e33db5c212fdb8a8b50d992d88fbb91a480e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variante0de1586b0ffa0697a0204d2e35e33db5c212fdb8a8b50d992d88fbb91a480e6.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76e7b54e32c94b9deadfc5e7877853a69f8dbb48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
