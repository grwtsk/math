# Verification target: GRWTSK.Analysis.Inequalities.TwoHeightEnclosures

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "39e2ef8072d1d7118000455e02cac49bf0ae3dce",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Inequalities/TwoHeightEnclosures.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Inequalities/TwoHeightEnclosures.lean/index.md) · [Full source](../../../../mathematics/Analysis/Inequalities/TwoHeightEnclosures.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `39e2ef8072d1d7118000455e02cac49bf0ae3dce`.

Source path: `GRWTSK/Analysis/Inequalities/TwoHeightEnclosures.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Inequalities/TwoHeightEnclosures.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 9; external provider; requires a separately pinned dependency.
- [`GRWTSK.Analysis.Inequalities.ResidualEnclosure`](../../../../mathematics/Analysis/Inequalities/ResidualEnclosure.lean/index.md) — import line 10; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [from_interval_endpoints](../../../../mathematics/Analysis/Inequalities/TwoHeightEnclosures.lean/declarations/from-interval-endpoints--343906e77b4a48ca9f713375.md) | 19 | `result-track:343906e77b4a48ca9f71337553dc32fb3ea514558550d543e01e26b02364826b` |
| 2 | `theorem` | [lower_endpoint_is_not_an_upper_bound](../../../../mathematics/Analysis/Inequalities/TwoHeightEnclosures.lean/declarations/lower-endpoint-is-not-an-upper-bound--ad95b7bf36505da2f5beeef8.md) | 29 | `result-track:ad95b7bf36505da2f5beeef813c9c2fa63f4ad66039b3fa7d716aeadd4ce45ab` |
| 3 | `theorem` | [silent_green_endpoint_has_nonzero_augmented_mass](../../../../mathematics/Analysis/Inequalities/TwoHeightEnclosures.lean/declarations/silent-green-endpoint-has-nonzero-augmented-mass--51fb91b41fc0e32ca658884c.md) | 33 | `result-track:51fb91b41fc0e32ca658884c8dbe37ed13d073d02ba9bd517f78676e5290bc87` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
