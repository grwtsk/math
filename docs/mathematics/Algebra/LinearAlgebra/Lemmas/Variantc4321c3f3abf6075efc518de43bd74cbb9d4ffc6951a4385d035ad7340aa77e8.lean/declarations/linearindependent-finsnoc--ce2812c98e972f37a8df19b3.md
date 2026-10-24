# linearIndependent_finSnoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ca82eaeab026729b2b9be4ac4560a0a70954582f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 689,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c4321c3f3abf6075efc518de43bd74cbb9d4ffc6951a4385d035ad7340aa77e8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:77e29106-79c9-4aac-3d3a-5b8bb2313eff",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bf80818d-a09e-f184-db2c-eb1aaed04acb",
  "kind": "theorem",
  "lexical_name": "linearIndependent_finSnoc",
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
  "slug": "linearindependent-finsnoc--ce2812c98e972f37a8df19b3",
  "source": {
    "blob": "ca82eaeab026729b2b9be4ac4560a0a70954582f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 699,
    "line": 689,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lemmas/Variantc4321c3f3abf6075efc518de43bd74cbb9d4ffc6951a4385d035ad7340aa77e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce2812c98e972f37a8df19b398ddda404ae8f25abdafe411ae077f1f56e296a6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Lemmas/Variantc4321c3f3abf6075efc518de43bd74cbb9d4ffc6951a4385d035ad7340aa77e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf80818d-a09e-f184-db2c-eb1aaed04acb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 689–699.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem linearIndependent_finSnoc {n} {v : Fin n → V} :
    LinearIndependent K (Fin.snoc v x : Fin (n + 1) → V) ↔
      LinearIndependent K v ∧ x ∉ Submodule.span K (range v) := by
  rw [Fin.snoc_eq_cons_rotate, ← Function.comp_def, linearIndependent_equiv,
    linearIndependent_finCons]

@[deprecated (since := "2026-04-07")]
alias linearIndependent_fin_snoc := linearIndependent_finSnoc

/-- See `LinearIndependent.finCons'` for an uglier version that works if you
only have a module over a semiring. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lemmas/Variantc4321c3f3abf6075efc518de43bd74cbb9d4ffc6951a4385d035ad7340aa77e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lemmas/Variantc4321c3f3abf6075efc518de43bd74cbb9d4ffc6951a4385d035ad7340aa77e8.lean#L689).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca82eaeab026729b2b9be4ac4560a0a70954582f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
