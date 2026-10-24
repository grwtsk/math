# toList_spec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eb44ef23c3bbda5f0f35db8b80ea017410fb94c5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 307,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/70ea1c7da5164c9b9516c8ffd5776d3a3768af29e7800642b091f7f478a64b1a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d04e82b7-aa72-1cb0-8bef-2c82127413db",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1ed6e37c-d42d-a746-3320-863178b756e8",
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
  "slug": "tolist-spec--3cf8ce70fa3aad380ca71083",
  "source": {
    "blob": "eb44ef23c3bbda5f0f35db8b80ea017410fb94c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 307,
    "path": "GRWTSK/Algebra/GroupTheory/Fold/Variant70ea1c7da5164c9b9516c8ffd5776d3a3768af29e7800642b091f7f478a64b1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3cf8ce70fa3aad380ca71083f92ef1263c13885bcba08573f37f86e12898106c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Fold/Variant70ea1c7da5164c9b9516c8ffd5776d3a3768af29e7800642b091f7f478a64b1a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ed6e37c-d42d-a746-3320-863178b756e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 307–322.

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

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Fold/Variant70ea1c7da5164c9b9516c8ffd5776d3a3768af29e7800642b091f7f478a64b1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Fold/Variant70ea1c7da5164c9b9516c8ffd5776d3a3768af29e7800642b091f7f478a64b1a.lean#L307).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb44ef23c3bbda5f0f35db8b80ea017410fb94c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
