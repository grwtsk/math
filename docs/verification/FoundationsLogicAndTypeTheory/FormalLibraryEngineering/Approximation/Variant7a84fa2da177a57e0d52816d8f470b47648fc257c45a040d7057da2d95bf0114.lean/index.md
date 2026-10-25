# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Approximation.Variant7a84fa2da177a57e0d52816d8f470b47648fc257c45a040d7057da2d95bf0114

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e8c8f9667c0671c19f3122da1ba87a96e7cf1404",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximation/Variant7a84fa2da177a57e0d52816d8f470b47648fc257c45a040d7057da2d95bf0114.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximation/Variant7a84fa2da177a57e0d52816d8f470b47648fc257c45a040d7057da2d95bf0114.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximation/Variant7a84fa2da177a57e0d52816d8f470b47648fc257c45a040d7057da2d95bf0114.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e8c8f9667c0671c19f3122da1ba87a96e7cf1404`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximation/Variant7a84fa2da177a57e0d52816d8f470b47648fc257c45a040d7057da2d95bf0114.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximation/Variant7a84fa2da177a57e0d52816d8f470b47648fc257c45a040d7057da2d95bf0114.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Authority` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Precision](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximation/Variant7a84fa2da177a57e0d52816d8f470b47648fc257c45a040d7057da2d95bf0114.lean/declarations/precision--36a277825ec4fe11e81ecccd.md) | 38 | `declaration-track:36a277825ec4fe11e81ecccd7d41ea1da5657e0588fc74354228850c4d129462` |
| 2 | `structure` | [ErrorBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximation/Variant7a84fa2da177a57e0d52816d8f470b47648fc257c45a040d7057da2d95bf0114.lean/declarations/errorbound--0512d02a3e6c25e2ee5dc3a1.md) | 45 | `declaration-track:0512d02a3e6c25e2ee5dc3a15e9a68122027b8faf19e5a0a63fc2c532f1755c1` |
| 3 | `structure` | [FiniteToTargetApproximation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximation/Variant7a84fa2da177a57e0d52816d8f470b47648fc257c45a040d7057da2d95bf0114.lean/declarations/finitetotargetapproximation--4046f6d4a1553b2bc16934fc.md) | 52 | `declaration-track:4046f6d4a1553b2bc16934fc9fbaa047ca2fc5c713cc5a10a1b563e40a2c4e62` |
| 4 | `structure` | [TargetToFiniteProjection](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximation/Variant7a84fa2da177a57e0d52816d8f470b47648fc257c45a040d7057da2d95bf0114.lean/declarations/targettofiniteprojection--d8dd9cfaf95b2c970fdefb1f.md) | 61 | `declaration-track:d8dd9cfaf95b2c970fdefb1f28877a0d875365ecf143a3a2cdd64c484df2e5f0` |
| 5 | `structure` | [BidirectionalBridge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximation/Variant7a84fa2da177a57e0d52816d8f470b47648fc257c45a040d7057da2d95bf0114.lean/declarations/bidirectionalbridge--6c120816a10238bd4652fbb5.md) | 75 | `declaration-track:6c120816a10238bd4652fbb52a71f9b79297647789c6ecff6aaa1834bd55621e` |
| 6 | `theorem` | [finite_to_target_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximation/Variant7a84fa2da177a57e0d52816d8f470b47648fc257c45a040d7057da2d95bf0114.lean/declarations/finite-to-target-sound--fa794a4ac1eb432f06a81bcf.md) | 86 | `result-track:fa794a4ac1eb432f06a81bcf71aa596b3792de8c70d38661813b2922032a9318` |
| 7 | `theorem` | [target_to_finite_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximation/Variant7a84fa2da177a57e0d52816d8f470b47648fc257c45a040d7057da2d95bf0114.lean/declarations/target-to-finite-sound--9f47474c635bce3187a17cef.md) | 92 | `result-track:9f47474c635bce3187a17cef16e57a83c56f24750d13ff4139ab6dc58e79bdda` |
| 8 | `theorem` | [bidirectional_bridge_has_round_trip_bounds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximation/Variant7a84fa2da177a57e0d52816d8f470b47648fc257c45a040d7057da2d95bf0114.lean/declarations/bidirectional-bridge-has-round-trip-bounds--4ff706eb75a75dbfdec14d43.md) | 98 | `result-track:4ff706eb75a75dbfdec14d43076c7563e5f75c12002f623b56488a911db8ae0a` |
| 9 | `theorem` | [bidirectional_bridge_refinement_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximation/Variant7a84fa2da177a57e0d52816d8f470b47648fc257c45a040d7057da2d95bf0114.lean/declarations/bidirectional-bridge-refinement-sound--d4f62e421372f331e4759891.md) | 104 | `result-track:d4f62e421372f331e475989104714b2cd23e0fab037729e027092faea811e79f` |
| 10 | `structure` | [ExactFiniteEquivalence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximation/Variant7a84fa2da177a57e0d52816d8f470b47648fc257c45a040d7057da2d95bf0114.lean/declarations/exactfiniteequivalence--6cc064d77bf89b4f1c5938c7.md) | 116 | `declaration-track:6cc064d77bf89b4f1c5938c7f35b80c7b7f55001d331572e6f0bf5b38601af13` |
| 11 | `theorem` | [exact_finite_equivalence_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximation/Variant7a84fa2da177a57e0d52816d8f470b47648fc257c45a040d7057da2d95bf0114.lean/declarations/exact-finite-equivalence-left--6754e59318de6dea4e3d9053.md) | 125 | `result-track:6754e59318de6dea4e3d90539c46cd1a61e0e3c60169d17e7af06d765117b85a` |
| 12 | `theorem` | [exact_finite_equivalence_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximation/Variant7a84fa2da177a57e0d52816d8f470b47648fc257c45a040d7057da2d95bf0114.lean/declarations/exact-finite-equivalence-right--3239338e1806009a5ea52897.md) | 132 | `result-track:3239338e1806009a5ea52897617e6167d9a18ce240a6c6eae0e73ddb1fef6d31` |
| 13 | `structure` | [ObservableQuotient](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximation/Variant7a84fa2da177a57e0d52816d8f470b47648fc257c45a040d7057da2d95bf0114.lean/declarations/observablequotient--96dea42368d28f55dd417e99.md) | 145 | `declaration-track:96dea42368d28f55dd417e99a9428d78be2965bfe779eb55305b4df9eac773f3` |
| 14 | `theorem` | [quotient_equivalent_iff_same_projection](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximation/Variant7a84fa2da177a57e0d52816d8f470b47648fc257c45a040d7057da2d95bf0114.lean/declarations/quotient-equivalent-iff-same-projection--6cd181da68364bec9d2a624a.md) | 156 | `result-track:6cd181da68364bec9d2a624af7a80421fc8e822feaf1f2dd7c8fc1eceb8b43df` |
| 15 | `theorem` | [quotient_rep_projects_to_input](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximation/Variant7a84fa2da177a57e0d52816d8f470b47648fc257c45a040d7057da2d95bf0114.lean/declarations/quotient-rep-projects-to-input--59e2de50b014d274f1e6585a.md) | 163 | `result-track:59e2de50b014d274f1e6585aab01696248e8ddc4022330a667ea78e81125bedc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
