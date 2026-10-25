# m_n_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5b0765b4a9cf994d27c5089bf0bf1bd6ea2dfe1d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 149,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6ed414a37e94f328c5a8d323acd96646b78a852ff5f093d53793772528b00a0d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:35bb92f6-4ac8-09e2-b080-0dc304ca45e6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fe02436f-f90f-b451-ec45-81ac0d7a8152",
  "kind": "theorem",
  "lexical_name": "m_n_bounds",
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
  "slug": "m-n-bounds--0cd29533962ef3ceaf47bffb",
  "source": {
    "blob": "5b0765b4a9cf994d27c5089bf0bf1bd6ea2dfe1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 149,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant6ed414a37e94f328c5a8d323acd96646b78a852ff5f093d53793772528b00a0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0cd29533962ef3ceaf47bffb6bb56d4b64ec70840d6b410785f5d0428bbc2503",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant6ed414a37e94f328c5a8d323acd96646b78a852ff5f093d53793772528b00a0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe02436f-f90f-b451-ec45-81ac0d7a8152`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem m_n_bounds {m n : ℕ} (h1 : NatPredicate N m n) : m ≤ fib K ∧ n ≤ fib (K + 1) := by
  obtain ⟨k : ℕ, hm : m = fib k, hn : n = fib (k + 1)⟩ := h1.imp_fib m
  by_cases h2 : k < K + 1
  · have h3 : k ≤ K := lt_succ_iff.mp h2
    constructor
    · calc
        m = fib k := hm
        _ ≤ fib K := fib_mono h3
    · have h6 : k + 1 ≤ K + 1 := succ_le_succ h3
      calc
        n = fib (k + 1) := hn
        _ ≤ fib (K + 1) := fib_mono h6
  · have h7 : N < n := by
      have h8 : K + 2 ≤ k + 1 := succ_le_succ (not_lt.mp h2)
      rw [← fib_add_two] at HK
      calc
        N < fib (K + 2) := HK
        _ ≤ fib (k + 1) := (fib_mono h8)
        _ = n := hn.symm
    have h9 : n ≤ N := h1.n_le_N
    exact absurd h7 h9.not_lt
#align imo1981_q3.m_n_bounds Imo1981Q3.m_n_bounds

/-
We spell out the consequences of this result for `specifiedSet N` here.
-/
variable {M : ℕ} (HM : M = fib K ^ 2 + fib (K + 1) ^ 2)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant6ed414a37e94f328c5a8d323acd96646b78a852ff5f093d53793772528b00a0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant6ed414a37e94f328c5a8d323acd96646b78a852ff5f093d53793772528b00a0d.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b0765b4a9cf994d27c5089bf0bf1bd6ea2dfe1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
