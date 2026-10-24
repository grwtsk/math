# Verification target: GRWTSK.Algebra.PowerBasis.Variant3b48f4f5448b138707fa5bd49685027c2dda450633662d8d99762e9db91caba5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a1c2a316008551e09f41a03fa7baabd34096520",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/PowerBasis/Variant3b48f4f5448b138707fa5bd49685027c2dda450633662d8d99762e9db91caba5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/PowerBasis/Variant3b48f4f5448b138707fa5bd49685027c2dda450633662d8d99762e9db91caba5.lean/index.md) · [Full source](../../../../mathematics/Algebra/PowerBasis/Variant3b48f4f5448b138707fa5bd49685027c2dda450633662d8d99762e9db91caba5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a1c2a316008551e09f41a03fa7baabd34096520`.

Source path: `GRWTSK/Algebra/PowerBasis/Variant3b48f4f5448b138707fa5bd49685027c2dda450633662d8d99762e9db91caba5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/PowerBasis/Variant3b48f4f5448b138707fa5bd49685027c2dda450633662d8d99762e9db91caba5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [adjoin.powerBasisAux](../../../../mathematics/Algebra/PowerBasis/Variant3b48f4f5448b138707fa5bd49685027c2dda450633662d8d99762e9db91caba5.lean/declarations/adjoin-powerbasisaux--a837dbcef03247ad88d2fd78.md) | 29 | `declaration-track:a837dbcef03247ad88d2fd785a5cfd959ff39c9960e72e99f30179e5315b23ae` |
| 2 | `def` | [adjoin.powerBasis](../../../../mathematics/Algebra/PowerBasis/Variant3b48f4f5448b138707fa5bd49685027c2dda450633662d8d99762e9db91caba5.lean/declarations/adjoin-powerbasis--2e3a62c288d514856dd3bf89.md) | 53 | `declaration-track:2e3a62c288d514856dd3bf892f7fcdd5bacc0b48d50bfb817f0739dbdd6b91fe` |
| 3 | `def` | [_root_.PowerBasis.ofAdjoinEqTop](../../../../mathematics/Algebra/PowerBasis/Variant3b48f4f5448b138707fa5bd49685027c2dda450633662d8d99762e9db91caba5.lean/declarations/root-powerbasis-ofadjoineqtop--b43b39f905f3228fc0075089.md) | 64 | `declaration-track:b43b39f905f3228fc00750891a27468229ee9be9372966ea59e2826e0ae52e30` |
| 4 | `theorem` | [_root_.PowerBasis.ofAdjoinEqTop_gen](../../../../mathematics/Algebra/PowerBasis/Variant3b48f4f5448b138707fa5bd49685027c2dda450633662d8d99762e9db91caba5.lean/declarations/root-powerbasis-ofadjoineqtop-gen--a97648d87f3e513d61a46632.md) | 69 | `result-track:a97648d87f3e513d61a46632a1980699c5768d3123b7d4d73bd03e835f89344d` |
| 5 | `theorem` | [_root_.PowerBasis.ofAdjoinEqTop_dim](../../../../mathematics/Algebra/PowerBasis/Variant3b48f4f5448b138707fa5bd49685027c2dda450633662d8d99762e9db91caba5.lean/declarations/root-powerbasis-ofadjoineqtop-dim--f90928e662fae9b8c6e8c9a3.md) | 73 | `result-track:f90928e662fae9b8c6e8c9a37590ec18e9b1ea6e0c0a8c1774e9da66b9946de0` |
| 6 | `theorem` | [repr_gen_pow_isIntegral](../../../../mathematics/Algebra/PowerBasis/Variant3b48f4f5448b138707fa5bd49685027c2dda450633662d8d99762e9db91caba5.lean/declarations/repr-gen-pow-isintegral--fbe376b47902f4102b3fca45.md) | 95 | `result-track:fbe376b47902f4102b3fca451eeb65bab7688a49f40b8434c0f0303272b5c165` |
| 7 | `theorem` | [repr_mul_isIntegral](../../../../mathematics/Algebra/PowerBasis/Variant3b48f4f5448b138707fa5bd49685027c2dda450633662d8d99762e9db91caba5.lean/declarations/repr-mul-isintegral--6bef455a811abd7b49a6a451.md) | 128 | `result-track:6bef455a811abd7b49a6a451908bd9653ec3afeb0f69a8d4bdeeae594ebedaef` |
| 8 | `theorem` | [repr_pow_isIntegral](../../../../mathematics/Algebra/PowerBasis/Variant3b48f4f5448b138707fa5bd49685027c2dda450633662d8d99762e9db91caba5.lean/declarations/repr-pow-isintegral--40cfe76969090712efff4fa8.md) | 146 | `result-track:40cfe76969090712efff4fa844e26de1a0413543df320cfb5667ab8302416a47` |
| 9 | `theorem` | [toMatrix_isIntegral](../../../../mathematics/Algebra/PowerBasis/Variant3b48f4f5448b138707fa5bd49685027c2dda450633662d8d99762e9db91caba5.lean/declarations/tomatrix-isintegral--dc6170923090a36fa4aa6192.md) | 170 | `result-track:dc6170923090a36fa4aa61925439b4620df902b80dcb760ecf75ec4d7ad9ebe8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
