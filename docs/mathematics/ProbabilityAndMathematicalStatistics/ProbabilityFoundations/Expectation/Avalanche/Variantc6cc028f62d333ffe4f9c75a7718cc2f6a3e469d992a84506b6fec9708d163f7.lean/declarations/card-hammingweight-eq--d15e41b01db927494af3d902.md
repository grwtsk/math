# card_hammingWeight_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aedee39c-3ea8-7277-3cf6-d0d872f1cd43",
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
  "slug": "card-hammingweight-eq--d15e41b01db927494af3d902",
  "source": {
    "blob": "c839a015cb6d2e047ab5061b171d39f78d52370c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 706,
    "line": 692,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Avalanche/Variantc6cc028f62d333ffe4f9c75a7718cc2f6a3e469d992a84506b6fec9708d163f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d15e41b01db927494af3d902371e71d797ee9b621a9858d4002c1ebff56f22cc",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Avalanche/Variantc6cc028f62d333ffe4f9c75a7718cc2f6a3e469d992a84506b6fec9708d163f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aedee39c-3ea8-7277-3cf6-d0d872f1cd43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 692–706.

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

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Avalanche/Variantc6cc028f62d333ffe4f9c75a7718cc2f6a3e469d992a84506b6fec9708d163f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Avalanche/Variantc6cc028f62d333ffe4f9c75a7718cc2f6a3e469d992a84506b6fec9708d163f7.lean#L692).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c839a015cb6d2e047ab5061b171d39f78d52370c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
