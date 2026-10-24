# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Noninterference.Variant761d679913cac7ee9deca21859964880a889fcb0e0100d2fb8dbb7a5a8bf2af4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dbd035addf50cd6874bdccceb7afa25e6044a7cd",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Noninterference/Variant761d679913cac7ee9deca21859964880a889fcb0e0100d2fb8dbb7a5a8bf2af4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Noninterference/Variant761d679913cac7ee9deca21859964880a889fcb0e0100d2fb8dbb7a5a8bf2af4.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Noninterference/Variant761d679913cac7ee9deca21859964880a889fcb0e0100d2fb8dbb7a5a8bf2af4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dbd035addf50cd6874bdccceb7afa25e6044a7cd`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Noninterference/Variant761d679913cac7ee9deca21859964880a889fcb0e0100d2fb8dbb7a5a8bf2af4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Noninterference/Variant761d679913cac7ee9deca21859964880a889fcb0e0100d2fb8dbb7a5a8bf2af4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SpectralClosure.SquareRoot` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [AuthorityEffect](../../../../../mathematics/Analysis/FunctionalAnalysis/Noninterference/Variant761d679913cac7ee9deca21859964880a889fcb0e0100d2fb8dbb7a5a8bf2af4.lean/declarations/authorityeffect--1f6014a0e2da6bffdb599a78.md) | 9 | `declaration-track:1f6014a0e2da6bffdb599a78ba21aa2f38a7731d99befd66f1326dc5e426d65f` |
| 2 | `inductive` | [SpectralArtifactKind](../../../../../mathematics/Analysis/FunctionalAnalysis/Noninterference/Variant761d679913cac7ee9deca21859964880a889fcb0e0100d2fb8dbb7a5a8bf2af4.lean/declarations/spectralartifactkind--1883c88ff77be584125f5c97.md) | 15 | `declaration-track:1883c88ff77be584125f5c979cf8934f101972d62eb75984efb9dd27e2142a56` |
| 3 | `def` | [SpectralArtifactKind.authorityEffect](../../../../../mathematics/Analysis/FunctionalAnalysis/Noninterference/Variant761d679913cac7ee9deca21859964880a889fcb0e0100d2fb8dbb7a5a8bf2af4.lean/declarations/spectralartifactkind-authorityeffect--d68c9027532341eb0a85f29f.md) | 25 | `declaration-track:d68c9027532341eb0a85f29f180da7e91fcb4433149ab03d84c4aa2dcdcf5fc8` |
| 4 | `theorem` | [spectral_artifacts_cannot_commit](../../../../../mathematics/Analysis/FunctionalAnalysis/Noninterference/Variant761d679913cac7ee9deca21859964880a889fcb0e0100d2fb8dbb7a5a8bf2af4.lean/declarations/spectral-artifacts-cannot-commit--9fd8ed577ed1816e37075106.md) | 29 | `result-track:9fd8ed577ed1816e370751061eb6159a657931de39821903d2f52337b504e169` |
| 5 | `inductive` | [TheoremCertificateOrigin](../../../../../mathematics/Analysis/FunctionalAnalysis/Noninterference/Variant761d679913cac7ee9deca21859964880a889fcb0e0100d2fb8dbb7a5a8bf2af4.lean/declarations/theoremcertificateorigin--b463f4f5396f6963334a1e3c.md) | 34 | `declaration-track:b463f4f5396f6963334a1e3cb6a98f1f6ef6d6b949963cd26629fc3455832199` |
| 6 | `def` | [TheoremCertificateOrigin.mayChangeTheoremStatus](../../../../../mathematics/Analysis/FunctionalAnalysis/Noninterference/Variant761d679913cac7ee9deca21859964880a889fcb0e0100d2fb8dbb7a5a8bf2af4.lean/declarations/theoremcertificateorigin-maychangetheoremstatus--4b04d790f963fdb733753c6c.md) | 39 | `declaration-track:4b04d790f963fdb733753c6c92abf5761169cfe7ef611eb4e255a323006e416c` |
| 7 | `theorem` | [runtime_observations_cannot_manufacture_theorem_certificates](../../../../../mathematics/Analysis/FunctionalAnalysis/Noninterference/Variant761d679913cac7ee9deca21859964880a889fcb0e0100d2fb8dbb7a5a8bf2af4.lean/declarations/runtime-observations-cannot-manufacture-theorem-certificates--e7e0819f7b1ff3ade969d24d.md) | 44 | `result-track:e7e0819f7b1ff3ade969d24df6f57b7ae7b253644bf516e41a03d38fafdaebc7` |
| 8 | `inductive` | [OwnerAdmission](../../../../../mathematics/Analysis/FunctionalAnalysis/Noninterference/Variant761d679913cac7ee9deca21859964880a889fcb0e0100d2fb8dbb7a5a8bf2af4.lean/declarations/owneradmission--b9297f7e72609e2c7b0d916e.md) | 49 | `declaration-track:b9297f7e72609e2c7b0d916e2099e1ddae78d79964af2daea8791cdf0b90cc6e` |
| 9 | `def` | [OwnerAdmission.mayCommitRealization](../../../../../mathematics/Analysis/FunctionalAnalysis/Noninterference/Variant761d679913cac7ee9deca21859964880a889fcb0e0100d2fb8dbb7a5a8bf2af4.lean/declarations/owneradmission-maycommitrealization--0c3221c92c30257f3b45c989.md) | 55 | `declaration-track:0c3221c92c30257f3b45c98955441698fe5317acc80cecbbdda0bfd60498f97d` |
| 10 | `theorem` | [owner_admission_is_necessary_for_committed_realization](../../../../../mathematics/Analysis/FunctionalAnalysis/Noninterference/Variant761d679913cac7ee9deca21859964880a889fcb0e0100d2fb8dbb7a5a8bf2af4.lean/declarations/owner-admission-is-necessary-for-committed-realization--afb22fd94d4cdc3b6f88f709.md) | 61 | `result-track:afb22fd94d4cdc3b6f88f7098e58fce4fc896cb0118ca5c760f7289e72e9ccd1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
