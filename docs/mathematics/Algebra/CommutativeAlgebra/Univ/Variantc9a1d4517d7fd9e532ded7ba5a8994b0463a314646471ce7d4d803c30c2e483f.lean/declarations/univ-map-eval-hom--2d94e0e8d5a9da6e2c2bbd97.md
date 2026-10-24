# univ_map_eval₂Hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "22503873497a33552c0b13af9012d9b5ff8a3d63",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 53,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c9a1d4517d7fd9e532ded7ba5a8994b0463a314646471ce7d4d803c30c2e483f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b542b759-5bee-3111-7e9f-c6e0f486ea8a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dc110f8e-c347-43d9-e272-efba44f97080",
  "kind": "lemma",
  "lexical_name": "univ_map_eval₂Hom",
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
  "slug": "univ-map-eval-hom--2d94e0e8d5a9da6e2c2bbd97",
  "source": {
    "blob": "22503873497a33552c0b13af9012d9b5ff8a3d63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 53,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Univ/Variantc9a1d4517d7fd9e532ded7ba5a8994b0463a314646471ce7d4d803c30c2e483f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d94e0e8d5a9da6e2c2bbd977913a97dd84e8b300674877c13b12bb02fb67fa8",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Univ/Variantc9a1d4517d7fd9e532ded7ba5a8994b0463a314646471ce7d4d803c30c2e483f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc110f8e-c347-43d9-e272-efba44f97080`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma univ_map_eval₂Hom (M : n × n → S) :
    (univ R n).map (eval₂Hom f M) = charpoly (Matrix.of M.curry) := by
  rw [univ, ← charpoly_map, coe_eval₂Hom, ← mvPolynomialX_map_eval₂ f (Matrix.of M.curry)]
  simp only [of_apply, Function.curry_apply, Prod.mk.eta]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Univ/Variantc9a1d4517d7fd9e532ded7ba5a8994b0463a314646471ce7d4d803c30c2e483f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Univ/Variantc9a1d4517d7fd9e532ded7ba5a8994b0463a314646471ce7d4d803c30c2e483f.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22503873497a33552c0b13af9012d9b5ff8a3d63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
