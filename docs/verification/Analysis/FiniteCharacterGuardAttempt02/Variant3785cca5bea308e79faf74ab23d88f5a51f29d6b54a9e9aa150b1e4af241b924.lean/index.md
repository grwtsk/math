# Verification target: GRWTSK.Analysis.FiniteCharacterGuardAttempt02.Variant3785cca5bea308e79faf74ab23d88f5a51f29d6b54a9e9aa150b1e4af241b924

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b9a99eefbdb251a543576e93b030fbc23fa2265",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FiniteCharacterGuardAttempt02/Variant3785cca5bea308e79faf74ab23d88f5a51f29d6b54a9e9aa150b1e4af241b924.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt02/Variant3785cca5bea308e79faf74ab23d88f5a51f29d6b54a9e9aa150b1e4af241b924.lean/index.md) · [Full source](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt02/Variant3785cca5bea308e79faf74ab23d88f5a51f29d6b54a9e9aa150b1e4af241b924.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b9a99eefbdb251a543576e93b030fbc23fa2265`.

Source path: `GRWTSK/Analysis/FiniteCharacterGuardAttempt02/Variant3785cca5bea308e79faf74ab23d88f5a51f29d6b54a9e9aa150b1e4af241b924.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FiniteCharacterGuardAttempt02/Variant3785cca5bea308e79faf74ab23d88f5a51f29d6b54a9e9aa150b1e4af241b924.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.FiniteAbelian.PontryaginDuality` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coefficientMap](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt02/Variant3785cca5bea308e79faf74ab23d88f5a51f29d6b54a9e9aa150b1e4af241b924.lean/declarations/coefficientmap--f4f2d26ead09d60e7f32e9e5.md) | 14 | `declaration-track:f4f2d26ead09d60e7f32e9e5440a53be2d2fea24ab97421c670d0307ebef1c5f` |
| 2 | `theorem` | [coefficient_eq_expect](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt02/Variant3785cca5bea308e79faf74ab23d88f5a51f29d6b54a9e9aa150b1e4af241b924.lean/declarations/coefficient-eq-expect--f16004e176ff01145cfc8c91.md) | 20 | `result-track:f16004e176ff01145cfc8c919218a38aa345093112f93e44fd1bf250cbb54ac7` |
| 3 | `theorem` | [trivial_coefficient_eq_mean](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt02/Variant3785cca5bea308e79faf74ab23d88f5a51f29d6b54a9e9aa150b1e4af241b924.lean/declarations/trivial-coefficient-eq-mean--32377b23bce4255670497169.md) | 25 | `result-track:32377b23bce425567049716944824a2126eeb656c536687481b6c64b478e8d77` |
| 4 | `theorem` | [coefficient_character](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt02/Variant3785cca5bea308e79faf74ab23d88f5a51f29d6b54a9e9aa150b1e4af241b924.lean/declarations/coefficient-character--addf1faaea16f58299c2a9e8.md) | 30 | `result-track:addf1faaea16f58299c2a9e8d6de7520b13a2af9b26ed0517b57aa1872d234ac` |
| 5 | `theorem` | [coefficient_eq_basis_repr](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt02/Variant3785cca5bea308e79faf74ab23d88f5a51f29d6b54a9e9aa150b1e4af241b924.lean/declarations/coefficient-eq-basis-repr--0b94640eaca8dcc166bf233f.md) | 35 | `result-track:0b94640eaca8dcc166bf233f95ed7817a82f5cbd9852a197489a028b0c566747` |
| 6 | `theorem` | [complete_reconstruction](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt02/Variant3785cca5bea308e79faf74ab23d88f5a51f29d6b54a9e9aa150b1e4af241b924.lean/declarations/complete-reconstruction--107f0d81035258eefb193015.md) | 43 | `result-track:107f0d81035258eefb1930154f160fa6e22d9400ce1e7721f14f23dd675d198d` |
| 7 | `def` | [incompleteReconstruction](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt02/Variant3785cca5bea308e79faf74ab23d88f5a51f29d6b54a9e9aa150b1e4af241b924.lean/declarations/incompletereconstruction--b74fba60a9d0bda5b83b3fba.md) | 49 | `declaration-track:b74fba60a9d0bda5b83b3fba76020595b7ad09edf4b59757bd38297ff6d51b8d` |
| 8 | `theorem` | [reconstruction_split](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt02/Variant3785cca5bea308e79faf74ab23d88f5a51f29d6b54a9e9aa150b1e4af241b924.lean/declarations/reconstruction-split--9e70fa1f5f0cebcc33e1ff40.md) | 54 | `result-track:9e70fa1f5f0cebcc33e1ff40d44415fdaabcb9a6eb87c4d719e516b226576644` |
| 9 | `theorem` | [incomplete_eq_self_iff](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt02/Variant3785cca5bea308e79faf74ab23d88f5a51f29d6b54a9e9aa150b1e4af241b924.lean/declarations/incomplete-eq-self-iff--5478f8b761ed47ebe5f4d68c.md) | 65 | `result-track:5478f8b761ed47ebe5f4d68ca7eac1ffea71f0cb73247d2d739a14112e706289` |
| 10 | `def` | [nontrivialSpan](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt02/Variant3785cca5bea308e79faf74ab23d88f5a51f29d6b54a9e9aa150b1e4af241b924.lean/declarations/nontrivialspan--af4736e4fbce3a295f37b866.md) | 77 | `declaration-track:af4736e4fbce3a295f37b8660327759c7728a8f74b0eae4cc4eb9ebe03542d87` |
| 11 | `theorem` | [nontrivialSpan_le_trivial_kernel](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt02/Variant3785cca5bea308e79faf74ab23d88f5a51f29d6b54a9e9aa150b1e4af241b924.lean/declarations/nontrivialspan-le-trivial-kernel--c5dc128040fb291f896cf619.md) | 80 | `result-track:c5dc128040fb291f896cf619b880a58c04a05499a27fb23a6786eef6d57f0c25` |
| 12 | `theorem` | [trivial_not_mem_nontrivialSpan](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt02/Variant3785cca5bea308e79faf74ab23d88f5a51f29d6b54a9e9aa150b1e4af241b924.lean/declarations/trivial-not-mem-nontrivialspan--fd822f0104ec7091f5019610.md) | 89 | `result-track:fd822f0104ec7091f50196100273a8b992afc41774f4727a64aa6598cd11e938` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
