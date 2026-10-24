# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.CoefficientRing.Variantf4c563e716a5e62a711453819410259a1362f6022383575740872a12cef106de

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12298d3fc6df0818c55b949df1a0c2b515d20e8e",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CoefficientRing/Variantf4c563e716a5e62a711453819410259a1362f6022383575740872a12cef106de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CoefficientRing/Variantf4c563e716a5e62a711453819410259a1362f6022383575740872a12cef106de.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CoefficientRing/Variantf4c563e716a5e62a711453819410259a1362f6022383575740872a12cef106de.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12298d3fc6df0818c55b949df1a0c2b515d20e8e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/CoefficientRing/Variantf4c563e716a5e62a711453819410259a1362f6022383575740872a12cef106de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/CoefficientRing/Variantf4c563e716a5e62a711453819410259a1362f6022383575740872a12cef106de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemiLocalDefect.PlaceInteraction` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RationalQSeries](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CoefficientRing/Variantf4c563e716a5e62a711453819410259a1362f6022383575740872a12cef106de.lean/declarations/rationalqseries--e680bbd2d8d23d5476d8c02f.md) | 14 | `declaration-track:e680bbd2d8d23d5476d8c02f63353ac02a709e405142dab8d467eaf03d9e191b` |
| 2 | `def` | [RationalQSeries.evaluateThrough](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CoefficientRing/Variantf4c563e716a5e62a711453819410259a1362f6022383575740872a12cef106de.lean/declarations/rationalqseries-evaluatethrough--01a8925aaf23eae00701c6c1.md) | 17 | `declaration-track:01a8925aaf23eae00701c6c19269307940d0e36a201d2b29a377be76405eedcc` |
| 3 | `structure` | [QInterval](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CoefficientRing/Variantf4c563e716a5e62a711453819410259a1362f6022383575740872a12cef106de.lean/declarations/qinterval--2d38fd5dd53132f0cf9402d8.md) | 24 | `declaration-track:2d38fd5dd53132f0cf9402d862ce8515148ef0d12fd8bc57f7ca8312935d149a` |
| 4 | `inductive` | [CoefficientDomain](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CoefficientRing/Variantf4c563e716a5e62a711453819410259a1362f6022383575740872a12cef106de.lean/declarations/coefficientdomain--4aa4eaf66a95dbd1ee8fbc99.md) | 31 | `declaration-track:4aa4eaf66a95dbd1ee8fbc993c3be2421435eb1c1ba01c83d4ea85a538392e2b` |
| 5 | `structure` | [CoefficientDomainCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CoefficientRing/Variantf4c563e716a5e62a711453819410259a1362f6022383575740872a12cef106de.lean/declarations/coefficientdomaincertificate--2a667def0de51674d3e5968b.md) | 38 | `declaration-track:2a667def0de51674d3e5968b0e97bbafb0703ca47bf86bd059aa6c8c47d120e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
