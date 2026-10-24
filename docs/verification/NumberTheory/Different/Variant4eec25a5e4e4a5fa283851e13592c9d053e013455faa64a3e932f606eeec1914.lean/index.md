# Verification target: GRWTSK.NumberTheory.Different.Variant4eec25a5e4e4a5fa283851e13592c9d053e013455faa64a3e932f606eeec1914

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4bac7137f46cd5aea5f18c3e1f152963688b336c",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Different/Variant4eec25a5e4e4a5fa283851e13592c9d053e013455faa64a3e932f606eeec1914.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Different/Variant4eec25a5e4e4a5fa283851e13592c9d053e013455faa64a3e932f606eeec1914.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Different/Variant4eec25a5e4e4a5fa283851e13592c9d053e013455faa64a3e932f606eeec1914.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4bac7137f46cd5aea5f18c3e1f152963688b336c`.

Source path: `GRWTSK/NumberTheory/Different/Variant4eec25a5e4e4a5fa283851e13592c9d053e013455faa64a3e932f606eeec1914.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Different/Variant4eec25a5e4e4a5fa283851e13592c9d053e013455faa64a3e932f606eeec1914.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [absNorm_differentIdeal](../../../../mathematics/NumberTheory/Different/Variant4eec25a5e4e4a5fa283851e13592c9d053e013455faa64a3e932f606eeec1914.lean/declarations/absnorm-differentideal--ddc3e101e494667bba118ba8.md) | 43 | `result-track:ddc3e101e494667bba118ba8caf3c23b06d336595561dd19b0de4aed928198d5` |
| 2 | `lemma` | [discr_mem_differentIdeal](../../../../mathematics/NumberTheory/Different/Variant4eec25a5e4e4a5fa283851e13592c9d053e013455faa64a3e932f606eeec1914.lean/declarations/discr-mem-differentideal--22886b1866a527d2a80c5727.md) | 79 | `result-track:22886b1866a527d2a80c572737ef9873f844a77afef67348d01e4bfccfb7d4bb` |
| 3 | `theorem` | [natAbs_discr_eq_absNorm_differentIdeal_mul_natAbs_discr_pow](../../../../mathematics/NumberTheory/Different/Variant4eec25a5e4e4a5fa283851e13592c9d053e013455faa64a3e932f606eeec1914.lean/declarations/natabs-discr-eq-absnorm-differentideal-mul-natabs-discr-pow--004466079ff03e7d2d25b013.md) | 89 | `result-track:004466079ff03e7d2d25b013ae9c583d6c1b4b275ca1cbc4a150349df536c769` |
| 4 | `theorem` | [isCoprime_differentIdeal_of_isCoprime_discr](../../../../mathematics/NumberTheory/Different/Variant4eec25a5e4e4a5fa283851e13592c9d053e013455faa64a3e932f606eeec1914.lean/declarations/iscoprime-differentideal-of-iscoprime-discr--9dbae84f06719638b7d253e3.md) | 103 | `result-track:9dbae84f06719638b7d253e32aacd003ca5a3ed6558f06c079fcb06d2cd7368d` |
| 5 | `theorem` | [discr_dvd_discr](../../../../mathematics/NumberTheory/Different/Variant4eec25a5e4e4a5fa283851e13592c9d053e013455faa64a3e932f606eeec1914.lean/declarations/discr-dvd-discr--7078c29a552deee00d18f7cc.md) | 120 | `result-track:7078c29a552deee00d18f7ccdf7a42d4509ec789d13ce9cf6d218edcc018e71b` |
| 6 | `theorem` | [linearDisjoint_of_isGalois_isCoprime_discr](../../../../mathematics/NumberTheory/Different/Variant4eec25a5e4e4a5fa283851e13592c9d053e013455faa64a3e932f606eeec1914.lean/declarations/lineardisjoint-of-isgalois-iscoprime-discr--d818dc2fcf58641b99d6407a.md) | 133 | `result-track:d818dc2fcf58641b99d6407ae5c71bb6213a0e94593a43a62d75e79baf988c76` |
| 7 | `theorem` | [natAbs_discr_eq_natAbs_discr_pow_mul_natAbs_discr_pow](../../../../mathematics/NumberTheory/Different/Variant4eec25a5e4e4a5fa283851e13592c9d053e013455faa64a3e932f606eeec1914.lean/declarations/natabs-discr-eq-natabs-discr-pow-mul-natabs-discr-pow--8630b1c74fb0e38f9665848d.md) | 150 | `result-track:8630b1c74fb0e38f9665848de4062f6dcc7249f5605c164e148baee8e75b05a3` |
| 8 | `lemma` | [not_dvd_discr_iff_forall_liesOver](../../../../mathematics/NumberTheory/Different/Variant4eec25a5e4e4a5fa283851e13592c9d053e013455faa64a3e932f606eeec1914.lean/declarations/not-dvd-discr-iff-forall-liesover--4b279f2e2edf214bd29c2231.md) | 166 | `result-track:4b279f2e2edf214bd29c22317455aa9d074e04a3f03fb2f2877d7bb57b3dac1d` |
| 9 | `lemma` | [not_dvd_discr_iff_isUnramifiedIn](../../../../mathematics/NumberTheory/Different/Variant4eec25a5e4e4a5fa283851e13592c9d053e013455faa64a3e932f606eeec1914.lean/declarations/not-dvd-discr-iff-isunramifiedin--acfd073ca5b5e72824ea3285.md) | 192 | `result-track:acfd073ca5b5e72824ea3285e4db36e82e1e05b78785526f3cdd47dfaf44149c` |
| 10 | `lemma` | [not_dvd_discr_iff_forall_mem](../../../../mathematics/NumberTheory/Different/Variant4eec25a5e4e4a5fa283851e13592c9d053e013455faa64a3e932f606eeec1914.lean/declarations/not-dvd-discr-iff-forall-mem--817eacc1b203294f74a18cea.md) | 202 | `result-track:817eacc1b203294f74a18ceae8eb6ce6cd5f100d3b87acacf91eaf959679ca6c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
