# mem_functorPushforward_inverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a9e78e4bfb2f2a023eeea52eb9c5537b7bd66f08",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 394,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/293c11790099f03995e497b9fba64922ab830ff279a76813157dae61c522bf3d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2afae80b-e185-1a6b-3208-812d4094642b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:21d1508e-9d2a-0ae3-51eb-bfaf4e9bdf42",
  "kind": "lemma",
  "lexical_name": "mem_functorPushforward_inverse",
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
  "slug": "mem-functorpushforward-inverse--f3914630a4dc135a9e92dd6e",
  "source": {
    "blob": "a9e78e4bfb2f2a023eeea52eb9c5537b7bd66f08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 399,
    "line": 394,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Variant293c11790099f03995e497b9fba64922ab830ff279a76813157dae61c522bf3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3914630a4dc135a9e92dd6e3e7837843e7eb1855a335e4d195cd26e7fb83727",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Variant293c11790099f03995e497b9fba64922ab830ff279a76813157dae61c522bf3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21d1508e-9d2a-0ae3-51eb-bfaf4e9bdf42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 394–399.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_functorPushforward_inverse {X : D} {S : Sieve X} {e : C ≌ D} {f : Y ⟶ e.inverse.obj X} :
    S.functorPushforward e.inverse f ↔ S (e.functor.map f ≫ e.counit.app X) :=
  congr($(S.functorPushforward_inverse e).arrows f)

variable (e : C ≌ D)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Variant293c11790099f03995e497b9fba64922ab830ff279a76813157dae61c522bf3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Variant293c11790099f03995e497b9fba64922ab830ff279a76813157dae61c522bf3d.lean#L394).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9e78e4bfb2f2a023eeea52eb9c5537b7bd66f08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
