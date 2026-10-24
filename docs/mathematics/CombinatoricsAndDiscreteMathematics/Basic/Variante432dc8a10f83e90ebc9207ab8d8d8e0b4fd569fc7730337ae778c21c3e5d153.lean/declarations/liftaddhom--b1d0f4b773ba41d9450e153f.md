# liftAddHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3a607d329bfad8f7d1d9fac9ba9f4407e79bbdc9844aabdce21e303656489e81",
  "kind": "def",
  "lexical_name": "liftAddHom",
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
  "slug": "liftaddhom--b1d0f4b773ba41d9450e153f",
  "source": {
    "blob": "15c0485a229ea474752effd892aab6864d2e0860",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 394,
    "line": 384,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variante432dc8a10f83e90ebc9207ab8d8d8e0b4fd569fc7730337ae778c21c3e5d153.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b1d0f4b773ba41d9450e153ffaf3902e8f5b6c8306b24772fbcc55c75bd4cb7c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variante432dc8a10f83e90ebc9207ab8d8d8e0b4fd569fc7730337ae778c21c3e5d153.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3a607d329bfad8f7d1d9fac9ba9f4407e79bbdc9844aabdce21e303656489e81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 384–394.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def liftAddHom [AddZeroClass M] [AddCommMonoid N] : (α → M →+ N) ≃+ ((α →₀ M) →+ N) where
  toFun F :=
    { toFun f := f.sum (F ·)
      map_zero' := Finsupp.sum_zero_index
      map_add' f g := Finsupp.sum_hom_add_index F }
  invFun F x := F.comp (singleAddHom x)
  left_inv F := by ext; simp
  right_inv F := by ext; simp
  map_add' F G := by ext; simp

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variante432dc8a10f83e90ebc9207ab8d8d8e0b4fd569fc7730337ae778c21c3e5d153.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variante432dc8a10f83e90ebc9207ab8d8d8e0b4fd569fc7730337ae778c21c3e5d153.lean#L384).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15c0485a229ea474752effd892aab6864d2e0860` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
