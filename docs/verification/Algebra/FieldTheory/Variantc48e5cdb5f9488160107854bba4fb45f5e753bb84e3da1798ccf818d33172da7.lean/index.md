# Verification target: GRWTSK.Algebra.Field.Variantc48e5cdb5f9488160107854bba4fb45f5e753bb84e3da1798ccf818d33172da7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d754fd45e182949d6f251af481cd4f5d49a8ee27",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Field/Variantc48e5cdb5f9488160107854bba4fb45f5e753bb84e3da1798ccf818d33172da7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/FieldTheory/Variantc48e5cdb5f9488160107854bba4fb45f5e753bb84e3da1798ccf818d33172da7.lean/index.md) · [Full source](../../../../mathematics/Algebra/FieldTheory/Variantc48e5cdb5f9488160107854bba4fb45f5e753bb84e3da1798ccf818d33172da7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d754fd45e182949d6f251af481cd4f5d49a8ee27`.

Source path: `GRWTSK/Algebra/Field/Variantc48e5cdb5f9488160107854bba4fb45f5e753bb84e3da1798ccf818d33172da7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Field/Variantc48e5cdb5f9488160107854bba4fb45f5e753bb84e3da1798ccf818d33172da7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Etale.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Unramified.Field` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [of_isSeparable_aux](../../../../mathematics/Algebra/FieldTheory/Variantc48e5cdb5f9488160107854bba4fb45f5e753bb84e3da1798ccf818d33172da7.lean/declarations/of-isseparable-aux--9819d99c70f58763b0de2a18.md) | 49 | `result-track:9819d99c70f58763b0de2a180080b41e5ebff6d14957ea26fab7442ccc736a17` |
| 2 | `lemma` | [of_isSeparable](../../../../mathematics/Algebra/FieldTheory/Variantc48e5cdb5f9488160107854bba4fb45f5e753bb84e3da1798ccf818d33172da7.lean/declarations/of-isseparable--1d53ce869f0bada2cc32506c.md) | 91 | `result-track:1d53ce869f0bada2cc32506c69af71443ff8b49018c56e77207b0de1445abae8` |
| 3 | `theorem` | [iff_isSeparable](../../../../mathematics/Algebra/FieldTheory/Variantc48e5cdb5f9488160107854bba4fb45f5e753bb84e3da1798ccf818d33172da7.lean/declarations/iff-isseparable--fa283d8cbc2fc155a675e36e.md) | 152 | `result-track:fa283d8cbc2fc155a675e36e2053e8f7936c4ac8290504ad5657296154c1bee7` |
| 4 | `theorem` | [iff_exists_algEquiv_prod](../../../../mathematics/Algebra/FieldTheory/Variantc48e5cdb5f9488160107854bba4fb45f5e753bb84e3da1798ccf818d33172da7.lean/declarations/iff-exists-algequiv-prod--7d81ae4d3ab31baaff34d805.md) | 161 | `result-track:7d81ae4d3ab31baaff34d8050e67d15e89c40914a53891b57fc6de0f213ea31a` |
| 5 | `theorem` | [Algebra.Etale.iff_exists_algEquiv_prod](../../../../mathematics/Algebra/FieldTheory/Variantc48e5cdb5f9488160107854bba4fb45f5e753bb84e3da1798ccf818d33172da7.lean/declarations/algebra-etale-iff-exists-algequiv-prod--45683fcbff8b4e3747b42dd5.md) | 188 | `result-track:45683fcbff8b4e3747b42dd52aa972b9363dc11b9270dd7ffda1ed6357548988` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
