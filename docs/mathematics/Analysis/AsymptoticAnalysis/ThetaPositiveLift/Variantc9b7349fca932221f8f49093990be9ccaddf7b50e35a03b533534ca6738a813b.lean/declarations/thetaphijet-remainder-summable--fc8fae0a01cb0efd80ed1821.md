# thetaPhiJet_remainder_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b901f0e5de39bf2f57c0b3c596b4d32a591073ef",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 193,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c9b7349fca932221f8f49093990be9ccaddf7b50e35a03b533534ca6738a813b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7418f379-90b7-84ac-f463-5cbbb1723326",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a3a36f5b-573d-88df-fa74-5bfbae2b8c9f",
  "kind": "theorem",
  "lexical_name": "thetaPhiJet_remainder_summable",
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
  "slug": "thetaphijet-remainder-summable--fc8fae0a01cb0efd80ed1821",
  "source": {
    "blob": "b901f0e5de39bf2f57c0b3c596b4d32a591073ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 193,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantc9b7349fca932221f8f49093990be9ccaddf7b50e35a03b533534ca6738a813b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc8fae0a01cb0efd80ed1821ce73cd882cca48d9b5086a2686c1b50e84100aea",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantc9b7349fca932221f8f49093990be9ccaddf7b50e35a03b533534ca6738a813b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3a36f5b-573d-88df-fa74-5bfbae2b8c9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiJet_remainder_summable (k : Fin 5) {A : ℝ} (hA : 3 ≤ A) :
    Summable (fun m : ℕ => ((m : ℝ) + 3) ^ 2 *
      thetaPhiJetPolynomial k (A * ((m : ℝ) + 3) ^ 2) *
        Real.exp (-A * (((m : ℝ) + 3) ^ 2 - 1))) := by
  change Summable (jetRemainderTerm k A)
  exact (((thetaGaussianFromThree_summable hA (2 * k.val + 4) (by omega)).mul_left
    (2 * 4 ^ k.val * A ^ (k.val + 1))).of_nonneg_of_le
      (fun m => norm_nonneg _) (jetRemainderTerm_norm_le k hA)).of_norm

/-- A complete absolute error bound for each raw source jet beyond the first two modes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantc9b7349fca932221f8f49093990be9ccaddf7b50e35a03b533534ca6738a813b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantc9b7349fca932221f8f49093990be9ccaddf7b50e35a03b533534ca6738a813b.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b901f0e5de39bf2f57c0b3c596b4d32a591073ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
