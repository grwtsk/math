# derivative_nodal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "34841ffa10a823312c194bc2ca77400de3ccabfc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 510,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/14/146f4415d8c894cb7cdaf96b72fe0b28d36a370e9d8d810b1abe7f858e8b671b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:977aae9c-38a0-0917-bc71-fdb1a8fdf460",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f79a6fec-b52c-ec1c-4825-c527d9fe3a01",
  "kind": "theorem",
  "lexical_name": "derivative_nodal",
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
  "slug": "derivative-nodal--457c63e3eaba6528d591cbb1",
  "source": {
    "blob": "34841ffa10a823312c194bc2ca77400de3ccabfc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 519,
    "line": 510,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lagrange/Variant146f4415d8c894cb7cdaf96b72fe0b28d36a370e9d8d810b1abe7f858e8b671b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:457c63e3eaba6528d591cbb1d8a77a1c3b47425b34eed07f93a97455104e00ca",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Lagrange/Variant146f4415d8c894cb7cdaf96b72fe0b28d36a370e9d8d810b1abe7f858e8b671b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f79a6fec-b52c-ec1c-4825-c527d9fe3a01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 510–519.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem derivative_nodal [DecidableEq ι] :
    derivative (nodal s v) = ∑ i ∈ s, nodal (s.erase i) v := by
  refine s.induction_on ?_ fun i t hit IH => ?_
  · rw [nodal_empty, derivative_one, sum_empty]
  · rw [nodal_insert_eq_nodal hit, derivative_mul, IH, derivative_sub, derivative_X, derivative_C,
      sub_zero, one_mul, sum_insert hit, mul_sum, erase_insert hit, add_right_inj]
    refine sum_congr rfl fun j hjt => ?_
    rw [t.erase_insert_of_ne (ne_of_mem_of_not_mem hjt hit).symm,
      nodal_insert_eq_nodal (mem_of_mem_erase.mt hit)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Lagrange/Variant146f4415d8c894cb7cdaf96b72fe0b28d36a370e9d8d810b1abe7f858e8b671b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Lagrange/Variant146f4415d8c894cb7cdaf96b72fe0b28d36a370e9d8d810b1abe7f858e8b671b.lean#L510).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34841ffa10a823312c194bc2ca77400de3ccabfc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
