# paritySquarefreeDiagonal_le_endpoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be4cc662-fa9c-8eac-d5fb-2751f3e0316d",
  "kind": "theorem",
  "lexical_name": "paritySquarefreeDiagonal_le_endpoint",
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
  "slug": "paritysquarefreediagonal-le-endpoint--0de7be88ff2fc73e02ac6e9c",
  "source": {
    "blob": "94e323e1acfbe7953960e1f507636a8d486aa8f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 199,
    "path": "GRWTSK/NumberTheory/Moebius/ParityFourierZeroNonzeroSplit.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0de7be88ff2fc73e02ac6e9c78975e32f84732405314323d1ac83e2dd3723787",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/ParityFourierZeroNonzeroSplit.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be4cc662-fa9c-8eac-d5fb-2751f3e0316d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem paritySquarefreeDiagonal_le_endpoint
    (b r : ℕ) :
    paritySquarefreeDiagonal b r ≤ b := by
  unfold paritySquarefreeDiagonal endpointParitySet
  calc
    (∑ u ∈ (Finset.Icc 1 b).filter (fun u => u % 2 = r),
      moebiusReal u ^ 2) ≤
      ∑ u ∈ (Finset.Icc 1 b).filter (fun u => u % 2 = r), (1 : ℝ) := by
        apply Finset.sum_le_sum
        intro u _hu
        have hmu := abs_moebiusReal_le_one u
        have hm := abs_le.mp hmu
        nlinarith [mul_nonneg (by linarith : 0 ≤ 1 - moebiusReal u)
          (by linarith : 0 ≤ 1 + moebiusReal u)]
    _ = (((Finset.Icc 1 b).filter (fun u => u % 2 = r)).card : ℝ) := by
        simp
    _ ≤ b := by
        norm_cast
        calc
          ((Finset.Icc 1 b).filter (fun u => u % 2 = r)).card ≤
              (Finset.Icc 1 b).card :=
            Finset.card_le_card (Finset.filter_subset _ _)
          _ ≤ b := by
            simp [Nat.card_Icc]

/-- Ordinary real Mertens prefix on positive integers up to the endpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/ParityFourierZeroNonzeroSplit.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/ParityFourierZeroNonzeroSplit.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94e323e1acfbe7953960e1f507636a8d486aa8f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
