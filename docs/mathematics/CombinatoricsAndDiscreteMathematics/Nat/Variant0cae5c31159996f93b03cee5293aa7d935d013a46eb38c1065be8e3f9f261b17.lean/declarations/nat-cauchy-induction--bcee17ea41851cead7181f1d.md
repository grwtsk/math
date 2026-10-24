# Nat.cauchy_induction'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ca717d8ba4e7dca9939748c367dc2211321f6b19",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 271,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:02ffd412-0a81-9d58-c3bb-34b6b5bdf8d0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:164861ae-0a8e-3faf-f50a-b9591161c44c",
  "kind": "theorem",
  "lexical_name": "Nat.cauchy_induction'",
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
  "slug": "nat-cauchy-induction--bcee17ea41851cead7181f1d",
  "source": {
    "blob": "ca717d8ba4e7dca9939748c367dc2211321f6b19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 271,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bcee17ea41851cead7181f1d96e8c5e3cfdec9ff32bb73f7e2541820cab4d10e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:164861ae-0a8e-3faf-f50a-b9591161c44c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Nat.cauchy_induction' (seed : ℕ) (h : ∀ n, P (n + 1) → P n) (hs : P seed)
    (hi : ∀ x, seed ≤ x → P x → ∃ y, x < y ∧ P y) (n : ℕ) : P n := by
  apply Nat.decreasing_induction_of_infinite h fun hf => _
  intro hf
  obtain ⟨m, hP, hm⟩ := hf.exists_maximal ⟨seed, hs⟩
  obtain ⟨y, hl, hy⟩ := hi m (le_of_not_gt <| not_lt_iff_le_imp_ge.2 <| hm hs) hP
  exact hl.not_ge (hm hy hl.le)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca717d8ba4e7dca9939748c367dc2211321f6b19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
