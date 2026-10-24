# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GaussSum.Variantdc3e4de38bd6561d54ad12166a12c531937693fbb2b7b0dd808918f4eb93fc0b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f5ff71fd5130953bf05fb626eca91bb2f360389",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GaussSum/Variantdc3e4de38bd6561d54ad12166a12c531937693fbb2b7b0dd808918f4eb93fc0b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variantdc3e4de38bd6561d54ad12166a12c531937693fbb2b7b0dd808918f4eb93fc0b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variantdc3e4de38bd6561d54ad12166a12c531937693fbb2b7b0dd808918f4eb93fc0b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f5ff71fd5130953bf05fb626eca91bb2f360389`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GaussSum/Variantdc3e4de38bd6561d54ad12166a12c531937693fbb2b7b0dd808918f4eb93fc0b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GaussSum/Variantdc3e4de38bd6561d54ad12166a12c531937693fbb2b7b0dd808918f4eb93fc0b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LegendreSymbol.AddCharacter` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LegendreSymbol.ZModChar` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.CharAndCard` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gaussSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variantdc3e4de38bd6561d54ad12166a12c531937693fbb2b7b0dd808918f4eb93fc0b.lean/declarations/gausssum--89d00a04780b6a7d00eabc70.md) | 79 | `declaration-track:89d00a04780b6a7d00eabc7093f073eb30efbc8f7c5efbf8d82dc09d288cf9c6` |
| 2 | `theorem` | [gaussSum_mulShift](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variantdc3e4de38bd6561d54ad12166a12c531937693fbb2b7b0dd808918f4eb93fc0b.lean/declarations/gausssum-mulshift--046eb51b2836257c05095214.md) | 84 | `result-track:046eb51b2836257c0509521488e0b279f63b388c763d8a5c56fac8872949a9b3` |
| 3 | `theorem` | [gaussSum_mul_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variantdc3e4de38bd6561d54ad12166a12c531937693fbb2b7b0dd808918f4eb93fc0b.lean/declarations/gausssum-mul-aux--69d9c34ae4a54b52ac9f53b4.md) | 105 | `result-track:69d9c34ae4a54b52ac9f53b43ff7123ef256fd8c642c394c3965678543608411` |
| 4 | `theorem` | [gaussSum_mul_gaussSum_eq_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variantdc3e4de38bd6561d54ad12166a12c531937693fbb2b7b0dd808918f4eb93fc0b.lean/declarations/gausssum-mul-gausssum-eq-card--855a5dd1ca2ddedcb429db8b.md) | 118 | `result-track:855a5dd1ca2ddedcb429db8bad44dfcf0f2c4267a3cb710b20ba30c4e11a3f01` |
| 5 | `theorem` | [gaussSum_sq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variantdc3e4de38bd6561d54ad12166a12c531937693fbb2b7b0dd808918f4eb93fc0b.lean/declarations/gausssum-sq--6be5044d23575574edcf587d.md) | 137 | `result-track:6be5044d23575574edcf587dcfafb31ec9f3d8c22cbbefe7985e8af93b585bec` |
| 6 | `theorem` | [gaussSum_frob](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variantdc3e4de38bd6561d54ad12166a12c531937693fbb2b7b0dd808918f4eb93fc0b.lean/declarations/gausssum-frob--b58fcb7ae2793232776d8293.md) | 161 | `result-track:b58fcb7ae2793232776d8293df64a623af91205cbcbe12d54713bcda5844b85d` |
| 7 | `theorem` | [MulChar.IsQuadratic.gaussSum_frob](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variantdc3e4de38bd6561d54ad12166a12c531937693fbb2b7b0dd808918f4eb93fc0b.lean/declarations/mulchar-isquadratic-gausssum-frob--54a1b11f3407b22a0423e55b.md) | 172 | `result-track:54a1b11f3407b22a0423e55b65c74bd6a8cc808e0dfbd44452f890fb8e5dee29` |
| 8 | `theorem` | [MulChar.IsQuadratic.gaussSum_frob_iter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variantdc3e4de38bd6561d54ad12166a12c531937693fbb2b7b0dd808918f4eb93fc0b.lean/declarations/mulchar-isquadratic-gausssum-frob-iter--8f0c754f6dde42eaae62af8b.md) | 182 | `result-track:8f0c754f6dde42eaae62af8bdbfc4ccea5d2da0bacb059cda5d3d294597a2dde` |
| 9 | `theorem` | [Char.card_pow_char_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variantdc3e4de38bd6561d54ad12166a12c531937693fbb2b7b0dd808918f4eb93fc0b.lean/declarations/char-card-pow-char-pow--c5645982c3badb7113d20a68.md) | 206 | `result-track:c5645982c3badb7113d20a68023e72a49d3d76b5bb7e51b0a06184a145c8bcda` |
| 10 | `theorem` | [Char.card_pow_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variantdc3e4de38bd6561d54ad12166a12c531937693fbb2b7b0dd808918f4eb93fc0b.lean/declarations/char-card-pow-card--dfe7fe718a4b2d78fc620df7.md) | 221 | `result-track:dfe7fe718a4b2d78fc620df7c35091c7a0ef168ea2e8ef5c9ee1f75a20327a36` |
| 11 | `theorem` | [FiniteField.two_pow_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variantdc3e4de38bd6561d54ad12166a12c531937693fbb2b7b0dd808918f4eb93fc0b.lean/declarations/finitefield-two-pow-card--8faee693cec797eae30ffd9b.md) | 274 | `result-track:8faee693cec797eae30ffd9b8371318aae4e8ce342d432fee70d8cd7eaf9b7be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
