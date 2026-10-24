# sourceKernel_local_cleared_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e910f6091b88067e29af8bb15a2f080cb52a38ce",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 189,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a47420af240533e823c8885b26fd897339389c5db84cdf1922bc046b219d0dd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fdd2f15b-2594-660e-2e29-1bb9ac291b95",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:578a3641-2f58-d9ad-a844-c5c177e959d3",
  "kind": "theorem",
  "lexical_name": "sourceKernel_local_cleared_tendsto",
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
  "slug": "sourcekernel-local-cleared-tendsto--ab3400b65b47c0a398cc978a",
  "source": {
    "blob": "e910f6091b88067e29af8bb15a2f080cb52a38ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 189,
    "path": "GRWTSK/Topology/GeneralTopology/PoleCertificate/Variant4a47420af240533e823c8885b26fd897339389c5db84cdf1922bc046b219d0dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab3400b65b47c0a398cc978a8061233798875586d02b9115a148cc6933238a5d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PoleCertificate/Variant4a47420af240533e823c8885b26fd897339389c5db84cdf1922bc046b219d0dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:578a3641-2f58-d9ad-a844-c5c177e959d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceKernel_local_cleared_tendsto
    (z : ℂ) (hz : z ≠ 0) :
    Tendsto
      (fun w : ℂ ↦ w ^ 9 * sourceKernel z (2 * z + w))
      (𝓝[≠] 0)
      (𝓝 (modeCoefficient z * z ^ 8 *
        (Nat.factorial 8 : ℂ))) := by
  have hmain :
      Tendsto
        (fun w : ℂ ↦ w ^ 9 *
          polynomialKernel (positivePolynomial z) w)
        (𝓝[≠] 0)
        (𝓝 (z ^ 8 * (Nat.factorial 8 : ℂ))) := by
    simpa only [positivePolynomial_coeff_eight] using
      polynomialKernel_cleared_tendsto (positivePolynomial z)
  have h :=
    ninth_order_limit_add_continuous
      (p := (0 : ℂ))
      (by simpa only [sub_zero] using hmain)
      (sourceKernel_local_remainder_analytic z hz).continuousAt
  have hs := h.const_mul (modeCoefficient z)
  convert hs using 1
  · funext w
    rw [sourceKernel_local]
    simp only [sub_zero]
    ring
  · congr 1
    ring

/-- Both reflected source kernels add to the exact equation-(21) coefficient,
with multiplicity counted once. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PoleCertificate/Variant4a47420af240533e823c8885b26fd897339389c5db84cdf1922bc046b219d0dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PoleCertificate/Variant4a47420af240533e823c8885b26fd897339389c5db84cdf1922bc046b219d0dd.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e910f6091b88067e29af8bb15a2f080cb52a38ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
