# shell_prime_late

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "41efb9b91729ef198825a01dacccfc03fad0a2b7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 158,
      "path": "GRWTSK/NumberTheory/Moebius/PrimeShellDecomposition.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:65256fee-3676-c85f-2e1c-be3c2d4e2e78",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "41efb9b91729ef198825a01dacccfc03fad0a2b7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 158,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/GRWTSK/NumberTheory/Moebius/PrimeShellDecomposition.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c1c76d25-2c33-665f-1939-8829567e4e04",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b19a79d0-a299-cd24-b866-e49083632049",
  "kind": "theorem",
  "lexical_name": "shell_prime_late",
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
  "slug": "shell-prime-late--9dd0f858b3331df7370076c7",
  "source": {
    "blob": "41efb9b91729ef198825a01dacccfc03fad0a2b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 158,
    "path": "GRWTSK/NumberTheory/Moebius/PrimeShellDecomposition.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9dd0f858b3331df7370076c7019817c1689b5cfc3a1da523eca0da2b36f2b508",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/PrimeShellDecomposition.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b19a79d0-a299-cd24-b866-e49083632049`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shell_prime_late {b T : ℝ} (hb : b < Real.log 2) {p : ℕ}
    (hp : p ∈ horizonShell b T) : T-Real.log (p : ℝ) < Real.log 2 := by
  have hlog : T-b < Real.log (p : ℝ) := by
    simpa only [Real.log_exp] using
      Real.log_lt_log (Real.exp_pos (T-b)) (mem_horizonShell.mp hp).2.1
  linarith

/-- A shell prime cannot share the horizon with any second prime factor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/PrimeShellDecomposition.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/PrimeShellDecomposition.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41efb9b91729ef198825a01dacccfc03fad0a2b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
