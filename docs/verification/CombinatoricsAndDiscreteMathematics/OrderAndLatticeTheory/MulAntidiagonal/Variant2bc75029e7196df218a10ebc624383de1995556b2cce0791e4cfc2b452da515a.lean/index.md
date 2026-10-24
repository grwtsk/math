# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.MulAntidiagonal.Variant2bc75029e7196df218a10ebc624383de1995556b2cce0791e4cfc2b452da515a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "770530c198c04ea5e8195b3b25fee39ad4959e96",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variant2bc75029e7196df218a10ebc624383de1995556b2cce0791e4cfc2b452da515a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variant2bc75029e7196df218a10ebc624383de1995556b2cce0791e4cfc2b452da515a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variant2bc75029e7196df218a10ebc624383de1995556b2cce0791e4cfc2b452da515a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `770530c198c04ea5e8195b3b25fee39ad4959e96`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variant2bc75029e7196df218a10ebc624383de1995556b2cce0791e4cfc2b452da515a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variant2bc75029e7196df218a10ebc624383de1995556b2cce0791e4cfc2b452da515a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.WellFoundedSet` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mulAntidiagonal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variant2bc75029e7196df218a10ebc624383de1995556b2cce0791e4cfc2b452da515a.lean/declarations/mulantidiagonal--81b9281d8770f0267e1e1427.md) | 32 | `declaration-track:81b9281d8770f0267e1e1427b87d6f386c29a9dbf2745f94af37f2cc28140af7` |
| 2 | `theorem` | [mem_mulAntidiagonal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variant2bc75029e7196df218a10ebc624383de1995556b2cce0791e4cfc2b452da515a.lean/declarations/mem-mulantidiagonal--04e3dd6f2cf69fb547e56015.md) | 36 | `result-track:04e3dd6f2cf69fb547e56015e4a46b6c779e1673ce62954f274164d041ca8860` |
| 3 | `theorem` | [mulAntidiagonal_mono_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variant2bc75029e7196df218a10ebc624383de1995556b2cce0791e4cfc2b452da515a.lean/declarations/mulantidiagonal-mono-left--339cf08e784be4d1cf814b14.md) | 40 | `result-track:339cf08e784be4d1cf814b14e2620e935595512cb1855b9733abb2fd56a871c1` |
| 4 | `theorem` | [mulAntidiagonal_mono_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variant2bc75029e7196df218a10ebc624383de1995556b2cce0791e4cfc2b452da515a.lean/declarations/mulantidiagonal-mono-right--43fd525d25592edfd3174ff7.md) | 44 | `result-track:43fd525d25592edfd3174ff7279e923d8e634ef9ed189a93d4421026348d7ff4` |
| 5 | `theorem` | [swap_mem_mulAntidiagonal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variant2bc75029e7196df218a10ebc624383de1995556b2cce0791e4cfc2b452da515a.lean/declarations/swap-mem-mulantidiagonal--b0412d9dfe68e7dff3067d19.md) | 51 | `result-track:b0412d9dfe68e7dff3067d19ab4de5e01c2d872c7da76a9c3ddb28daf713754e` |
| 6 | `theorem` | [swap_mem_mulAntidiagonal_aux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variant2bc75029e7196df218a10ebc624383de1995556b2cce0791e4cfc2b452da515a.lean/declarations/swap-mem-mulantidiagonal-aux--da7fdac9c93633ca6ffcd9d3.md) | 56 | `result-track:da7fdac9c93633ca6ffcd9d39ada93a9c0f9ddc8cb430396ad8216ed4b9cc1b7` |
| 7 | `theorem` | [fst_eq_fst_iff_snd_eq_snd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variant2bc75029e7196df218a10ebc624383de1995556b2cce0791e4cfc2b452da515a.lean/declarations/fst-eq-fst-iff-snd-eq-snd--7661bce682bdbc3ca2d38570.md) | 71 | `result-track:7661bce682bdbc3ca2d3857012e1d97c45a8dd9b6699ffda7d04a4de0deb8f6c` |
| 8 | `theorem` | [eq_of_fst_eq_fst](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variant2bc75029e7196df218a10ebc624383de1995556b2cce0791e4cfc2b452da515a.lean/declarations/eq-of-fst-eq-fst--a6cef0f67fe95aca9aac21ca.md) | 84 | `result-track:a6cef0f67fe95aca9aac21ca52a14a673ea440cab51f9a013a4ffad6936b31cf` |
| 9 | `theorem` | [eq_of_snd_eq_snd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variant2bc75029e7196df218a10ebc624383de1995556b2cce0791e4cfc2b452da515a.lean/declarations/eq-of-snd-eq-snd--85baed2b2220251509f666df.md) | 88 | `result-track:85baed2b2220251509f666df9e9bbc02643cceeabc9c43e62a61aa178b7ed90e` |
| 10 | `theorem` | [eq_of_fst_le_fst_of_snd_le_snd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variant2bc75029e7196df218a10ebc624383de1995556b2cce0791e4cfc2b452da515a.lean/declarations/eq-of-fst-le-fst-of-snd-le-snd--078e5a0e12e9b40487546e79.md) | 99 | `result-track:078e5a0e12e9b40487546e798d9b4d46623b9c643f9308c670ceb6634b1de3a4` |
| 11 | `theorem` | [finite_of_isPWO](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variant2bc75029e7196df218a10ebc624383de1995556b2cce0791e4cfc2b452da515a.lean/declarations/finite-of-ispwo--42521bb1753138f5374052be.md) | 109 | `result-track:42521bb1753138f5374052be086278874b6c60dd2faf3f7f148a485067dafb3b` |
| 12 | `theorem` | [finite_of_isWF](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variant2bc75029e7196df218a10ebc624383de1995556b2cce0791e4cfc2b452da515a.lean/declarations/finite-of-iswf--cbd1bac443a23129fc2bc0d6.md) | 126 | `result-track:cbd1bac443a23129fc2bc0d6033845ffe74b7cf33884ee5abece19c112d95d4d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
