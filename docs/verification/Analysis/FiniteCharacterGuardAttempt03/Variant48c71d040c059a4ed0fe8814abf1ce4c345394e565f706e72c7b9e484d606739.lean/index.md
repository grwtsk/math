# Verification target: GRWTSK.Analysis.FiniteCharacterGuardAttempt03.Variant48c71d040c059a4ed0fe8814abf1ce4c345394e565f706e72c7b9e484d606739

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bdbdbe2984f1c89ca7fb1f820af52bead5e15808",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FiniteCharacterGuardAttempt03/Variant48c71d040c059a4ed0fe8814abf1ce4c345394e565f706e72c7b9e484d606739.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt03/Variant48c71d040c059a4ed0fe8814abf1ce4c345394e565f706e72c7b9e484d606739.lean/index.md) · [Full source](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt03/Variant48c71d040c059a4ed0fe8814abf1ce4c345394e565f706e72c7b9e484d606739.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bdbdbe2984f1c89ca7fb1f820af52bead5e15808`.

Source path: `GRWTSK/Analysis/FiniteCharacterGuardAttempt03/Variant48c71d040c059a4ed0fe8814abf1ce4c345394e565f706e72c7b9e484d606739.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FiniteCharacterGuardAttempt03/Variant48c71d040c059a4ed0fe8814abf1ce4c345394e565f706e72c7b9e484d606739.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.FiniteAbelian.PontryaginDuality` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coefficientMap](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt03/Variant48c71d040c059a4ed0fe8814abf1ce4c345394e565f706e72c7b9e484d606739.lean/declarations/coefficientmap--d4ece554e908a3e688e77176.md) | 22 | `declaration-track:d4ece554e908a3e688e771765879268d1399e360d13689abe15715c11c9c57ff` |
| 2 | `theorem` | [coefficient_eq_expect](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt03/Variant48c71d040c059a4ed0fe8814abf1ce4c345394e565f706e72c7b9e484d606739.lean/declarations/coefficient-eq-expect--900fcd1632d2c66a1d1e18d5.md) | 28 | `result-track:900fcd1632d2c66a1d1e18d5e54be72f2e0cedc3e79aff1f3d19e143bf1d84ff` |
| 3 | `theorem` | [trivial_coefficient_eq_mean](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt03/Variant48c71d040c059a4ed0fe8814abf1ce4c345394e565f706e72c7b9e484d606739.lean/declarations/trivial-coefficient-eq-mean--7de8d7c3d5ec5e208074f6d2.md) | 33 | `result-track:7de8d7c3d5ec5e208074f6d2d82bfa92ddebb0210c541edced1f048700f4e8f8` |
| 4 | `theorem` | [coefficient_character](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt03/Variant48c71d040c059a4ed0fe8814abf1ce4c345394e565f706e72c7b9e484d606739.lean/declarations/coefficient-character--70d2be7f527a2dec957ab8af.md) | 38 | `result-track:70d2be7f527a2dec957ab8af0a5a0b2e6bd57a4df7f890d5e4a3acc47a7f6c81` |
| 5 | `theorem` | [coefficient_eq_basis_repr](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt03/Variant48c71d040c059a4ed0fe8814abf1ce4c345394e565f706e72c7b9e484d606739.lean/declarations/coefficient-eq-basis-repr--ebaf596265d1c0eaf684da52.md) | 43 | `result-track:ebaf596265d1c0eaf684da520589e8d1435585cd5340710f324c92edc5a4f2ac` |
| 6 | `theorem` | [complete_reconstruction](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt03/Variant48c71d040c059a4ed0fe8814abf1ce4c345394e565f706e72c7b9e484d606739.lean/declarations/complete-reconstruction--d19e9be1f4b30eeea07a2dbd.md) | 51 | `result-track:d19e9be1f4b30eeea07a2dbdeb9fb14b4b47532e24e185bd4ac332c55415e864` |
| 7 | `def` | [incompleteReconstruction](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt03/Variant48c71d040c059a4ed0fe8814abf1ce4c345394e565f706e72c7b9e484d606739.lean/declarations/incompletereconstruction--d1cc92350a4b8009f1bab428.md) | 57 | `declaration-track:d1cc92350a4b8009f1bab4286ba5b1f2015d2d37b34529e355513fcab22332f1` |
| 8 | `theorem` | [reconstruction_split](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt03/Variant48c71d040c059a4ed0fe8814abf1ce4c345394e565f706e72c7b9e484d606739.lean/declarations/reconstruction-split--89c13883b0e19ae3575c9869.md) | 62 | `result-track:89c13883b0e19ae3575c986908b1d9b6b685cbc5f62b400582e227a13e1e3247` |
| 9 | `theorem` | [incomplete_eq_self_iff](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt03/Variant48c71d040c059a4ed0fe8814abf1ce4c345394e565f706e72c7b9e484d606739.lean/declarations/incomplete-eq-self-iff--c6585cc168cd0bd4c1f92fa1.md) | 76 | `result-track:c6585cc168cd0bd4c1f92fa1516fc8925863fb388f01c61f8a9cfbed4b8b231a` |
| 10 | `def` | [nontrivialSpan](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt03/Variant48c71d040c059a4ed0fe8814abf1ce4c345394e565f706e72c7b9e484d606739.lean/declarations/nontrivialspan--5103a65cdbabee74bc2f866b.md) | 88 | `declaration-track:5103a65cdbabee74bc2f866b41416e5fd5b1b494bbdc8539d695d41addfbf212` |
| 11 | `theorem` | [nontrivialSpan_le_trivial_kernel](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt03/Variant48c71d040c059a4ed0fe8814abf1ce4c345394e565f706e72c7b9e484d606739.lean/declarations/nontrivialspan-le-trivial-kernel--3d16fdd02a424468594559c3.md) | 91 | `result-track:3d16fdd02a424468594559c3889778eff22709da92adc15e9dfa333a3f476f6a` |
| 12 | `theorem` | [trivial_not_mem_nontrivialSpan](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt03/Variant48c71d040c059a4ed0fe8814abf1ce4c345394e565f706e72c7b9e484d606739.lean/declarations/trivial-not-mem-nontrivialspan--9bec4a04d91e73525e4e6185.md) | 100 | `result-track:9bec4a04d91e73525e4e61851b1478f23f09606bb863bb93a2374a3fd16ea17d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
