# eulerPhi_prime_power

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1f5083d79e6276e6b65cfebcd2130826fb4499b1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 27,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/83/8314421655ff522fc914c0c729da8887bb7b40fa9b8d66c93356095bfb7fe3f0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e3d77218-9825-f744-192e-6646ebe4d7f4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:be6ed247-1458-0695-e243-13506e59c250",
  "kind": "theorem",
  "lexical_name": "eulerPhi_prime_power",
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
  "slug": "eulerphi-prime-power--7c33da5dc5d227f42e8c95df",
  "source": {
    "blob": "1f5083d79e6276e6b65cfebcd2130826fb4499b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 27,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/EulerPhi/Variant8314421655ff522fc914c0c729da8887bb7b40fa9b8d66c93356095bfb7fe3f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c33da5dc5d227f42e8c95df1b8bd4a63bf902ec1437906f53c753190db8b543",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/EulerPhi/Variant8314421655ff522fc914c0c729da8887bb7b40fa9b8d66c93356095bfb7fe3f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be6ed247-1458-0695-e243-13506e59c250`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eulerPhi_prime_power
    {p k : Nat}
    (hp : Nat.Prime p)
    (hk : 0 < k) :
    eulerPhi (p ^ k) = p ^ k - p ^ (k - 1) := by
  rw [eulerPhi, Nat.totient_prime_pow hp hk]
  have hkpred : k = k - 1 + 1 := by omega
  have hpow : p ^ k = p ^ (k - 1) * p := by
    conv_lhs => rw [hkpred]
    rw [pow_succ]
  calc
    p ^ (k - 1) * (p - 1)
        = p ^ (k - 1) * p - p ^ (k - 1) := by
            rw [Nat.mul_sub_left_distrib, mul_one]
    _ = p ^ k - p ^ (k - 1) := by
            rw [hpow]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/EulerPhi/Variant8314421655ff522fc914c0c729da8887bb7b40fa9b8d66c93356095bfb7fe3f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/EulerPhi/Variant8314421655ff522fc914c0c729da8887bb7b40fa9b8d66c93356095bfb7fe3f0.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f5083d79e6276e6b65cfebcd2130826fb4499b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
