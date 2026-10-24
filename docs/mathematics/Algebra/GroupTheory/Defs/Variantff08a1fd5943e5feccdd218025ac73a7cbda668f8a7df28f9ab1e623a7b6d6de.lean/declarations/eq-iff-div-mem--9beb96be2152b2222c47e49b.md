# eq_iff_div_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "40d5fbcf2fa6aed2482a06bd78656b7245562994",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 124,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ff/ff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9637d762-53d8-381f-ffc6-76edbc925591",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:849ccf69-b40e-e767-39dd-5cae9e7ffb79",
  "kind": "theorem",
  "lexical_name": "eq_iff_div_mem",
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
  "slug": "eq-iff-div-mem--9beb96be2152b2222c47e49b",
  "source": {
    "blob": "40d5fbcf2fa6aed2482a06bd78656b7245562994",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 124,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9beb96be2152b2222c47e49be617c42f7489bdf5c7bee9f214c74ff8fb3fa810",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:849ccf69-b40e-e767-39dd-5cae9e7ffb79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_iff_div_mem {N : Subgroup G} [nN : N.Normal] {x y : G} :
    (x : G ⧸ N) = y ↔ x / y ∈ N := by
  refine eq_comm.trans (QuotientGroup.eq.trans ?_)
  rw [nN.mem_comm_iff, div_eq_mul_inv]

-- for commutative groups we don't need normality assumption

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40d5fbcf2fa6aed2482a06bd78656b7245562994` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
