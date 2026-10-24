# N_bound_v1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "af47620dac2a680ca2db6e885de9312fdf311eb5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1840,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2c/2cbf83baf6661eb6e5fd09e298fcf1938036b00d5b5e5274ec8520cd4f50a99e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6f1ead29-2039-9da8-2f7d-35706f129968",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6236906b-e5f9-5430-1355-0ee8ca03e1d1",
  "kind": "theorem",
  "lexical_name": "N_bound_v1",
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
  "slug": "n-bound-v1--a362b7325e53cc5acce775b2",
  "source": {
    "blob": "af47620dac2a680ca2db6e885de9312fdf311eb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1854,
    "line": 1840,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/UntrustedPnt0/Variant2cbf83baf6661eb6e5fd09e298fcf1938036b00d5b5e5274ec8520cd4f50a99e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a362b7325e53cc5acce775b2d21b4e7599d7a698c2c1649edee4811607772924",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/UntrustedPnt0/Variant2cbf83baf6661eb6e5fd09e298fcf1938036b00d5b5e5274ec8520cd4f50a99e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6236906b-e5f9-5430-1355-0ee8ca03e1d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1840–1854.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem N_bound_v1 :
    ∀ T ≥ (exp 1 : ℝ),
      |riemannZeta.N T - (T / (2 * π) * log (T / (2 * π)) - T / (2 * π) + 7 / 8)| ≤
        0.1038 * log T + 0.2573 * log (log T) + 8.3675 := by
  sorry

@[blueprint
  "art06-hsw-N-v2"
  (title := "Hasanalizade--Shen--Wong 2022 bound on \\(N(T)\\), alternate $+7/8$ form")
  (statement := /-- Following \cite{HSW2022}, Corollary~1.4, for $T \geq e$ one has the
    Riemann--von Mangoldt estimate with parameters $b_1 = 0.1095$, $b_2 = 0.2042$,
    $b_3 = 3.0305$.  (Same threshold caveat as the previous $N(T)$ bound.) -/)
  (uses := ["Riemann-von-Mangoldt-estimate"])
  (proof := /-- See \cite{HSW2022}, Corollary~1.4. -/)
  (latexEnv := "theorem")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/UntrustedPnt0/Variant2cbf83baf6661eb6e5fd09e298fcf1938036b00d5b5e5274ec8520cd4f50a99e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/UntrustedPnt0/Variant2cbf83baf6661eb6e5fd09e298fcf1938036b00d5b5e5274ec8520cd4f50a99e.lean#L1840).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af47620dac2a680ca2db6e885de9312fdf311eb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
