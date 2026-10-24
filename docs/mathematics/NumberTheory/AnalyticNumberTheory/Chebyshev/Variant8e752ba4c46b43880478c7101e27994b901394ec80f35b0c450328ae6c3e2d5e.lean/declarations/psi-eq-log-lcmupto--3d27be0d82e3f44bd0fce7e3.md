# psi_eq_log_lcmUpto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "127d981f6245b8f13a3cabddc5109a6b64de5b7f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 191,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8e/8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fa5571f2-7184-ded0-4dad-6fdeb3469e74",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cc789df9-4dae-0817-e0f8-ca3e2e061f8a",
  "kind": "theorem",
  "lexical_name": "psi_eq_log_lcmUpto",
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
  "slug": "psi-eq-log-lcmupto--3d27be0d82e3f44bd0fce7e3",
  "source": {
    "blob": "127d981f6245b8f13a3cabddc5109a6b64de5b7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 191,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d27be0d82e3f44bd0fce7e36bd44761e500c40b7ded0739fa5a624e5dd69909",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc789df9-4dae-0817-e0f8-ca3e2e061f8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem psi_eq_log_lcmUpto (n : ℕ) : psi n = log (lcmUpto n) := by
  rw [lcmUpto_eq_prod_pow_log, Nat.cast_prod, log_prod]
  · simp [psi_eq_sum_mul_log_prime]
  · simp +contextual

/-- $\mathrm{lcm}(1, \dots, n)$ is divisible by $\binom{n}{k}$ for all $k \le n$. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `127d981f6245b8f13a3cabddc5109a6b64de5b7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
