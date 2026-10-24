# card_hammingWeight_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:606af2cf-5c89-e131-ce15-30a92786edee",
  "kind": "theorem",
  "lexical_name": "card_hammingWeight_eq",
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
  "slug": "card-hammingweight-eq--4d8b8a3c7d8d1cfa759e8794",
  "source": {
    "blob": "c5c927ed9373e2963c24f73014cfc599e5c73280",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 117,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/HammingPropagationHistograms.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d8b8a3c7d8d1cfa759e879440b2a2ec28dda6c81fbd4469a0053617cc2efc1a",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/HammingPropagationHistograms.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:606af2cf-5c89-e131-ce15-30a92786edee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_hammingWeight_eq (n k : Nat) :
    (Finset.univ.filter fun x : Bits n => hammingWeight x = k).card =
      Nat.choose n k := by
  classical
  calc
    (Finset.univ.filter fun x : Bits n => hammingWeight x = k).card =
        ((Finset.univ : Finset (Fin n)).powersetCard k).card := by
      apply Finset.card_equiv (bitsSupportEquiv n)
      intro x
      simp only [Finset.mem_filter, Finset.mem_univ, true_and,
        Finset.mem_powersetCard, Finset.subset_univ, true_and]
      rfl
    _ = Nat.choose n k := by simp

/-- Hamming weight of the one-bit derivative at an input. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/HammingPropagationHistograms.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/HammingPropagationHistograms.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5c927ed9373e2963c24f73014cfc599e5c73280` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
