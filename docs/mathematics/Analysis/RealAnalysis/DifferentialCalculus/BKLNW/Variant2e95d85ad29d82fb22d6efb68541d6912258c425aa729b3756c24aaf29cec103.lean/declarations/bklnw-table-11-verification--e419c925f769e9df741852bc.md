# bklnw_table_11_verification

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "31d573af61253eda377326baebeb36929353a168",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1485,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2e95d85ad29d82fb22d6efb68541d6912258c425aa729b3756c24aaf29cec103.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:550a9875-503a-1857-6fd9-af188b7ecaf3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:65e99cd1-edd3-813b-5ec7-b7479ca54ce0",
  "kind": "theorem",
  "lexical_name": "bklnw_table_11_verification",
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
  "slug": "bklnw-table-11-verification--e419c925f769e9df741852bc",
  "source": {
    "blob": "31d573af61253eda377326baebeb36929353a168",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1502,
    "line": 1485,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant2e95d85ad29d82fb22d6efb68541d6912258c425aa729b3756c24aaf29cec103.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e419c925f769e9df741852bcdfec2bdc054a97211b7bc40fb5826e0b97019ea8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant2e95d85ad29d82fb22d6efb68541d6912258c425aa729b3756c24aaf29cec103.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65e99cd1-edd3-813b-5ec7-b7479ca54ce0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1485–1502.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bklnw_table_11_verification (b₀ : ℝ) (B : ℕ → ℝ) (h : (b₀, B 1, B 2, B 3, B 4, B 5) ∈ BKLNW.table_11) : ∀ k ∈ Finset.Icc 1 5, B_8_1' k b₀ ≤ B k := by
  sorry


blueprint_comment /--
\subsection{Bounding theta(x)-x with a logarithmic decay, III: small x}

In this section we tackle small $x$.
-/


@[blueprint
  "bklnw-eq-3-17"
  (title := "BKLNW Equation 3.17")
  (statement := /-- One has $\theta(x) < x - 0.05 \sqrt{x}  \text{ for all } 1 \le x \le 10^{19}.$ -/)
  (proof := /-- This follows from Theorem \ref{buthe-theorem-2c}.  -/)
  (latexEnv := "lemma")
  (discussion := 1258)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant2e95d85ad29d82fb22d6efb68541d6912258c425aa729b3756c24aaf29cec103.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant2e95d85ad29d82fb22d6efb68541d6912258c425aa729b3756c24aaf29cec103.lean#L1485).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31d573af61253eda377326baebeb36929353a168` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
