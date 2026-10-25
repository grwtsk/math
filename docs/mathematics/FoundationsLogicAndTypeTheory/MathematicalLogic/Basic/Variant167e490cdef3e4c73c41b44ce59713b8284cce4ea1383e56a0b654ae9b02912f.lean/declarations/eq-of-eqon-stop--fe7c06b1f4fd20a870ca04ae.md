# eq_of_eqOn_stop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2006d8ec0ef665351e9a89ffed2619459742149f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 671,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/16/167e490cdef3e4c73c41b44ce59713b8284cce4ea1383e56a0b654ae9b02912f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:604ee623-bda3-870d-4e46-7ccfe77a5ad7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:799df4d5-13d9-c5f4-e905-f5b1aad24578",
  "kind": "theorem",
  "lexical_name": "eq_of_eqOn_stop",
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
  "slug": "eq-of-eqon-stop--fe7c06b1f4fd20a870ca04ae",
  "source": {
    "blob": "2006d8ec0ef665351e9a89ffed2619459742149f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 683,
    "line": 671,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant167e490cdef3e4c73c41b44ce59713b8284cce4ea1383e56a0b654ae9b02912f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe7c06b1f4fd20a870ca04aed37ac7b7fde7fbb8071bf6ba0c36a7f8898abbb3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant167e490cdef3e4c73c41b44ce59713b8284cce4ea1383e56a0b654ae9b02912f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:799df4d5-13d9-c5f4-e905-f5b1aad24578`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 671–683.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_of_eqOn_stop {F : Type*} [FunLike F R S] {f g : F}
    (h : Set.EqOn (f : R → S) (g : R → S) (⊤ : NonUnitalSubsemiring R)) : f = g :=
  DFunLike.ext _ _ fun _ => h trivial

variable [NonUnitalNonAssocSemiring S] [NonUnitalNonAssocSemiring T]
  {s : NonUnitalSubsemiring R}

open NonUnitalSubsemiringClass NonUnitalSubsemiring

/-- Restriction of a non-unital ring homomorphism to its range interpreted as a
non-unital subsemiring.

This is the bundled version of `Set.rangeFactorization`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant167e490cdef3e4c73c41b44ce59713b8284cce4ea1383e56a0b654ae9b02912f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant167e490cdef3e4c73c41b44ce59713b8284cce4ea1383e56a0b654ae9b02912f.lean#L671).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2006d8ec0ef665351e9a89ffed2619459742149f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
