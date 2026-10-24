# mem_paths

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "39da14536f6413ab19e984562b75a9212cd679d5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 52,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/30/306be3b977f5cf5cdf6eedf2f9893f5678f9f37766ec8d9ad3bfcbbc234fb11b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b80fd3b9-ac8c-ea6d-dcac-f1f625d0230e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e612134d-2259-32da-dd00-1e0bdb9991fb",
  "kind": "lemma",
  "lexical_name": "mem_paths",
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
  "slug": "mem-paths--52201e8bc03cc2c6b9fb52ea",
  "source": {
    "blob": "39da14536f6413ab19e984562b75a9212cd679d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 52,
    "path": "GRWTSK/Algebra/LinearAlgebra/CatalanJacobiTest/Variant306be3b977f5cf5cdf6eedf2f9893f5678f9f37766ec8d9ad3bfcbbc234fb11b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52201e8bc03cc2c6b9fb52ea32176a0cd182f6774d57d57822a3a51e1de4b2aa",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CatalanJacobiTest/Variant306be3b977f5cf5cdf6eedf2f9893f5678f9f37766ec8d9ad3bfcbbc234fb11b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e612134d-2259-32da-dd00-1e0bdb9991fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_paths (n h : ℕ) (l : List DyckStep) :
    l ∈ paths n h ↔ l.length = n ∧ l.count D = h + l.count U ∧ Nonnegative h l := by
  induction n generalizing h l with
  | zero =>
    cases l with
    | nil => by_cases H : h = 0 <;> simp [paths, Nonnegative, H, eq_comm]
    | cons s l => by_cases H : h = 0 <;> simp [paths, H]
  | succ n ih =>
    cases h with
    | zero =>
      cases l with
      | nil => simp [paths]
      | cons s l =>
        cases s with
        | U => simpa [paths,  nonnegative_cons_U, Nat.add_comm] using ih 1 l
        | D => simp [paths,  not_nonnegative_cons_D_zero]
    | succ h =>
      cases l with
      | nil => simp [paths]
      | cons s l =>
        cases s with
        | U =>
          simp [paths,  ih, nonnegative_cons_U, Nat.add_comm, Nat.add_left_comm]
        | D =>
          simp [paths, ih, nonnegative_cons_D, Nat.add_comm, Nat.add_left_comm]
          omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CatalanJacobiTest/Variant306be3b977f5cf5cdf6eedf2f9893f5678f9f37766ec8d9ad3bfcbbc234fb11b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CatalanJacobiTest/Variant306be3b977f5cf5cdf6eedf2f9893f5678f9f37766ec8d9ad3bfcbbc234fb11b.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39da14536f6413ab19e984562b75a9212cd679d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
