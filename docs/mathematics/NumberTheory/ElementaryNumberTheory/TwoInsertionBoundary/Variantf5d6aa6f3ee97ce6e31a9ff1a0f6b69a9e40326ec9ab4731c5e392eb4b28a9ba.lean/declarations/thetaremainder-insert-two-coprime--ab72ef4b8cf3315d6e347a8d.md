# thetaRemainder_insert_two_coprime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6d0be4daa08e4aeb8faafcd43eadd56fd640e1d4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 105,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f5/f5d6aa6f3ee97ce6e31a9ff1a0f6b69a9e40326ec9ab4731c5e392eb4b28a9ba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:37dd56d2-5b14-f18d-fb15-c917bdf9c662",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:68056ba2-dc21-7e5c-f7fe-66d090439d0b",
  "kind": "theorem",
  "lexical_name": "thetaRemainder_insert_two_coprime",
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
  "slug": "thetaremainder-insert-two-coprime--ab72ef4b8cf3315d6e347a8d",
  "source": {
    "blob": "6d0be4daa08e4aeb8faafcd43eadd56fd640e1d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 105,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variantf5d6aa6f3ee97ce6e31a9ff1a0f6b69a9e40326ec9ab4731c5e392eb4b28a9ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab72ef4b8cf3315d6e347a8dd34d9fdc8ea652d57a29d12a7294f24b64083cf1",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variantf5d6aa6f3ee97ce6e31a9ff1a0f6b69a9e40326ec9ab4731c5e392eb4b28a9ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68056ba2-dc21-7e5c-f7fe-66d090439d0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaRemainder_insert_two_coprime (A : ℝ) (P : Finset ℕ) (g T : ℕ)
    (hP : ∀ p ∈ P, Nat.Prime p) (h2P : 2 ∉ P) (hg : Nat.Coprime g 2) :
    rectangularContribution (insert 2 P) g T T (thetaRemainder A) =
      rectangularContribution P g T T (ThetaKernelTransport.thetaKernel A) -
        2 * rectangularContribution P g (T / 2) T
          (fun q ↦ ThetaKernelTransport.thetaKernel A (2 * q)) -
      ∑ a ∈ (supportedPairs P).filter (fun a ↦ T / 2 < a.1 ∧ a.1 ≤ T ∧ a.2 ≤ T),
        (ArithmeticFunction.moebius (a.1 * a.2) : ℝ) *
          (if Nat.Coprime g (a.1 * a.2) then 1 else 0) *
            (sourceRankOneCoefficient A / (((a.1 * a.2) * g ^ 2 : ℕ) : ℝ)) := by
  rw [thetaRemainder_rectangle_eq,
    rankOne_square_insert_two_coprime A P g T hP h2P hg,
    squareContribution_insert P 2 g T hP Nat.prime_two h2P,
    if_pos hg, mul_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variantf5d6aa6f3ee97ce6e31a9ff1a0f6b69a9e40326ec9ab4731c5e392eb4b28a9ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variantf5d6aa6f3ee97ce6e31a9ff1a0f6b69a9e40326ec9ab4731c5e392eb4b28a9ba.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d0be4daa08e4aeb8faafcd43eadd56fd640e1d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
