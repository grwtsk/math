# indefinite_inertia

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0806956edcb82a78bd998c2a855bc82ad846a309",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 260,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a9/a92df473a3007505ac1cd2945448f593ee55163aedd9a111960c4c55ce8c9d9e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dc616e70-29ae-2b0a-cdd1-a94f055cb7e2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0ff9e011-93f7-97b2-f990-a48123cbe7cc",
  "kind": "theorem",
  "lexical_name": "indefinite_inertia",
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
  "slug": "indefinite-inertia--ede86c20fa3e09a8ddf97cdb",
  "source": {
    "blob": "0806956edcb82a78bd998c2a855bc82ad846a309",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 260,
    "path": "GRWTSK/Algebra/LinearAlgebra/A92df473a3007505ac1cd2945448f593ee55163aedd9a111960c4c55ce8c9d9eFinalFeshbachFix/Varianta92df473a3007505ac1cd2945448f593ee55163aedd9a111960c4c55ce8c9d9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ede86c20fa3e09a8ddf97cdbdff668f88488a0b092680ca386b8f3de001358b3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/A92df473a3007505ac1cd2945448f593ee55163aedd9a111960c4c55ce8c9d9eFinalFeshbachFix/Varianta92df473a3007505ac1cd2945448f593ee55163aedd9a111960c4c55ce8c9d9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ff9e011-93f7-97b2-f990-a48123cbe7cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem indefinite_inertia :
    (sigPos (fullForm (scalar 0) (1 : Matrix Unit Unit ℝ) 1),
        sigNeg (fullForm (scalar 0) (1 : Matrix Unit Unit ℝ) 1),
        Module.finrank ℝ (fullForm (scalar 0) (1 : Matrix Unit Unit ℝ) 1).radical) =
      (1, 1, 0) := by
  rw [inertia_counts]
  have hp : {i | 0 < weights 0 i} = {Sum.inr ()} := by
    ext i
    rcases i with i | j <;> simp [weights]
  have hn : {i | weights 0 i < 0} = {Sum.inl ()} := by
    ext i
    rcases i with i | j <;> simp [weights]
  have hz : {i | weights 0 i = 0} = ∅ := by
    ext i
    rcases i with i | j <;> simp [weights]
  rw [hp, hn, hz]
  simp

end

end FormalResearch.PositiveAtlas.FeshbachInertia.Fixtures

-- Exact fixture source: tests/positive_atlas_feshbach_equation_ideal.lean

/-! Focused acceptance tests for exact ideal transport, coefficient lifting,
finite radicality scope, and the radical/sign non-implication fixture.

AI attribution: Codex authored these tests.
-/

open FormalResearch.PositiveAtlas

-- The row operation applies even over a ring with nonzero nilpotents.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/A92df473a3007505ac1cd2945448f593ee55163aedd9a111960c4c55ce8c9d9eFinalFeshbachFix/Varianta92df473a3007505ac1cd2945448f593ee55163aedd9a111960c4c55ce8c9d9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/A92df473a3007505ac1cd2945448f593ee55163aedd9a111960c4c55ce8c9d9eFinalFeshbachFix/Varianta92df473a3007505ac1cd2945448f593ee55163aedd9a111960c4c55ce8c9d9e.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0806956edcb82a78bd998c2a855bc82ad846a309` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
