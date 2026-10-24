# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Noninterference.Variantdb9f22bee5cbfff8ee7c4a43117d8cfb318de690b08d53d96c6fd3a1ee49ab1c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1d6ca21bfecb8a6b0686d420c00d43a67a5a446",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Noninterference/Variantdb9f22bee5cbfff8ee7c4a43117d8cfb318de690b08d53d96c6fd3a1ee49ab1c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Noninterference/Variantdb9f22bee5cbfff8ee7c4a43117d8cfb318de690b08d53d96c6fd3a1ee49ab1c.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Noninterference/Variantdb9f22bee5cbfff8ee7c4a43117d8cfb318de690b08d53d96c6fd3a1ee49ab1c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1d6ca21bfecb8a6b0686d420c00d43a67a5a446`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Noninterference/Variantdb9f22bee5cbfff8ee7c4a43117d8cfb318de690b08d53d96c6fd3a1ee49ab1c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Noninterference/Variantdb9f22bee5cbfff8ee7c4a43117d8cfb318de690b08d53d96c6fd3a1ee49ab1c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.StratifiedBoundary.Contract` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.StratifiedBoundary.UnknownLedger` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [StratifiedObservation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Noninterference/Variantdb9f22bee5cbfff8ee7c4a43117d8cfb318de690b08d53d96c6fd3a1ee49ab1c.lean/declarations/stratifiedobservation--7e6f0cfb92d67b5073d0dba7.md) | 21 | `declaration-track:7e6f0cfb92d67b5073d0dba730d5594508253a9779fce9a40a4140e9e7923ceb` |
| 2 | `def` | [StratifiedObservation.authoritativeEffect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Noninterference/Variantdb9f22bee5cbfff8ee7c4a43117d8cfb318de690b08d53d96c6fd3a1ee49ab1c.lean/declarations/stratifiedobservation-authoritativeeffect--b0845fd7d750c33718f89824.md) | 27 | `declaration-track:b0845fd7d750c33718f898246738206292f26fc9e1d458ee4371e21a682e0082` |
| 3 | `theorem` | [stratified_observation_nonauthoritative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Noninterference/Variantdb9f22bee5cbfff8ee7c4a43117d8cfb318de690b08d53d96c6fd3a1ee49ab1c.lean/declarations/stratified-observation-nonauthoritative--c0a7bc6cca17ed3e91953374.md) | 31 | `result-track:c0a7bc6cca17ed3e9195337420e50161186724384114ebc4e77a7895c168bf8f` |
| 4 | `structure` | [ExternalAdmissionCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Noninterference/Variantdb9f22bee5cbfff8ee7c4a43117d8cfb318de690b08d53d96c6fd3a1ee49ab1c.lean/declarations/externaladmissioncertificate--85b3e2f0e94d0a854d15e3e2.md) | 36 | `declaration-track:85b3e2f0e94d0a854d15e3e2900a39766c0b41e4c868e53853395b80d0295a42` |
| 5 | `inductive` | [AdmissionResult](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Noninterference/Variantdb9f22bee5cbfff8ee7c4a43117d8cfb318de690b08d53d96c6fd3a1ee49ab1c.lean/declarations/admissionresult--b94a293f7d0f69daf3716e55.md) | 44 | `declaration-track:b94a293f7d0f69daf3716e555cfe1df481b659ac8d06b6437021ca204f75179e` |
| 6 | `theorem` | [accepted_requires_external_certificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Noninterference/Variantdb9f22bee5cbfff8ee7c4a43117d8cfb318de690b08d53d96c6fd3a1ee49ab1c.lean/declarations/accepted-requires-external-certificate--5ddbc7b6b6cc7bb04c9485e3.md) | 51 | `result-track:5ddbc7b6b6cc7bb04c9485e3fc70b285bba3e10a2cb9321f2b554278d19a3a5b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
