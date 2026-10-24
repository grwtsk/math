# product_local_factorization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:912ffaa4-a0c0-16bb-6a72-c842a462f12a",
  "kind": "theorem",
  "lexical_name": "product_local_factorization",
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
  "slug": "product-local-factorization--12db975b2e81b10734371c48",
  "source": {
    "blob": "dcb736fbc9dd37ce44a3bb2405788f81876ae7b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 20,
    "line": 10,
    "path": "GRWTSK/Analysis/Complex/LocalFactorOrderProduct.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12db975b2e81b10734371c48d1c67aafcb9ec3fc6bf73262c1ef5ad47d4ef62d",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/LocalFactorOrderProduct.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:912ffaa4-a0c0-16bb-6a72-c842a462f12a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 10–20.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem product_local_factorization (f g u v : ℂ → ℂ) (a : ℂ) (k l : ℤ)
    (hf : f =ᶠ[𝓝[≠] a] fun s => (s - a) ^ k * u s)
    (hg : g =ᶠ[𝓝[≠] a] fun s => (s - a) ^ l * v s) :
    (fun s => f s * g s) =ᶠ[𝓝[≠] a]
      fun s => (s - a) ^ (k + l) * (u s * v s) := by
  filter_upwards [hf, hg, self_mem_nhdsWithin] with s hs ht hsa
  have hs0 : s - a ≠ 0 := sub_ne_zero.mpr (by simpa using hsa)
  rw [hs, ht, zpow_add₀ hs0]
  ring

/-- The scaled coefficient of negative logDeriv records the sum, with its sign. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/LocalFactorOrderProduct.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/LocalFactorOrderProduct.lean#L10).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dcb736fbc9dd37ce44a3bb2405788f81876ae7b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
