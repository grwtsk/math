# map_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "faf6cfb353a298df796c5c685cf9d8e9b3aa34a6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 269,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d42d0419b763d02aa349611604a171a509070a3c7562bc2f26a56697375f66f2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d4fa6e93-778e-9ff3-d69a-d07ba8eeb5e5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:36873330-b517-22ab-a923-2be120d07788",
  "kind": "lemma",
  "lexical_name": "map_mul",
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
  "slug": "map-mul--59a7e779e7ae64d02d7d56ed",
  "source": {
    "blob": "faf6cfb353a298df796c5c685cf9d8e9b3aa34a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 269,
    "path": "GRWTSK/Algebra/GroupTheory/MapDomain/Variantd42d0419b763d02aa349611604a171a509070a3c7562bc2f26a56697375f66f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59a7e779e7ae64d02d7d56ed5996a4fd32d8fc7641a2342d45fa57fc7d5dd2be",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/MapDomain/Variantd42d0419b763d02aa349611604a171a509070a3c7562bc2f26a56697375f66f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36873330-b517-22ab-a923-2be120d07788`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma map_mul (f : R →+* S) (x y : R[M]) :
    map (f : R →+ S) (x * y) = map f x * map f y := by
  classical
  ext
  simp [mul_def, sum_mapRange_index, map_finsuppSum, single_apply, apply_ite]

end Mul

variable [Monoid M] [Monoid N] [Monoid O]

variable (R) in
/-- If `f : G → H` is a multiplicative homomorphism between two monoids, then
`MonoidAlgebra.mapDomain f` is a ring homomorphism between their monoid algebras. -/
@[to_additive (attr := simps) /--
If `f : G → H` is a multiplicative homomorphism between two additive monoids, then
`AddMonoidAlgebra.mapDomain f` is a ring homomorphism between their additive monoid algebras. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/MapDomain/Variantd42d0419b763d02aa349611604a171a509070a3c7562bc2f26a56697375f66f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/MapDomain/Variantd42d0419b763d02aa349611604a171a509070a3c7562bc2f26a56697375f66f2.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `faf6cfb353a298df796c5c685cf9d8e9b3aa34a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
