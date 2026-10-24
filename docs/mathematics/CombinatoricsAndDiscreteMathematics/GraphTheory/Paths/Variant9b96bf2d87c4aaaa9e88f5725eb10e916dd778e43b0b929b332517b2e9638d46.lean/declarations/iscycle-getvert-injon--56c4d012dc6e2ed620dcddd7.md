# IsCycle.getVert_injOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:74941a0a-6bde-e859-40a9-21db97624e47",
  "kind": "lemma",
  "lexical_name": "IsCycle.getVert_injOn",
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
  "slug": "iscycle-getvert-injon--56c4d012dc6e2ed620dcddd7",
  "source": {
    "blob": "2805a5aa5e57327fc43cc550d1e9ea98840570ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 545,
    "line": 535,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Paths/Variant9b96bf2d87c4aaaa9e88f5725eb10e916dd778e43b0b929b332517b2e9638d46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56c4d012dc6e2ed620dcddd7c15677894de9d43dd4f5b918e8f63a9a3645365c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Paths/Variant9b96bf2d87c4aaaa9e88f5725eb10e916dd778e43b0b929b332517b2e9638d46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74941a0a-6bde-e859-40a9-21db97624e47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 535–545.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsCycle.getVert_injOn {p : G.Walk u u} (hpc : p.IsCycle) :
    Set.InjOn p.getVert {i | 1 ≤ i ∧ i ≤ p.length} := by
  rw [← p.cons_tail_eq hpc.not_nil] at hpc
  intro n hn m hm hnm
  rw [← SimpleGraph.Walk.length_tail_add_one
    (p.not_nil_of_tail_not_nil (not_nil_of_isCycle_cons hpc)), Set.mem_ofPred] at hn hm
  have := ((Walk.cons_isCycle_iff _ _).mp hpc).1.getVert_injOn
    (by lia : n - 1 ≤ p.tail.length) (by lia : m - 1 ≤ p.tail.length)
    (by simp_all)
  lia

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Paths/Variant9b96bf2d87c4aaaa9e88f5725eb10e916dd778e43b0b929b332517b2e9638d46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Paths/Variant9b96bf2d87c4aaaa9e88f5725eb10e916dd778e43b0b929b332517b2e9638d46.lean#L535).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2805a5aa5e57327fc43cc550d1e9ea98840570ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
