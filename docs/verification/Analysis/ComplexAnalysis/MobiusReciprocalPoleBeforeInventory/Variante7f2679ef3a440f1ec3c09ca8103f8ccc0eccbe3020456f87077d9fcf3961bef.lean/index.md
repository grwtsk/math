# Verification target: GRWTSK.Analysis.ComplexAnalysis.MobiusReciprocalPoleBeforeInventory.Variante7f2679ef3a440f1ec3c09ca8103f8ccc0eccbe3020456f87077d9fcf3961bef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6826f7f782ecaac32a2d0115b03eb28d122b620c",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variante7f2679ef3a440f1ec3c09ca8103f8ccc0eccbe3020456f87077d9fcf3961bef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variante7f2679ef3a440f1ec3c09ca8103f8ccc0eccbe3020456f87077d9fcf3961bef.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variante7f2679ef3a440f1ec3c09ca8103f8ccc0eccbe3020456f87077d9fcf3961bef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6826f7f782ecaac32a2d0115b03eb28d122b620c`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variante7f2679ef3a440f1ec3c09ca8103f8ccc0eccbe3020456f87077d9fcf3961bef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variante7f2679ef3a440f1ec3c09ca8103f8ccc0eccbe3020456f87077d9fcf3961bef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.FromPNTPlus.ZetaBounds` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RemovableSingularity` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zetaPoleFactor](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variante7f2679ef3a440f1ec3c09ca8103f8ccc0eccbe3020456f87077d9fcf3961bef.lean/declarations/zetapolefactor--d07d8ee9bcefe9538d66a0bf.md) | 27 | `declaration-track:d07d8ee9bcefe9538d66a0bf6f53eb00a1d92d875257a3045e19cb83f90e8432` |
| 2 | `theorem` | [zetaPoleFactor_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variante7f2679ef3a440f1ec3c09ca8103f8ccc0eccbe3020456f87077d9fcf3961bef.lean/declarations/zetapolefactor-zero--8bd03d5af82fcc982ebf9a4a.md) | 29 | `result-track:8bd03d5af82fcc982ebf9a4a1d40d5d2f88f71ccd1f069ad0f0f6c5f0eb3d57f` |
| 3 | `theorem` | [zetaPoleFactor_off](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variante7f2679ef3a440f1ec3c09ca8103f8ccc0eccbe3020456f87077d9fcf3961bef.lean/declarations/zetapolefactor-off--6a78536bb79a646330fc2684.md) | 32 | `result-track:6a78536bb79a646330fc268480d7781de12685e0d25ac7d1df36ca96982accb9` |
| 4 | `theorem` | [zetaPoleFactor_limit](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variante7f2679ef3a440f1ec3c09ca8103f8ccc0eccbe3020456f87077d9fcf3961bef.lean/declarations/zetapolefactor-limit--2e7c6ee60d3857cf5316643c.md) | 36 | `result-track:2e7c6ee60d3857cf5316643cea14a76831e2dd438a61041fe09960d69d82855e` |
| 5 | `theorem` | [zetaPoleFactor_analyticAt_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variante7f2679ef3a440f1ec3c09ca8103f8ccc0eccbe3020456f87077d9fcf3961bef.lean/declarations/zetapolefactor-analyticat-zero--1e086e28f97ee4e005ac29a7.md) | 51 | `result-track:1e086e28f97ee4e005ac29a75568dae8f7cc11b9035b0364292c0e12a41a0e1b` |
| 6 | `def` | [reciprocalZeta](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variante7f2679ef3a440f1ec3c09ca8103f8ccc0eccbe3020456f87077d9fcf3961bef.lean/declarations/reciprocalzeta--3b2f06d6a5c0639bcd89ac6b.md) | 64 | `declaration-track:3b2f06d6a5c0639bcd89ac6b07bdcf8ab604e0263d8ffa27e66c29deb79ff87e` |
| 7 | `theorem` | [reciprocalZeta_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variante7f2679ef3a440f1ec3c09ca8103f8ccc0eccbe3020456f87077d9fcf3961bef.lean/declarations/reciprocalzeta-zero--d8d82fe98ae647223b13c604.md) | 66 | `result-track:d8d82fe98ae647223b13c604c4aca0118fabcc3477489db6efd7df8b5434555c` |
| 8 | `theorem` | [reciprocalZeta_off](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variante7f2679ef3a440f1ec3c09ca8103f8ccc0eccbe3020456f87077d9fcf3961bef.lean/declarations/reciprocalzeta-off--feeac3642c3f349517dcae96.md) | 69 | `result-track:feeac3642c3f349517dcae963c08a8537b9367487c04f52be24ddcd73000db19` |
| 9 | `theorem` | [reciprocalZeta_eq_div_factor](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variante7f2679ef3a440f1ec3c09ca8103f8ccc0eccbe3020456f87077d9fcf3961bef.lean/declarations/reciprocalzeta-eq-div-factor--b27dfef507475b1ee2595867.md) | 73 | `result-track:b27dfef507475b1ee259586762c3e45ab7f1a1827d2b7166485546864b6e882a` |
| 10 | `theorem` | [reciprocalZeta_analyticAt_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variante7f2679ef3a440f1ec3c09ca8103f8ccc0eccbe3020456f87077d9fcf3961bef.lean/declarations/reciprocalzeta-analyticat-zero--e79d2f8e9fb21799a9f76245.md) | 80 | `result-track:e79d2f8e9fb21799a9f76245c1a3e7915612b6633a2ed1a422d12029d8f17d2c` |
| 11 | `theorem` | [reciprocalZeta_hasDerivAt_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variante7f2679ef3a440f1ec3c09ca8103f8ccc0eccbe3020456f87077d9fcf3961bef.lean/declarations/reciprocalzeta-hasderivat-zero--19d2d47b555238e5bc7533f8.md) | 86 | `result-track:19d2d47b555238e5bc7533f836a15f169f1759c8e3661e7d455542f68935f919` |
| 12 | `theorem` | [reciprocalZeta_eventually_ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variante7f2679ef3a440f1ec3c09ca8103f8ccc0eccbe3020456f87077d9fcf3961bef.lean/declarations/reciprocalzeta-eventually-ne-zero--d28fd22c8f65612159b41e32.md) | 94 | `result-track:d28fd22c8f65612159b41e32d825e9373d766a873ed8cdb160187fa2226de392` |
| 13 | `def` | [smoothedPerronIntegrand](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variante7f2679ef3a440f1ec3c09ca8103f8ccc0eccbe3020456f87077d9fcf3961bef.lean/declarations/smoothedperronintegrand--cfcb969ed611de3cec5e4a4f.md) | 105 | `declaration-track:cfcb969ed611de3cec5e4a4f65ebfff101a3c39cf5e3b3bbdba0b6800c62de2d` |
| 14 | `theorem` | [smoothedPerronIntegrand_factor](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variante7f2679ef3a440f1ec3c09ca8103f8ccc0eccbe3020456f87077d9fcf3961bef.lean/declarations/smoothedperronintegrand-factor--2cd3e891aab0d9ba356ac19c.md) | 108 | `result-track:2cd3e891aab0d9ba356ac19ce29272d4f8a1f83a0934b5d56025b6b6ffd9f14f` |
| 15 | `theorem` | [perronNumerator_analyticAt_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variante7f2679ef3a440f1ec3c09ca8103f8ccc0eccbe3020456f87077d9fcf3961bef.lean/declarations/perronnumerator-analyticat-zero--e4d13a991c8274d565deb3a0.md) | 116 | `result-track:e4d13a991c8274d565deb3a0324d3058e9bc00c34d15a373cdc33edb0abe2385` |
| 16 | `theorem` | [smoothedPerronIntegrand_meromorphicAt_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variante7f2679ef3a440f1ec3c09ca8103f8ccc0eccbe3020456f87077d9fcf3961bef.lean/declarations/smoothedperronintegrand-meromorphicat-zero--6ae28867af0d399ba17a762f.md) | 125 | `result-track:6ae28867af0d399ba17a762fd881685876fde4781cd0ac3761f7b93148a8a0ee` |
| 17 | `theorem` | [smoothedPerronIntegrand_order_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variante7f2679ef3a440f1ec3c09ca8103f8ccc0eccbe3020456f87077d9fcf3961bef.lean/declarations/smoothedperronintegrand-order-zero--f8370ff68f1b5045d3df59ea.md) | 132 | `result-track:f8370ff68f1b5045d3df59ea8e4e5c9bd4e1777db5428d97be2e4669aca1e410` |
| 18 | `theorem` | [smoothedPerronIntegrand_residue_limit](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variante7f2679ef3a440f1ec3c09ca8103f8ccc0eccbe3020456f87077d9fcf3961bef.lean/declarations/smoothedperronintegrand-residue-limit--baac591d6731f253c718abbd.md) | 142 | `result-track:baac591d6731f253c718abbdc5143121c2c54fadac1fc57a8bc2fcdb28a25046` |
| 19 | `theorem` | [smoothedPerronIntegrand_residue_one](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variante7f2679ef3a440f1ec3c09ca8103f8ccc0eccbe3020456f87077d9fcf3961bef.lean/declarations/smoothedperronintegrand-residue-one--78cf5ef749c79f52d15a6398.md) | 153 | `result-track:78cf5ef749c79f52d15a63984f0a8959537abaab010b57718e42214510c573b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
