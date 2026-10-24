# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Scan.Variant1234a378e980be9bc539fe174b94dd480b8f649dae633ce42629e62b1d57b6cf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ced44454123fc3210b07569cd8214463f48f661",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant1234a378e980be9bc539fe174b94dd480b8f649dae633ce42629e62b1d57b6cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant1234a378e980be9bc539fe174b94dd480b8f649dae633ce42629e62b1d57b6cf.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant1234a378e980be9bc539fe174b94dd480b8f649dae633ce42629e62b1d57b6cf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ced44454123fc3210b07569cd8214463f48f661`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant1234a378e980be9bc539fe174b94dd480b8f649dae633ce42629e62b1d57b6cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant1234a378e980be9bc539fe174b94dd480b8f649dae633ce42629e62b1d57b6cf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Util.ProofWanted` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [length_partialSums](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant1234a378e980be9bc539fe174b94dd480b8f649dae633ce42629e62b1d57b6cf.lean/declarations/length-partialsums--01efa37db7ec7db1707f6b37.md) | 34 | `result-track:01efa37db7ec7db1707f6b37ae1a0505246d1748ace84cc17b47e06d51ed3f03` |
| 2 | `theorem` | [partialSums_ne_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant1234a378e980be9bc539fe174b94dd480b8f649dae633ce42629e62b1d57b6cf.lean/declarations/partialsums-ne-nil--0cfc0de5a399961b806ad502.md) | 39 | `result-track:0cfc0de5a399961b806ad5024dcd70995263b1703a978880a630b187becf74ef` |
| 3 | `theorem` | [partialSums_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant1234a378e980be9bc539fe174b94dd480b8f649dae633ce42629e62b1d57b6cf.lean/declarations/partialsums-nil--636d9f0fe4ade8520033238c.md) | 43 | `result-track:636d9f0fe4ade8520033238c8ad00d406ed46e5087edfb64bd049fbb36dae860` |
| 4 | `theorem` | [partialSums_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant1234a378e980be9bc539fe174b94dd480b8f649dae633ce42629e62b1d57b6cf.lean/declarations/partialsums-cons--c4f94d8fe1fdeaf5a8e82a39.md) | 46 | `result-track:c4f94d8fe1fdeaf5a8e82a39181fdb0987c044bfddec37ad0752130f49334f25` |
| 5 | `theorem` | [partialSums_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant1234a378e980be9bc539fe174b94dd480b8f649dae633ce42629e62b1d57b6cf.lean/declarations/partialsums-append--d88ddbc3db532869d211538b.md) | 58 | `result-track:d88ddbc3db532869d211538b4228c921232b16c17b980a0649c04ee21b45564f` |
| 6 | `theorem` | [getElem_partialSums](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant1234a378e980be9bc539fe174b94dd480b8f649dae633ce42629e62b1d57b6cf.lean/declarations/getelem-partialsums--4587d749850bef5600ec7dbe.md) | 69 | `result-track:4587d749850bef5600ec7dbee106013c0b6ae8cb63575c15fa9f5f697c216eab` |
| 7 | `theorem` | [getElem?_partialSums](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant1234a378e980be9bc539fe174b94dd480b8f649dae633ce42629e62b1d57b6cf.lean/declarations/getelem-partialsums--51e5ba8355c38c86b2b72347.md) | 75 | `result-track:51e5ba8355c38c86b2b7234716d9222669524c3abc2a7d71c3280e7a1902f5be` |
| 8 | `theorem` | [take_partialSums](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant1234a378e980be9bc539fe174b94dd480b8f649dae633ce42629e62b1d57b6cf.lean/declarations/take-partialsums--c23b4a0510635cc34d32b36e.md) | 81 | `result-track:c23b4a0510635cc34d32b36e5904451976f86ff7af891efff5b2bcff085beade` |
| 9 | `theorem` | [length_partialProds](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant1234a378e980be9bc539fe174b94dd480b8f649dae633ce42629e62b1d57b6cf.lean/declarations/length-partialprods--5fd785bdcfc4da89d982e8fb.md) | 86 | `result-track:5fd785bdcfc4da89d982e8fba7ad2c7b713ae72c85571c33990b8d55a2751f56` |
| 10 | `theorem` | [partialProds_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant1234a378e980be9bc539fe174b94dd480b8f649dae633ce42629e62b1d57b6cf.lean/declarations/partialprods-nil--e408f87a2a4613bc8e652046.md) | 91 | `result-track:e408f87a2a4613bc8e65204662fdd65db0b608bc7b9dd2dfcc0483e9f2f5b462` |
| 11 | `theorem` | [partialProds_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant1234a378e980be9bc539fe174b94dd480b8f649dae633ce42629e62b1d57b6cf.lean/declarations/partialprods-cons--3c491fa3424375619bada085.md) | 95 | `result-track:3c491fa3424375619bada0858cf9a7f5554d8a4791d78070cb1429b2f1b0df21` |
| 12 | `theorem` | [partialProds_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant1234a378e980be9bc539fe174b94dd480b8f649dae633ce42629e62b1d57b6cf.lean/declarations/partialprods-append--7efd5621fe41ca610bbfdf84.md) | 107 | `result-track:7efd5621fe41ca610bbfdf848e6b227eed351cef49898e6a20923efb799a752a` |
| 13 | `theorem` | [getElem_partialProds](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant1234a378e980be9bc539fe174b94dd480b8f649dae633ce42629e62b1d57b6cf.lean/declarations/getelem-partialprods--3862d47d2ab2c01e03e86eb5.md) | 118 | `result-track:3862d47d2ab2c01e03e86eb5b1d313dd6e4bc4097c833397deb36eeb36717ed8` |
| 14 | `theorem` | [getElem?_partialProds](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant1234a378e980be9bc539fe174b94dd480b8f649dae633ce42629e62b1d57b6cf.lean/declarations/getelem-partialprods--0028488f75e136d20b274c90.md) | 124 | `result-track:0028488f75e136d20b274c90d0e2328c5675ef43229afa64898826f6b9fdca55` |
| 15 | `theorem` | [take_partialProds](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant1234a378e980be9bc539fe174b94dd480b8f649dae633ce42629e62b1d57b6cf.lean/declarations/take-partialprods--525cd567bdf82684a062774c.md) | 130 | `result-track:525cd567bdf82684a062774c45d7c8b95107414e598ba61b06acfd367729a997` |
| 16 | `theorem` | [length_flatten_mem_partialSums_map_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant1234a378e980be9bc539fe174b94dd480b8f649dae633ce42629e62b1d57b6cf.lean/declarations/length-flatten-mem-partialsums-map-length--e3a1f08c4f12c1e234e665ca.md) | 136 | `result-track:e3a1f08c4f12c1e234e665ca5ad6b92c7addd6d7b98f035a6f31066964123f0d` |
| 17 | `theorem` | [getElem_flatten_aux₁](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant1234a378e980be9bc539fe174b94dd480b8f649dae633ce42629e62b1d57b6cf.lean/declarations/getelem-flatten-aux--c10c9029209927682bff4f25.md) | 145 | `result-track:c10c9029209927682bff4f25724a5e16ca7a6af7088e7ab890e7c01aa79ae29f` |
| 18 | `theorem` | [getElem_flatten_aux₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant1234a378e980be9bc539fe174b94dd480b8f649dae633ce42629e62b1d57b6cf.lean/declarations/getelem-flatten-aux--12c312c0a300abadf1fa4d55.md) | 158 | `result-track:12c312c0a300abadf1fa4d55082b3fc46ec95501323a302fe116d8ad835cbc3e` |
| 19 | `theorem` | [getElem_flatten](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant1234a378e980be9bc539fe174b94dd480b8f649dae633ce42629e62b1d57b6cf.lean/declarations/getelem-flatten--57a8fe8784e2f3032d6206f2.md) | 192 | `result-track:57a8fe8784e2f3032d6206f2617c7b60d25a552aa0fccd9cd270954d03456001` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
