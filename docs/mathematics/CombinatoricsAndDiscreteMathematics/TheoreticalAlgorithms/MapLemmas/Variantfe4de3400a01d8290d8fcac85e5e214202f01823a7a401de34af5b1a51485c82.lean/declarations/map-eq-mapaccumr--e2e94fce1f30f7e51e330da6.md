# map₂_eq_mapAccumr₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7256b2044c7f50112af0eb1fcfdf3efedea29e2b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 251,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/fe4de3400a01d8290d8fcac85e5e214202f01823a7a401de34af5b1a51485c82.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:23062ab7-8943-2488-d29f-3b5e135bda95",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e5ba0f3f-8a9d-ef0a-07ea-09d4457e4013",
  "kind": "theorem",
  "lexical_name": "map₂_eq_mapAccumr₂",
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
  "slug": "map-eq-mapaccumr--e2e94fce1f30f7e51e330da6",
  "source": {
    "blob": "7256b2044c7f50112af0eb1fcfdf3efedea29e2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 251,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantfe4de3400a01d8290d8fcac85e5e214202f01823a7a401de34af5b1a51485c82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2e94fce1f30f7e51e330da6d0ec88d806e3505558efd07d8962674bdfa6fcef",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantfe4de3400a01d8290d8fcac85e5e214202f01823a7a401de34af5b1a51485c82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5ba0f3f-8a9d-ef0a-07ea-09d4457e4013`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem map₂_eq_mapAccumr₂ {f : α → β → γ} :
    map₂ f xs ys = (mapAccumr₂ (fun x y (_ : Unit) ↦ ((), f x y)) xs ys ()).snd := by
  induction xs, ys using Vector.revInductionOn₂ <;> simp_all

/--
If there is a set of states that is closed under `f`, and such that `f` produces that same output
for all states in this set, then the state is not actually needed.
Hence, then we can rewrite `mapAccumr₂` into just `map₂`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantfe4de3400a01d8290d8fcac85e5e214202f01823a7a401de34af5b1a51485c82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantfe4de3400a01d8290d8fcac85e5e214202f01823a7a401de34af5b1a51485c82.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7256b2044c7f50112af0eb1fcfdf3efedea29e2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
