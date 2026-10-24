# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.WienerIkeharaRemainderLinearity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d438b96fc5a976aa28ad2bd99df87440743b9814",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaRemainderLinearity.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaRemainderLinearity.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaRemainderLinearity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d438b96fc5a976aa28ad2bd99df87440743b9814`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaRemainderLinearity.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/WienerIkeharaRemainderLinearity.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.WienerIkeharaCompactSchwartzCutoff`](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaCompactSchwartzCutoff.lean/index.md) — import line 8; pinned internal source present.
- `Mathlib.Analysis.Distribution.SchwartzSpace.Fourier` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Distribution.SchwartzSpace.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [wienerSigmaFourierTerm_add](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaRemainderLinearity.lean/declarations/wienersigmafourierterm-add--ebe55c903951c664e1e0851b.md) | 56 | `result-track:ebe55c903951c664e1e0851b883a6ea79a79d28e7d4e882331c519bf719c0d56` |
| 2 | `theorem` | [wienerSigmaFourierTerm_neg](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaRemainderLinearity.lean/declarations/wienersigmafourierterm-neg--425749bd726985d5d1c04975.md) | 71 | `result-track:425749bd726985d5d1c049759e8ac173117672dadce1c0d92add42fdfa4e4c64` |
| 3 | `theorem` | [wienerSchwartzArithmetic_summable](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaRemainderLinearity.lean/declarations/wienerschwartzarithmetic-summable--cf2a91eb65f9f041e5d44b0d.md) | 84 | `result-track:cf2a91eb65f9f041e5d44b0d9e90a49ca22efec7b5c1a9309e9b37173f222bcf` |
| 4 | `theorem` | [wienerSchwartzBoundaryArithmetic_add](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaRemainderLinearity.lean/declarations/wienerschwartzboundaryarithmetic-add--5529c9f57142b21d4b27c5e8.md) | 94 | `result-track:5529c9f57142b21d4b27c5e8d75cdfe58ed39c3840ede59f880f480210001843` |
| 5 | `theorem` | [wienerSchwartzBoundaryArithmetic_neg](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaRemainderLinearity.lean/declarations/wienerschwartzboundaryarithmetic-neg--2234ae92546427997362f005.md) | 117 | `result-track:2234ae92546427997362f00566c23760280fa420df8abffdd703d37b30062e9a` |
| 6 | `theorem` | [wienerSchwartzBoundaryTail_integrable](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaRemainderLinearity.lean/declarations/wienerschwartzboundarytail-integrable--5f1e0ad3c28a1b89e267e19b.md) | 127 | `result-track:5f1e0ad3c28a1b89e267e19b434e8a50c89b58c6717b2c0de1a28a541ca91f01` |
| 7 | `theorem` | [wienerSchwartzBoundaryTail_add](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaRemainderLinearity.lean/declarations/wienerschwartzboundarytail-add--ff17edeb65b49009c44b41d1.md) | 144 | `result-track:ff17edeb65b49009c44b41d15aabeb9f3ce0ae8c81b942acdd6a07e212f34276` |
| 8 | `theorem` | [wienerSchwartzBoundaryTail_neg](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaRemainderLinearity.lean/declarations/wienerschwartzboundarytail-neg--ef979f8dafdfc74481028bcd.md) | 170 | `result-track:ef979f8dafdfc74481028bcd38111ef0d1abc508c146b88fa42c80e80202739d` |
| 9 | `theorem` | [wienerSchwartzBoundaryRemainder_add](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaRemainderLinearity.lean/declarations/wienerschwartzboundaryremainder-add--864e80a388935fa7a41b8b1a.md) | 188 | `result-track:864e80a388935fa7a41b8b1a44e7a1e3078e58adf1bcd766e13318528a7b6875` |
| 10 | `theorem` | [wienerSchwartzBoundaryRemainder_neg](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaRemainderLinearity.lean/declarations/wienerschwartzboundaryremainder-neg--9bf5487e3144a8af1acceacc.md) | 198 | `result-track:9bf5487e3144a8af1acceaccf05a22b70707dbd49da0ecf72fbee2d091fab297` |
| 11 | `theorem` | [wienerSchwartzBoundaryRemainder_sub](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaRemainderLinearity.lean/declarations/wienerschwartzboundaryremainder-sub--f7ba471edcb749492f04ac31.md) | 208 | `result-track:f7ba471edcb749492f04ac310a4df26d5c6fe7570bef4f919b165a85a0aca664` |
| 12 | `theorem` | [wienerSchwartzBoundaryRemainder_truncation_split](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaRemainderLinearity.lean/declarations/wienerschwartzboundaryremainder-truncation-split--6d1634e06044b05b6b9dce6b.md) | 223 | `result-track:6d1634e06044b05b6b9dce6b92c76edf965c19ae465cf8eb59206930cba8a1fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
