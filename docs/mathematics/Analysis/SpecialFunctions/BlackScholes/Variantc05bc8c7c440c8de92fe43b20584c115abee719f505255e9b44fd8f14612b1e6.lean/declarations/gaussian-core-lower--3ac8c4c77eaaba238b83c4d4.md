# gaussian_core_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "134b0c813ebf5c91b8d707240a7456d4be0046d6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 80,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c05bc8c7c440c8de92fe43b20584c115abee719f505255e9b44fd8f14612b1e6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:985c5487-1b21-3bca-8d13-7df184cd5f6e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:79f94572-97de-5fe9-4fb7-fe6afd5901e2",
  "kind": "theorem",
  "lexical_name": "gaussian_core_lower",
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
  "slug": "gaussian-core-lower--3ac8c4c77eaaba238b83c4d4",
  "source": {
    "blob": "134b0c813ebf5c91b8d707240a7456d4be0046d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 80,
    "path": "GRWTSK/Analysis/SpecialFunctions/BlackScholes/Variantc05bc8c7c440c8de92fe43b20584c115abee719f505255e9b44fd8f14612b1e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ac8c4c77eaaba238b83c4d46d336de53837ccabd40c157b16f185cc19daf675",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/BlackScholes/Variantc05bc8c7c440c8de92fe43b20584c115abee719f505255e9b44fd8f14612b1e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79f94572-97de-5fe9-4fb7-fe6afd5901e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gaussian_core_lower :
    ∀ x ∈ Set.Icc (0:ℝ) 2, (13/100 : ℚ) ≤ Real.exp (-x * x / 2) := by
  certify_bound

/-! ## Part D: Interest Rate Sensitivity (Rho)

∂C/∂r includes the term K·T·e^(-rT)·N(d₂)
For K=100, T=1, r=0.05, N(d₂)∈[0,1]:
Rho ∈ [0, 95.12]

We prove bounds on the key exponential term.
-/

-- K·e^(-rT) with K=1 (normalized)
-- For T=1, r ∈ [0.04, 0.06]: e^(-r) ∈ [0.94, 0.97]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/BlackScholes/Variantc05bc8c7c440c8de92fe43b20584c115abee719f505255e9b44fd8f14612b1e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/BlackScholes/Variantc05bc8c7c440c8de92fe43b20584c115abee719f505255e9b44fd8f14612b1e6.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `134b0c813ebf5c91b8d707240a7456d4be0046d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
