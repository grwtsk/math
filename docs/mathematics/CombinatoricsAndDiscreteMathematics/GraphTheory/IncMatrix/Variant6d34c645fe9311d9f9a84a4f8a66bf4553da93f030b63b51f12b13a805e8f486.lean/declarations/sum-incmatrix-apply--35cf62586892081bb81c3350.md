# sum_incMatrix_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1df4c32b-d9b7-b448-7c5e-e6e870edb75f",
  "kind": "theorem",
  "lexical_name": "sum_incMatrix_apply",
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
  "slug": "sum-incmatrix-apply--35cf62586892081bb81c3350",
  "source": {
    "blob": "b8ca9aeca8bee3daadeafd0bc9861323a51fb792",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 128,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant6d34c645fe9311d9f9a84a4f8a66bf4553da93f030b63b51f12b13a805e8f486.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35cf62586892081bb81c3350357e1c839a68509e0b0d88477c57b175b56e43aa",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant6d34c645fe9311d9f9a84a4f8a66bf4553da93f030b63b51f12b13a805e8f486.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1df4c32b-d9b7-b448-7c5e-e6e870edb75f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_incMatrix_apply [DecidableEq α] [DecidableRel G.Adj] :
    ∑ e, G.incMatrix R a e = G.degree a := by
  simp [incMatrix_apply', sum_boole, Set.filter_mem_univ_eq_toFinset]
#align simple_graph.sum_inc_matrix_apply SimpleGraph.sum_incMatrix_apply

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant6d34c645fe9311d9f9a84a4f8a66bf4553da93f030b63b51f12b13a805e8f486.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant6d34c645fe9311d9f9a84a4f8a66bf4553da93f030b63b51f12b13a805e8f486.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8ca9aeca8bee3daadeafd0bc9861323a51fb792` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
