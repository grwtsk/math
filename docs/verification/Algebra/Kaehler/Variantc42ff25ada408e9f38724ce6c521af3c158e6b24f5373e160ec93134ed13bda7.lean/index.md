# Verification target: GRWTSK.Algebra.Kaehler.Variantc42ff25ada408e9f38724ce6c521af3c158e6b24f5373e160ec93134ed13bda7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb98a92a8040cbe0b9e59dde7ea0757b915db338",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Kaehler/Variantc42ff25ada408e9f38724ce6c521af3c158e6b24f5373e160ec93134ed13bda7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Kaehler/Variantc42ff25ada408e9f38724ce6c521af3c158e6b24f5373e160ec93134ed13bda7.lean/index.md) · [Full source](../../../../mathematics/Algebra/Kaehler/Variantc42ff25ada408e9f38724ce6c521af3c158e6b24f5373e160ec93134ed13bda7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb98a92a8040cbe0b9e59dde7ea0757b915db338`.

Source path: `GRWTSK/Algebra/Kaehler/Variantc42ff25ada408e9f38724ce6c521af3c158e6b24f5373e160ec93134ed13bda7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Kaehler/Variantc42ff25ada408e9f38724ce6c521af3c158e6b24f5373e160ec93134ed13bda7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Etale.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Kaehler.JacobiZariski` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.BaseChange` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Smooth.Kaehler` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Flat.Localization` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [KaehlerDifferential.tensorKaehlerEquivOfFormallyEtale](../../../../mathematics/Algebra/Kaehler/Variantc42ff25ada408e9f38724ce6c521af3c158e6b24f5373e160ec93134ed13bda7.lean/declarations/kaehlerdifferential-tensorkaehlerequivofformallyetale--7911bb0e6e6e19729c29a16a.md) | 42 | `declaration-track:7911bb0e6e6e19729c29a16a47ca88aecb94fb27abd8ca939954b1968ab3d9bc` |
| 2 | `lemma` | [KaehlerDifferential.tensorKaehlerEquivOfFormallyEtale_symm_D_algebraMap](../../../../mathematics/Algebra/Kaehler/Variantc42ff25ada408e9f38724ce6c521af3c158e6b24f5373e160ec93134ed13bda7.lean/declarations/kaehlerdifferential-tensorkaehlerequivofformallyetale-symm-d-algebramap--03d457b95c34a502fece6314.md) | 51 | `result-track:03d457b95c34a502fece631499fb94293c6b6d2c84b73a1df08caa25ae7ac5a8` |
| 3 | `lemma` | [KaehlerDifferential.isBaseChange_of_formallyEtale](../../../../mathematics/Algebra/Kaehler/Variantc42ff25ada408e9f38724ce6c521af3c158e6b24f5373e160ec93134ed13bda7.lean/declarations/kaehlerdifferential-isbasechange-of-formallyetale--fff6c54411754a63bd538b0e.md) | 57 | `result-track:fff6c54411754a63bd538b0e16b369440752b3cfedb7a87a12975d36b593856f` |
| 4 | `instance` | [KaehlerDifferential.isLocalizedModule_map](../../../../mathematics/Algebra/Kaehler/Variantc42ff25ada408e9f38724ce6c521af3c158e6b24f5373e160ec93134ed13bda7.lean/declarations/kaehlerdifferential-islocalizedmodule-map--ef4ea49453139ec8a02c42bd.md) | 67 | `declaration-track:ef4ea49453139ec8a02c42bd5c1f1f19b686706d5d7cb4ff4dfc22a3586bd21c` |
| 5 | `def` | [tensorCotangentSpace](../../../../mathematics/Algebra/Kaehler/Variantc42ff25ada408e9f38724ce6c521af3c158e6b24f5373e160ec93134ed13bda7.lean/declarations/tensorcotangentspace--e631df3325d194511b06f7a2.md) | 92 | `declaration-track:e631df3325d194511b06f7a2d204364a58d509a24d62cb7f305b728958b6b72a` |
| 6 | `def` | [tensorCotangentInvFun](../../../../mathematics/Algebra/Kaehler/Variantc42ff25ada408e9f38724ce6c521af3c158e6b24f5373e160ec93134ed13bda7.lean/declarations/tensorcotangentinvfun--a87bf9ec4568b609461f0520.md) | 140 | `declaration-track:a87bf9ec4568b609461f052042d860ea3c4d911a024a35b552803c4624896af4` |
| 7 | `lemma` | [tensorCotangentInvFun_smul_mk](../../../../mathematics/Algebra/Kaehler/Variantc42ff25ada408e9f38724ce6c521af3c158e6b24f5373e160ec93134ed13bda7.lean/declarations/tensorcotangentinvfun-smul-mk--694ddd99ac9f5b656c805c7c.md) | 181 | `result-track:694ddd99ac9f5b656c805c7cf8399614fa5ca5f104eb667831cb58823fe892d8` |
| 8 | `def` | [tensorCotangent](../../../../mathematics/Algebra/Kaehler/Variantc42ff25ada408e9f38724ce6c521af3c158e6b24f5373e160ec93134ed13bda7.lean/declarations/tensorcotangent--fb15b1462f60d7e897771e72.md) | 200 | `declaration-track:fb15b1462f60d7e897771e72f3c2361902210d3a78073fee69d52fa612b14ac4` |
| 9 | `def` | [tensorH1Cotangent](../../../../mathematics/Algebra/Kaehler/Variantc42ff25ada408e9f38724ce6c521af3c158e6b24f5373e160ec93134ed13bda7.lean/declarations/tensorh1cotangent--74334242a6a690ccfeaa77a3.md) | 230 | `declaration-track:74334242a6a690ccfeaa77a3d2b1f6ecdf75ffab31bc176e45485cf139e2a838` |
| 10 | `def` | [tensorH1CotangentOfIsLocalization](../../../../mathematics/Algebra/Kaehler/Variantc42ff25ada408e9f38724ce6c521af3c158e6b24f5373e160ec93134ed13bda7.lean/declarations/tensorh1cotangentofislocalization--598b8dfc641125fd360420fd.md) | 273 | `declaration-track:598b8dfc641125fd360420fdccf5da4abf8cdd220f79c0385a96e1187a00c7ab` |
| 11 | `lemma` | [tensorH1CotangentOfIsLocalization_toLinearMap](../../../../mathematics/Algebra/Kaehler/Variantc42ff25ada408e9f38724ce6c521af3c158e6b24f5373e160ec93134ed13bda7.lean/declarations/tensorh1cotangentofislocalization-tolinearmap--e5a5e3d5e4a0135a52f4edd8.md) | 335 | `result-track:e5a5e3d5e4a0135a52f4edd8843974f76e79b4c68c2b55980a15a97956fc51b4` |
| 12 | `instance` | [H1Cotangent.isLocalizedModule](../../../../mathematics/Algebra/Kaehler/Variantc42ff25ada408e9f38724ce6c521af3c158e6b24f5373e160ec93134ed13bda7.lean/declarations/h1cotangent-islocalizedmodule--df02a047de4fa5210164de55.md) | 376 | `declaration-track:df02a047de4fa5210164de554c3333662dc10420f7607c4380dc6c1730c7b6e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
