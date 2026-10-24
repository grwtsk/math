# toList_spec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ad76e22-55e1-5b85-56f9-df7d93ff2691",
  "kind": "theorem",
  "lexical_name": "toList_spec",
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
  "slug": "tolist-spec--a97b79414f14e90eab1c8b6b",
  "source": {
    "blob": "683dd10d7f72399a7543ecb3199e11d699bc34c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 330,
    "line": 315,
    "path": "GRWTSK/Algebra/GroupTheory/Fold/Variante69332c1775a2bf4940f6aa862ea2a1a2bc575ea1291b913e4a80bb865c4d847.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a97b79414f14e90eab1c8b6b0c847f2b2737cc6edcd7ebf72c3960d21a9c4413",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Fold/Variante69332c1775a2bf4940f6aa862ea2a1a2bc575ea1291b913e4a80bb865c4d847.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ad76e22-55e1-5b85-56f9-df7d93ff2691`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 315–330.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toList_spec (xs : t α) : toList xs = FreeMonoid.toList (foldMap FreeMonoid.of xs) :=
  Eq.symm <|
    calc
      FreeMonoid.toList (foldMap FreeMonoid.of xs) =
          FreeMonoid.toList (foldMap FreeMonoid.of xs).reverse.reverse := by
          simp only [FreeMonoid.reverse_reverse]
      _ = (List.foldr cons [] (foldMap FreeMonoid.of xs).toList.reverse).reverse := by simp
      _ = (ConcreteCategory.hom
          (unop (Foldl.ofFreeMonoid (flip cons) (foldMap FreeMonoid.of xs))) []).reverse := by
            simp [Function.flip_def, List.foldr_reverse, Foldl.ofFreeMonoid, unop_op]
      _ = toList xs := by
            rw [foldMap_hom_free (Foldl.ofFreeMonoid (flip <| @cons α))]
            simp only [toList, foldl, Foldl.get, foldl.ofFreeMonoid_comp_of,
              Function.comp_apply]

set_option backward.isDefEq.respectTransparency.types false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Fold/Variante69332c1775a2bf4940f6aa862ea2a1a2bc575ea1291b913e4a80bb865c4d847.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Fold/Variante69332c1775a2bf4940f6aa862ea2a1a2bc575ea1291b913e4a80bb865c4d847.lean#L315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `683dd10d7f72399a7543ecb3199e11d699bc34c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
