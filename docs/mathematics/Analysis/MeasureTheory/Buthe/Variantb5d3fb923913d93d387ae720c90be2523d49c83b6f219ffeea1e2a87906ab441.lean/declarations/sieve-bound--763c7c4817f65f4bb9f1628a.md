# sieve_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d6f4f777-0bae-ce3e-c375-49752163ca5b",
  "kind": "theorem",
  "lexical_name": "sieve_bound",
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
  "slug": "sieve-bound--763c7c4817f65f4bb9f1628a",
  "source": {
    "blob": "d46da42816612559ae96b5220d4acee7d2e1f8bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 139,
    "path": "GRWTSK/Analysis/MeasureTheory/Buthe/Variantb5d3fb923913d93d387ae720c90be2523d49c83b6f219ffeea1e2a87906ab441.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:763c7c4817f65f4bb9f1628a91b29c592a4413376eee7e024e77c5f01f15f9c9",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Buthe/Variantb5d3fb923913d93d387ae720c90be2523d49c83b6f219ffeea1e2a87906ab441.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6f4f777-0bae-ce3e-c375-49752163ca5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sieve_bound :
    ∀ t ∈ Set.Icc (100 : ℝ) (5 * 10 ^ 10),
      -(0.8 : ℝ) ≤ (t - ψ t) / sqrt t ∧
        (t - ψ t) / sqrt t ≤ (0.81 : ℝ) := by
  sorry

@[blueprint
  "buthe-eq-6-2"
  (title := "Buthe Equation (6.2)")
  (statement := /-- If $x, M_\psi^-, M_\psi^+$ are as in Table 1 of Buthe, then $\frac{t - \psi(t)}{\sqrt{t}} \in [M_\psi^-, M_\psi^+]$ for $t \in [x, 2x]$. -/)
  (latexEnv := "lemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Buthe/Variantb5d3fb923913d93d387ae720c90be2523d49c83b6f219ffeea1e2a87906ab441.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Buthe/Variantb5d3fb923913d93d387ae720c90be2523d49c83b6f219ffeea1e2a87906ab441.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d46da42816612559ae96b5220d4acee7d2e1f8bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
