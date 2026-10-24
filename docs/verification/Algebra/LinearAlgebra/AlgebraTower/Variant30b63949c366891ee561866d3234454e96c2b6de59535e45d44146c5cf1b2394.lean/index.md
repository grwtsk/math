# Verification target: GRWTSK.Algebra.LinearAlgebra.AlgebraTower.Variant30b63949c366891ee561866d3234454e96c2b6de59535e45d44146c5cf1b2394

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51761c69bbaa1cdf2e39e4e97eded3ca38189da5",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/AlgebraTower/Variant30b63949c366891ee561866d3234454e96c2b6de59535e45d44146c5cf1b2394.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant30b63949c366891ee561866d3234454e96c2b6de59535e45d44146c5cf1b2394.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant30b63949c366891ee561866d3234454e96c2b6de59535e45d44146c5cf1b2394.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51761c69bbaa1cdf2e39e4e97eded3ca38189da5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/AlgebraTower/Variant30b63949c366891ee561866d3234454e96c2b6de59535e45d44146c5cf1b2394.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/AlgebraTower/Variant30b63949c366891ee561866d3234454e96c2b6de59535e45d44146c5cf1b2394.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Tower` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Invertible.algebraTower](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant30b63949c366891ee561866d3234454e96c2b6de59535e45d44146c5cf1b2394.lean/declarations/invertible-algebratower--9033f456e17576a0ddf94511.md) | 49 | `declaration-track:9033f456e17576a0ddf945113bdb25432c51e0fed3834276d4decc6e9166a1e5` |
| 2 | `def` | [invertibleAlgebraCoeNat](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant30b63949c366891ee561866d3234454e96c2b6de59535e45d44146c5cf1b2394.lean/declarations/invertiblealgebracoenat--2a3f2e8f5a5a2066d88fc5b6.md) | 56 | `declaration-track:2a3f2e8f5a5a2066d88fc5b66a708a4e7294d68c3e841ea0c67ee265a208aa02` |
| 3 | `def` | [Basis.algebraMapCoeffs](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant30b63949c366891ee561866d3234454e96c2b6de59535e45d44146c5cf1b2394.lean/declarations/basis-algebramapcoeffs--6eec9aad6ec1a20fd717d4ec.md) | 80 | `declaration-track:6eec9aad6ec1a20fd717d4ec66923871b970097e471e926e7010017c78c521af` |
| 4 | `theorem` | [Basis.algebraMapCoeffs_repr](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant30b63949c366891ee561866d3234454e96c2b6de59535e45d44146c5cf1b2394.lean/declarations/basis-algebramapcoeffs-repr--1edd4086277bc5a26256b888.md) | 84 | `result-track:1edd4086277bc5a26256b888758ec2e2a3ebf32f4840de1491fd8efc31209014` |
| 5 | `theorem` | [Basis.algebraMapCoeffs_apply](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant30b63949c366891ee561866d3234454e96c2b6de59535e45d44146c5cf1b2394.lean/declarations/basis-algebramapcoeffs-apply--a35285d51641d3c46a64839a.md) | 88 | `result-track:a35285d51641d3c46a64839a70550d7d8b5986fdb2adc2bd9db391e5ac4a33cd` |
| 6 | `theorem` | [Basis.coe_algebraMapCoeffs](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant30b63949c366891ee561866d3234454e96c2b6de59535e45d44146c5cf1b2394.lean/declarations/basis-coe-algebramapcoeffs--cb89fdce343f58a02d99984b.md) | 92 | `result-track:cb89fdce343f58a02d99984b7f78cecfe52edd446d4f08c4c40fa3764cae37bd` |
| 7 | `theorem` | [linearIndependent_smul](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant30b63949c366891ee561866d3234454e96c2b6de59535e45d44146c5cf1b2394.lean/declarations/linearindependent-smul--8446dcf8129fa416f8032fe3.md) | 105 | `result-track:8446dcf8129fa416f8032fe394c4396fdec8b619abc1fd4aa73186ef002e0541` |
| 8 | `theorem` | [Basis.isScalarTower_of_nonempty](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant30b63949c366891ee561866d3234454e96c2b6de59535e45d44146c5cf1b2394.lean/declarations/basis-isscalartower-of-nonempty--544e743d2370b4999ffda976.md) | 117 | `result-track:544e743d2370b4999ffda976fa5ba7e5714ec4973dd9f65db251fe490164c6e0` |
| 9 | `theorem` | [Basis.isScalarTower_finsupp](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant30b63949c366891ee561866d3234454e96c2b6de59535e45d44146c5cf1b2394.lean/declarations/basis-isscalartower-finsupp--2766b30d25d4fa9929e92a25.md) | 121 | `result-track:2766b30d25d4fa9929e92a252bf3b02b1543c021078383d506f8608c446bb353` |
| 10 | `def` | [Basis.smulTower](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant30b63949c366891ee561866d3234454e96c2b6de59535e45d44146c5cf1b2394.lean/declarations/basis-smultower--d97894b4db5d1f52028d623c.md) | 129 | `declaration-track:d97894b4db5d1f52028d623ced10f46aa2ecd92841ab6b76b9b736e7e17d356e` |
| 11 | `theorem` | [Basis.smulTower_repr](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant30b63949c366891ee561866d3234454e96c2b6de59535e45d44146c5cf1b2394.lean/declarations/basis-smultower-repr--4ac342c667fd3809a334b4e4.md) | 138 | `result-track:4ac342c667fd3809a334b4e4ab8c3e142bec68164d6f042bb401133655642ab4` |
| 12 | `theorem` | [Basis.smulTower_repr_mk](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant30b63949c366891ee561866d3234454e96c2b6de59535e45d44146c5cf1b2394.lean/declarations/basis-smultower-repr-mk--37a0b4e561fbd9a966a0c4fd.md) | 142 | `result-track:37a0b4e561fbd9a966a0c4fd127f061b6dbfbe32c991498b2dcb05717f065662` |
| 13 | `theorem` | [Basis.smulTower_apply](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant30b63949c366891ee561866d3234454e96c2b6de59535e45d44146c5cf1b2394.lean/declarations/basis-smultower-apply--0d465f4a8b616b4d5f677a37.md) | 146 | `result-track:0d465f4a8b616b4d5f677a376d1b05b5a53eb816fd7485a3e6cdf04da261e0fa` |
| 14 | `def` | [Basis.smulTower'](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant30b63949c366891ee561866d3234454e96c2b6de59535e45d44146c5cf1b2394.lean/declarations/basis-smultower--dd802867cabc19c3cc3c0cb5.md) | 160 | `declaration-track:dd802867cabc19c3cc3c0cb5f187c7e2ae012f00f23838de5784835da07f8aad` |
| 15 | `theorem` | [Basis.smulTower'_repr](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant30b63949c366891ee561866d3234454e96c2b6de59535e45d44146c5cf1b2394.lean/declarations/basis-smultower-repr--cf58d7343375c5ee8fe5e4c2.md) | 163 | `result-track:cf58d7343375c5ee8fe5e4c237f898c989bfe3fe7410c340a5cfa017e2a282d3` |
| 16 | `theorem` | [Basis.smulTower'_repr_mk](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant30b63949c366891ee561866d3234454e96c2b6de59535e45d44146c5cf1b2394.lean/declarations/basis-smultower-repr-mk--7a1dfe5f0513ddeabf658479.md) | 167 | `result-track:7a1dfe5f0513ddeabf658479a334210c50bc367c8b016562a54508b2cadf0666` |
| 17 | `theorem` | [Basis.smulTower'_apply](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant30b63949c366891ee561866d3234454e96c2b6de59535e45d44146c5cf1b2394.lean/declarations/basis-smultower-apply--94cea82942e36ebfbe1c6f40.md) | 170 | `result-track:94cea82942e36ebfbe1c6f4023f63c94b6cbc71933ee228dc830b931a578d45a` |
| 18 | `theorem` | [Basis.algebraMap_injective](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant30b63949c366891ee561866d3234454e96c2b6de59535e45d44146c5cf1b2394.lean/declarations/basis-algebramap-injective--2bd48e2764a5ff4e7eeeb737.md) | 181 | `result-track:2bd48e2764a5ff4e7eeeb7375f82b219610b08e15ce88908de2387cf7c366079` |
| 19 | `def` | [AlgHom.restrictDomain](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant30b63949c366891ee561866d3234454e96c2b6de59535e45d44146c5cf1b2394.lean/declarations/alghom-restrictdomain--544a4b61ca588679d8e2814f.md) | 196 | `declaration-track:544a4b61ca588679d8e2814ff8504db166eb5785f0beca7158ed28e30c4a3a2c` |
| 20 | `def` | [AlgHom.extendScalars](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant30b63949c366891ee561866d3234454e96c2b6de59535e45d44146c5cf1b2394.lean/declarations/alghom-extendscalars--8903c2e4c38dbad28a897a28.md) | 204 | `declaration-track:8903c2e4c38dbad28a897a28670dce3061163510fa90b424985065eef64c4aa7` |
| 21 | `def` | [algHomEquivSigma](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant30b63949c366891ee561866d3234454e96c2b6de59535e45d44146c5cf1b2394.lean/declarations/alghomequivsigma--0e45c2912716b4e3b9d604f0.md) | 220 | `declaration-track:0e45c2912716b4e3b9d604f02cc78769d28e0a72b4b0aa960ea9a7bc50a59e35` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
