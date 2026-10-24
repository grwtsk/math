# bklnw_eq_A_12

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d23f277aa57f0df744f827aba10ffe84abca071f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 168,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/202ad4db8f56bf7b19a8bbb3fba44f9bc01fe9e287a208d0ab0df6b7837eaa9d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:57ba9c77-a557-7e10-886c-51b8daf31fe8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5184925f-06dc-9fc9-f217-aa9bb7d00cb3",
  "kind": "theorem",
  "lexical_name": "bklnw_eq_A_12",
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
  "slug": "bklnw-eq-a-12--7bec8fbd3a8e461b0b685dd4",
  "source": {
    "blob": "d23f277aa57f0df744f827aba10ffe84abca071f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 168,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/BKLNWApp/Variant202ad4db8f56bf7b19a8bbb3fba44f9bc01fe9e287a208d0ab0df6b7837eaa9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7bec8fbd3a8e461b0b685dd424ba4eb6f25b237ae5c5967e1e13267376bc77f7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/BKLNWApp/Variant202ad4db8f56bf7b19a8bbb3fba44f9bc01fe9e287a208d0ab0df6b7837eaa9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5184925f-06dc-9fc9-f217-aa9bb7d00cb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bklnw_eq_A_12 (I : Inputs)
    (x T δ lambda : ℝ) (hlambda : 1 < lambda)
    (hx : 1 < x) (hT : 0 < T) (hTH : I.H < T)
    (hσ : 1 - δ ∈ I.ZDB.σ_range) (hT₀ : I.ZDB.T₀ ≤ I.H) :
    let K := ⌊log (T / I.H) / log lambda⌋₊ + 1
    ‖Sigma₂ x T δ‖ ≤
      2 * ∑ k ∈ Finset.range K,
        (lambda ^ (k + 1) *
          x ^ (-(1 / (I.R * log (T / lambda ^ k)))) /
          T) *
        I.ZDB.N (1 - δ) (T / lambda ^ k) := by
  sorry

@[blueprint
  "bklnw-eq_A_13"
  (title := "Equation (A.13)")
  (statement := /-- We have
  $$ |\Sigma_2| \leq \frac{2\lambda}{T}
  \sum_{k=0}^{K-1} \lambda^k
  x^{-\frac{1}{R \log(T/\lambda^k)}}
  \left(c_1 \left(\frac{T}{\lambda^k}
  \right)^{p(1-\delta)}
  (\log(T/\lambda^k))^{q(1-\delta)}
  + c_2 (\log(T/\lambda^k))^2\right) $$
  where $p$, $q$, $c_1$, $c_2$ are the
  parameters of the zero density bound. -/)
  (proof := /-- Inserting (A.6) into the result
  of (A.12). -/)
  (latexEnv := "sublemma")
  (discussion := 751)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/BKLNWApp/Variant202ad4db8f56bf7b19a8bbb3fba44f9bc01fe9e287a208d0ab0df6b7837eaa9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/BKLNWApp/Variant202ad4db8f56bf7b19a8bbb3fba44f9bc01fe9e287a208d0ab0df6b7837eaa9d.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d23f277aa57f0df744f827aba10ffe84abca071f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
