# poly_binom_aux2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b9c5d96e3feb091df80bd02785452e5ac05ed2cb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 62,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f845bee5dddb5e590c4918614d8a7eecf949fd069de3d5563d2db243a88bc630.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3486d3de-65c0-d038-4586-b5971c9ac8ee",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f036277e-677d-c015-3e97-048b96d80504",
  "kind": "theorem",
  "lexical_name": "poly_binom_aux2",
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
  "slug": "poly-binom-aux2--8c567fc1582ae5cd73622b88",
  "source": {
    "blob": "b9c5d96e3feb091df80bd02785452e5ac05ed2cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 62,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Identities/Variantf845bee5dddb5e590c4918614d8a7eecf949fd069de3d5563d2db243a88bc630.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c567fc1582ae5cd73622b88b1cfe80f738def834fac0a31f9150555d46bb3b1",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Identities/Variantf845bee5dddb5e590c4918614d8a7eecf949fd069de3d5563d2db243a88bc630.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f036277e-677d-c015-3e97-048b96d80504`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem poly_binom_aux2 (f : R[X]) (x y : R) :
    f.eval (x + y) =
      f.sum fun e a => a * (x ^ e + e * x ^ (e - 1) * y + (polyBinomAux1 x y e a).val * y ^ 2) := by
  unfold eval; rw [eval₂_eq_sum]; congr with (n z)
  apply (polyBinomAux1 x y _ _).property

set_option backward.privateInPublic true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Identities/Variantf845bee5dddb5e590c4918614d8a7eecf949fd069de3d5563d2db243a88bc630.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Identities/Variantf845bee5dddb5e590c4918614d8a7eecf949fd069de3d5563d2db243a88bc630.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9c5d96e3feb091df80bd02785452e5ac05ed2cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
