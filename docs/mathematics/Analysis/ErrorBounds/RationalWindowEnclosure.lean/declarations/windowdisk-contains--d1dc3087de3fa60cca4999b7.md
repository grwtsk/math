# windowDisk_contains

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0be407ca-97a0-2bd0-4461-ef3e321509dd",
  "kind": "theorem",
  "lexical_name": "windowDisk_contains",
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
  "slug": "windowdisk-contains--d1dc3087de3fa60cca4999b7",
  "source": {
    "blob": "df6a65cf33ed8586d20420d185ddd9df5afd79d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 193,
    "path": "GRWTSK/Analysis/ErrorBounds/RationalWindowEnclosure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1dc3087de3fa60cca4999b7b8d9aab839c4dc197dbec8bd490cdd83b8792a93",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/RationalWindowEnclosure.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0be407ca-97a0-2bd0-4461-ef3e321509dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem windowDisk_contains
    (gainDisk : ∀ n, I (n + 1) → I n → Disk)
    (residualDisk : ∀ n, I n × I n → Disk) (testDisk : ∀ n, I n → Disk) (tailDisk : Disk)
    (gain : ∀ n, I (n + 1) → I n → ℂ)
    (residual : ∀ n, I n × I n → ℂ) (test : ∀ n, I n → ℂ) (tail : ℝ) (k : ℕ)
    (gainEnclosure : ∀ j, j < k → ∀ i a, Contains (gainDisk j i a) (gain j i a))
    (residualEnclosure : ∀ j, j ≤ k → ∀ p, Contains (residualDisk j p) (residual j p))
    (testEnclosure : ∀ j, j ≤ k → ∀ i, Contains (testDisk j i) (test j i))
    (tailEnclosure : Contains tailDisk (tail : ℂ)) :
    Contains (windowDisk gainDisk residualDisk testDisk tailDisk k)
      (windowValue gain residual test tail k) := by
  unfold windowDisk windowValue
  apply contains_add _ tailEnclosure
  apply contains_add
  · exact readoutDisk_contains (testDisk 0) (residualDisk 0) (test 0) (residual 0)
      (testEnclosure 0 (Nat.zero_le k)) (residualEnclosure 0 (Nat.zero_le k))
  · apply prefixDisk_contains
    intro j hj
    exact stepDisk_contains (gainDisk j) (residualDisk j) (residualDisk (j + 1))
      (testDisk j) (testDisk (j + 1)) (gain j) (residual j) (residual (j + 1))
      (test j) (test (j + 1)) (gainEnclosure j hj)
      (residualEnclosure j (Nat.le_of_lt hj))
      (residualEnclosure (j + 1) (Nat.succ_le_of_lt hj))
      (testEnclosure j (Nat.le_of_lt hj)) (testEnclosure (j + 1) (Nat.succ_le_of_lt hj))

/-- Reuse the existing source-minus-Gram telescope, without a new model or update assumption. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/RationalWindowEnclosure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/RationalWindowEnclosure.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df6a65cf33ed8586d20420d185ddd9df5afd79d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
