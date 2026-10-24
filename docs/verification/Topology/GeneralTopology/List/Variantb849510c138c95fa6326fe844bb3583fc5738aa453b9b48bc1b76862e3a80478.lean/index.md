# Verification target: GRWTSK.Topology.GeneralTopology.List.Variantb849510c138c95fa6326fe844bb3583fc5738aa453b9b48bc1b76862e3a80478

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d40e381bcd616c94ec7acfb4cc1f5bee15cf4d8",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/List/Variantb849510c138c95fa6326fe844bb3583fc5738aa453b9b48bc1b76862e3a80478.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/List/Variantb849510c138c95fa6326fe844bb3583fc5738aa453b9b48bc1b76862e3a80478.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/List/Variantb849510c138c95fa6326fe844bb3583fc5738aa453b9b48bc1b76862e3a80478.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d40e381bcd616c94ec7acfb4cc1f5bee15cf4d8`.

Source path: `GRWTSK/Topology/GeneralTopology/List/Variantb849510c138c95fa6326fe844bb3583fc5738aa453b9b48bc1b76862e3a80478.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/List/Variantb849510c138c95fa6326fe844bb3583fc5738aa453b9b48bc1b76862e3a80478.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/List/Variantb849510c138c95fa6326fe844bb3583fc5738aa453b9b48bc1b76862e3a80478.lean/declarations/instance--8d7287a8c4b1db5d3637b491.md) | 28 | `declaration-track:8d7287a8c4b1db5d3637b491570932d703dea1f38ef6d1e566f4b8c5d374bb0a` |
| 2 | `theorem` | [nhds_list](../../../../../mathematics/Topology/GeneralTopology/List/Variantb849510c138c95fa6326fe844bb3583fc5738aa453b9b48bc1b76862e3a80478.lean/declarations/nhds-list--781e5c9716c934b2ff87d8b5.md) | 31 | `result-track:781e5c9716c934b2ff87d8b531f7c1faafc38bdfc82f88b2c435e2f03bcd7364` |
| 3 | `theorem` | [nhds_nil](../../../../../mathematics/Topology/GeneralTopology/List/Variantb849510c138c95fa6326fe844bb3583fc5738aa453b9b48bc1b76862e3a80478.lean/declarations/nhds-nil--83377c7ae2c850cd4560e55e.md) | 69 | `result-track:83377c7ae2c850cd4560e55ebcfef5f7a3163f31605affc6bf1c58dc987272f1` |
| 4 | `theorem` | [nhds_cons](../../../../../mathematics/Topology/GeneralTopology/List/Variantb849510c138c95fa6326fe844bb3583fc5738aa453b9b48bc1b76862e3a80478.lean/declarations/nhds-cons--4553625dd56de4f3dbed984b.md) | 72 | `result-track:4553625dd56de4f3dbed984b5c3a9b435b5fdbb417977cdd4a9fc4ff401f8e7c` |
| 5 | `theorem` | [List.tendsto_cons](../../../../../mathematics/Topology/GeneralTopology/List/Variantb849510c138c95fa6326fe844bb3583fc5738aa453b9b48bc1b76862e3a80478.lean/declarations/list-tendsto-cons--573e631feead332adbc74817.md) | 75 | `result-track:573e631feead332adbc748173d2d483dc28aa9a9a7b7e6e6a22e7f84cd81099a` |
| 6 | `theorem` | [Filter.Tendsto.cons](../../../../../mathematics/Topology/GeneralTopology/List/Variantb849510c138c95fa6326fe844bb3583fc5738aa453b9b48bc1b76862e3a80478.lean/declarations/filter-tendsto-cons--96a53f1e90c610013012697d.md) | 79 | `result-track:96a53f1e90c610013012697d9be472280baf13c06051157dd4668a8693183382` |
| 7 | `theorem` | [tendsto_cons_iff](../../../../../mathematics/Topology/GeneralTopology/List/Variantb849510c138c95fa6326fe844bb3583fc5738aa453b9b48bc1b76862e3a80478.lean/declarations/tendsto-cons-iff--65cbe3d3c490e1a61f7176d3.md) | 86 | `result-track:65cbe3d3c490e1a61f7176d39f9928ce869ea7eebbac6d773587030c397b0a79` |
| 8 | `theorem` | [continuous_cons](../../../../../mathematics/Topology/GeneralTopology/List/Variantb849510c138c95fa6326fe844bb3583fc5738aa453b9b48bc1b76862e3a80478.lean/declarations/continuous-cons--d60b4d3d60daba11aa14a8d8.md) | 94 | `result-track:d60b4d3d60daba11aa14a8d8e896f9940d70c866806294e81f1d8db67b22adb0` |
| 9 | `theorem` | [tendsto_nhds](../../../../../mathematics/Topology/GeneralTopology/List/Variantb849510c138c95fa6326fe844bb3583fc5738aa453b9b48bc1b76862e3a80478.lean/declarations/tendsto-nhds--0210e979c32c314d5273ca86.md) | 97 | `result-track:0210e979c32c314d5273ca86b8a24b99a227329645ae2e242d17c63dbe534e08` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/List/Variantb849510c138c95fa6326fe844bb3583fc5738aa453b9b48bc1b76862e3a80478.lean/declarations/instance--2a1c3f6f63f6e43961411d91.md) | 108 | `declaration-track:2a1c3f6f63f6e43961411d91b01f49ee36bdf615c522f9d5eec5b4d19ce0859d` |
| 11 | `theorem` | [continuousAt_length](../../../../../mathematics/Topology/GeneralTopology/List/Variantb849510c138c95fa6326fe844bb3583fc5738aa453b9b48bc1b76862e3a80478.lean/declarations/continuousat-length--b17c78ebbe00430fd859c2a8.md) | 111 | `result-track:b17c78ebbe00430fd859c2a818e0da03ba44be4df98ac4cc72d0325042e0561f` |
| 12 | `theorem` | [tendsto_insertIdx'](../../../../../mathematics/Topology/GeneralTopology/List/Variantb849510c138c95fa6326fe844bb3583fc5738aa453b9b48bc1b76862e3a80478.lean/declarations/tendsto-insertidx--f81036fa92bd9167f67fbbb5.md) | 121 | `result-track:f81036fa92bd9167f67fbbb57a216a07a7a4dd10b62a2e0f6fba3a1a17f60618` |
| 13 | `theorem` | [tendsto_insertIdx](../../../../../mathematics/Topology/GeneralTopology/List/Variantb849510c138c95fa6326fe844bb3583fc5738aa453b9b48bc1b76862e3a80478.lean/declarations/tendsto-insertidx--6ee2e8d62cd44d3f057067d6.md) | 136 | `result-track:6ee2e8d62cd44d3f057067d62018d481531018bd252237ee597462787f4208ea` |
| 14 | `theorem` | [continuous_insertIdx](../../../../../mathematics/Topology/GeneralTopology/List/Variantb849510c138c95fa6326fe844bb3583fc5738aa453b9b48bc1b76862e3a80478.lean/declarations/continuous-insertidx--30f2de470536114e2420d054.md) | 141 | `result-track:30f2de470536114e2420d054fb132019bfe0b58e55e613fcaae1458426e1c48d` |
| 15 | `theorem` | [tendsto_eraseIdx](../../../../../mathematics/Topology/GeneralTopology/List/Variantb849510c138c95fa6326fe844bb3583fc5738aa453b9b48bc1b76862e3a80478.lean/declarations/tendsto-eraseidx--6040a6fab5ebc647cd6624a4.md) | 145 | `result-track:6040a6fab5ebc647cd6624a4640dfa55547a68eefca3099607719dfede5b48ff` |
| 16 | `theorem` | [continuous_eraseIdx](../../../../../mathematics/Topology/GeneralTopology/List/Variantb849510c138c95fa6326fe844bb3583fc5738aa453b9b48bc1b76862e3a80478.lean/declarations/continuous-eraseidx--64b0fc54c881d49b8bbbb9c5.md) | 154 | `result-track:64b0fc54c881d49b8bbbb9c5235c17b3552ca9dd43fcb94b61fe07640462831f` |
| 17 | `theorem` | [tendsto_prod](../../../../../mathematics/Topology/GeneralTopology/List/Variantb849510c138c95fa6326fe844bb3583fc5738aa453b9b48bc1b76862e3a80478.lean/declarations/tendsto-prod--cebdfce6412d1f09a036cc2c.md) | 158 | `result-track:cebdfce6412d1f09a036cc2c62aafefb263c6f17afe6edbf864dbc9bd92272e2` |
| 18 | `theorem` | [continuous_prod](../../../../../mathematics/Topology/GeneralTopology/List/Variantb849510c138c95fa6326fe844bb3583fc5738aa453b9b48bc1b76862e3a80478.lean/declarations/continuous-prod--fff592cb3d7c4737b9a6f9ea.md) | 169 | `result-track:fff592cb3d7c4737b9a6f9ead2e16dd360b0f00e0f23a1cbf07f8b7d77dfed72` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/List/Variantb849510c138c95fa6326fe844bb3583fc5738aa453b9b48bc1b76862e3a80478.lean/declarations/instance--d2dd0324ca890049b5b9cb75.md) | 176 | `declaration-track:d2dd0324ca890049b5b9cb75bccc435e8b745cd2e0e698a35240eb8aa955c8e0` |
| 20 | `theorem` | [tendsto_cons](../../../../../mathematics/Topology/GeneralTopology/List/Variantb849510c138c95fa6326fe844bb3583fc5738aa453b9b48bc1b76862e3a80478.lean/declarations/tendsto-cons--9f882a61cd2e39310a093199.md) | 180 | `result-track:9f882a61cd2e39310a093199c8574c547043dff9857aab1a8a9acad0f5aa8eb1` |
| 21 | `theorem` | [tendsto_insertIdx](../../../../../mathematics/Topology/GeneralTopology/List/Variantb849510c138c95fa6326fe844bb3583fc5738aa453b9b48bc1b76862e3a80478.lean/declarations/tendsto-insertidx--c7db59aaf4476918d7ce29e6.md) | 186 | `result-track:c7db59aaf4476918d7ce29e6b18f069b311502f317099670575b35efcdbdfb61` |
| 22 | `theorem` | [continuous_insertIdx'](../../../../../mathematics/Topology/GeneralTopology/List/Variantb849510c138c95fa6326fe844bb3583fc5738aa453b9b48bc1b76862e3a80478.lean/declarations/continuous-insertidx--31d59b815af56e8b5b9dac61.md) | 196 | `result-track:31d59b815af56e8b5b9dac61d660e64155dcfe3029d3385b0cf777670939c23e` |
| 23 | `theorem` | [continuous_insertIdx](../../../../../mathematics/Topology/GeneralTopology/List/Variantb849510c138c95fa6326fe844bb3583fc5738aa453b9b48bc1b76862e3a80478.lean/declarations/continuous-insertidx--88c9be1a282960853523e647.md) | 201 | `result-track:88c9be1a282960853523e647e53d711efee3a13bcce26e2aa0aef50d1e798e0a` |
| 24 | `theorem` | [continuousAt_eraseIdx](../../../../../mathematics/Topology/GeneralTopology/List/Variantb849510c138c95fa6326fe844bb3583fc5738aa453b9b48bc1b76862e3a80478.lean/declarations/continuousat-eraseidx--560ed6e470bba5831cdb2d48.md) | 206 | `result-track:560ed6e470bba5831cdb2d486ef73b106d613542ff4f17d93e79f9c92cfcfb17` |
| 25 | `theorem` | [continuous_eraseIdx](../../../../../mathematics/Topology/GeneralTopology/List/Variantb849510c138c95fa6326fe844bb3583fc5738aa453b9b48bc1b76862e3a80478.lean/declarations/continuous-eraseidx--4774471c251eebe49c68d028.md) | 213 | `result-track:4774471c251eebe49c68d02846c19c584a4628bc361feca82fb42afa983f116b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
