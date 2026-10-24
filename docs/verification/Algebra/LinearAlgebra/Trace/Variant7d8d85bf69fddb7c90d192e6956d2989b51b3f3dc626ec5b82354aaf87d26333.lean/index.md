# Verification target: GRWTSK.Algebra.LinearAlgebra.Trace.Variant7d8d85bf69fddb7c90d192e6956d2989b51b3f3dc626ec5b82354aaf87d26333

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6edf37b5746da28bc86ea65c0b567bab2a9de8bc",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Trace/Variant7d8d85bf69fddb7c90d192e6956d2989b51b3f3dc626ec5b82354aaf87d26333.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7d8d85bf69fddb7c90d192e6956d2989b51b3f3dc626ec5b82354aaf87d26333.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7d8d85bf69fddb7c90d192e6956d2989b51b3f3dc626ec5b82354aaf87d26333.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6edf37b5746da28bc86ea65c0b567bab2a9de8bc`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Trace/Variant7d8d85bf69fddb7c90d192e6956d2989b51b3f3dc626ec5b82354aaf87d26333.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Trace/Variant7d8d85bf69fddb7c90d192e6956d2989b51b3f3dc626ec5b82354aaf87d26333.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Contraction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Charpoly.Coeff` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Prod` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Finite` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Free` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [traceAux](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7d8d85bf69fddb7c90d192e6956d2989b51b3f3dc626ec5b82354aaf87d26333.lean/declarations/traceaux--f327f87119336227129aa713.md) | 41 | `declaration-track:f327f87119336227129aa713de83a66c1ba4db034e3e4a7c7f8f36056da1be14` |
| 2 | `theorem` | [traceAux_def](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7d8d85bf69fddb7c90d192e6956d2989b51b3f3dc626ec5b82354aaf87d26333.lean/declarations/traceaux-def--b0099b27287e3a64df74d535.md) | 45 | `result-track:b0099b27287e3a64df74d535b5545b0e50e80ff7d9518bb2cc9e6c82d20bcf65` |
| 3 | `theorem` | [traceAux_eq](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7d8d85bf69fddb7c90d192e6956d2989b51b3f3dc626ec5b82354aaf87d26333.lean/declarations/traceaux-eq--9fa5dece2ae996e33f125f17.md) | 49 | `result-track:9fa5dece2ae996e33f125f175b0a31d1af8146faadaab9512e59a492dead44c9` |
| 4 | `def` | [trace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7d8d85bf69fddb7c90d192e6956d2989b51b3f3dc626ec5b82354aaf87d26333.lean/declarations/trace--c64ba1487426656ed554d956.md) | 68 | `declaration-track:c64ba1487426656ed554d956c4aabd1249e72eae2dbace4d9061b9c89e5393bb` |
| 5 | `theorem` | [trace_eq_matrix_trace_of_finset](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7d8d85bf69fddb7c90d192e6956d2989b51b3f3dc626ec5b82354aaf87d26333.lean/declarations/trace-eq-matrix-trace-of-finset--9ee523752c0967be99027dd4.md) | 73 | `result-track:9ee523752c0967be99027dd408ea8797f3b4f6484182d227adec1d43adb97ac3` |
| 6 | `theorem` | [trace_eq_matrix_trace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7d8d85bf69fddb7c90d192e6956d2989b51b3f3dc626ec5b82354aaf87d26333.lean/declarations/trace-eq-matrix-trace--cf27c351754312d1df976fca.md) | 80 | `result-track:cf27c351754312d1df976fcad61ae2b1fc0b2f4db557e69e2b0fa3f6b0871ae9` |
| 7 | `theorem` | [trace_mul_comm](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7d8d85bf69fddb7c90d192e6956d2989b51b3f3dc626ec5b82354aaf87d26333.lean/declarations/trace-mul-comm--25356a344ac8bbb671db9ccd.md) | 86 | `result-track:25356a344ac8bbb671db9ccd297f7c81c06e5b866b4a237e8615cfd87c48b2dd` |
| 8 | `lemma` | [trace_mul_cycle](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7d8d85bf69fddb7c90d192e6956d2989b51b3f3dc626ec5b82354aaf87d26333.lean/declarations/trace-mul-cycle--a9da79a0e2b5fa1014b8ef9c.md) | 94 | `result-track:a9da79a0e2b5fa1014b8ef9c7bfd0c3e483f5358d6ae764b83d142bbc9180b89` |
| 9 | `lemma` | [trace_mul_cycle'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7d8d85bf69fddb7c90d192e6956d2989b51b3f3dc626ec5b82354aaf87d26333.lean/declarations/trace-mul-cycle--11059531966f4031ab994671.md) | 98 | `result-track:11059531966f4031ab99467199cbdc5bae6089d3f4f5e1eeb1148af3fb8e62fb` |
| 10 | `theorem` | [trace_conj](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7d8d85bf69fddb7c90d192e6956d2989b51b3f3dc626ec5b82354aaf87d26333.lean/declarations/trace-conj--16fc9b0b9a5fc282a8390cc8.md) | 104 | `result-track:16fc9b0b9a5fc282a8390cc86787a4dcdacd7d8185bc188c66da0004be8c6626` |
| 11 | `lemma` | [trace_lie](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7d8d85bf69fddb7c90d192e6956d2989b51b3f3dc626ec5b82354aaf87d26333.lean/declarations/trace-lie--bb3d746a29d0b85f338e53cd.md) | 110 | `result-track:bb3d746a29d0b85f338e53cd0eb783a3692406b2a4ba5b9fd3e822ca817ebe4a` |
| 12 | `theorem` | [trace_eq_contract_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7d8d85bf69fddb7c90d192e6956d2989b51b3f3dc626ec5b82354aaf87d26333.lean/declarations/trace-eq-contract-of-basis--b2f06155017f65d96b7cc55a.md) | 125 | `result-track:b2f06155017f65d96b7cc55a6c84caee27884eb4736df6989e18a8b68c735308` |
| 13 | `theorem` | [trace_eq_contract_of_basis'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7d8d85bf69fddb7c90d192e6956d2989b51b3f3dc626ec5b82354aaf87d26333.lean/declarations/trace-eq-contract-of-basis--9b4742d362adea0b4cc7921f.md) | 140 | `result-track:9b4742d362adea0b4cc7921fb665468ca671b08e8c0e9ff232b3023432867cea` |
| 14 | `theorem` | [trace_eq_contract](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7d8d85bf69fddb7c90d192e6956d2989b51b3f3dc626ec5b82354aaf87d26333.lean/declarations/trace-eq-contract--40df8fd12f3ad1baeba69141.md) | 151 | `result-track:40df8fd12f3ad1baeba6914109340bd067c2d9b1c9e2d2ff6545a971e1486ee9` |
| 15 | `theorem` | [trace_eq_contract_apply](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7d8d85bf69fddb7c90d192e6956d2989b51b3f3dc626ec5b82354aaf87d26333.lean/declarations/trace-eq-contract-apply--225323a5ffc4a843d6d095e0.md) | 155 | `result-track:225323a5ffc4a843d6d095e03c8823cfdd488dfc8aa9e71f7ea33e88875e27bf` |
| 16 | `theorem` | [trace_eq_contract'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7d8d85bf69fddb7c90d192e6956d2989b51b3f3dc626ec5b82354aaf87d26333.lean/declarations/trace-eq-contract--9bf0f5bce1112cd58b22b7d4.md) | 161 | `result-track:9bf0f5bce1112cd58b22b7d4dbdb94736978736f72429312a1bdbc88faa5c1fd` |
| 17 | `theorem` | [trace_one](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7d8d85bf69fddb7c90d192e6956d2989b51b3f3dc626ec5b82354aaf87d26333.lean/declarations/trace-one--52543f43b8b69d9fa2df414a.md) | 167 | `result-track:52543f43b8b69d9fa2df414aaf3defecdac1d259809afcfe1ad93fc3c7ee90ea` |
| 18 | `theorem` | [trace_id](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7d8d85bf69fddb7c90d192e6956d2989b51b3f3dc626ec5b82354aaf87d26333.lean/declarations/trace-id--5e77019fd7796f625f76b0f5.md) | 176 | `result-track:5e77019fd7796f625f76b0f567540711206e58bba27351553456b6cbe36f67f9` |
| 19 | `theorem` | [trace_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7d8d85bf69fddb7c90d192e6956d2989b51b3f3dc626ec5b82354aaf87d26333.lean/declarations/trace-transpose--43588491f062e00328068351.md) | 179 | `result-track:43588491f062e0032806835173b080d246fa094bc918eefc985240be78859be3` |
| 20 | `theorem` | [trace_prodMap](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7d8d85bf69fddb7c90d192e6956d2989b51b3f3dc626ec5b82354aaf87d26333.lean/declarations/trace-prodmap--3bc2b4a27cc42fd1a8fa1f20.md) | 185 | `result-track:3bc2b4a27cc42fd1a8fa1f20d84b32f8f12072fcb92635c41ea8b46ccee53ad0` |
| 21 | `theorem` | [trace_prodMap'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7d8d85bf69fddb7c90d192e6956d2989b51b3f3dc626ec5b82354aaf87d26333.lean/declarations/trace-prodmap--3eb21d297220e957f26031d2.md) | 205 | `result-track:3eb21d297220e957f26031d255478bde5d4451246d22d3dce8cff7feedc7e854` |
| 22 | `theorem` | [trace_tensorProduct](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7d8d85bf69fddb7c90d192e6956d2989b51b3f3dc626ec5b82354aaf87d26333.lean/declarations/trace-tensorproduct--e35a82705e5d0da17a0e65b9.md) | 216 | `result-track:e35a82705e5d0da17a0e65b902b5d97eebaac0156e7791daa0f5c054fa61ccc8` |
| 23 | `theorem` | [trace_comp_comm](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7d8d85bf69fddb7c90d192e6956d2989b51b3f3dc626ec5b82354aaf87d26333.lean/declarations/trace-comp-comm--3688cb5018f6d2c349394c45.md) | 227 | `result-track:3688cb5018f6d2c349394c45c4ae493accccd9680bdaa60e60a31de1fa9c60db` |
| 24 | `theorem` | [trace_transpose'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7d8d85bf69fddb7c90d192e6956d2989b51b3f3dc626ec5b82354aaf87d26333.lean/declarations/trace-transpose--ce6da60555258b84984e74ef.md) | 241 | `result-track:ce6da60555258b84984e74efad5e7ea2f58bffc8387e0d621f57ecce9f6fbc92` |
| 25 | `theorem` | [trace_tensorProduct'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7d8d85bf69fddb7c90d192e6956d2989b51b3f3dc626ec5b82354aaf87d26333.lean/declarations/trace-tensorproduct--3137540cdf103aa93150d8c8.md) | 245 | `result-track:3137540cdf103aa93150d8c88e89f030d3b8eaa82421964493cc12faf00d7ae7` |
| 26 | `theorem` | [trace_comp_comm'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7d8d85bf69fddb7c90d192e6956d2989b51b3f3dc626ec5b82354aaf87d26333.lean/declarations/trace-comp-comm--52a4133b6d306f49b349a55c.md) | 252 | `result-track:52a4133b6d306f49b349a55c2d16f0830756fda8afe7b7f0ec35913924512539` |
| 27 | `lemma` | [trace_comp_cycle](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7d8d85bf69fddb7c90d192e6956d2989b51b3f3dc626ec5b82354aaf87d26333.lean/declarations/trace-comp-cycle--66cb6b30315a52368ed0085f.md) | 263 | `result-track:66cb6b30315a52368ed0085f33282a697534676c1b159ff5234c4e8111fc3659` |
| 28 | `lemma` | [trace_comp_cycle'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7d8d85bf69fddb7c90d192e6956d2989b51b3f3dc626ec5b82354aaf87d26333.lean/declarations/trace-comp-cycle--052f36836bbf2d49271c5f26.md) | 268 | `result-track:052f36836bbf2d49271c5f26a7bb8a48537a3c29492d6e98f9dc81b8316b3837` |
| 29 | `theorem` | [trace_conj'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7d8d85bf69fddb7c90d192e6956d2989b51b3f3dc626ec5b82354aaf87d26333.lean/declarations/trace-conj--286b12e551b1c4d9a833abc0.md) | 273 | `result-track:286b12e551b1c4d9a833abc0ca0231362487a5c085b792251fe01ae3a27d40b4` |
| 30 | `theorem` | [IsProj.trace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7d8d85bf69fddb7c90d192e6956d2989b51b3f3dc626ec5b82354aaf87d26333.lean/declarations/isproj-trace--d9e3bf7ed81ac25c818154a5.md) | 288 | `result-track:d9e3bf7ed81ac25c818154a5236e5c7eafaaa25a2b3d310f877ba6413f572da2` |
| 31 | `lemma` | [isNilpotent_trace_of_isNilpotent](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7d8d85bf69fddb7c90d192e6956d2989b51b3f3dc626ec5b82354aaf87d26333.lean/declarations/isnilpotent-trace-of-isnilpotent--80213b6ea3188f6f35abe698.md) | 293 | `result-track:80213b6ea3188f6f35abe6981719fa7dc36750e082b51284cafb9fb188536e42` |
| 32 | `lemma` | [trace_comp_eq_mul_of_commute_of_isNilpotent](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7d8d85bf69fddb7c90d192e6956d2989b51b3f3dc626ec5b82354aaf87d26333.lean/declarations/trace-comp-eq-mul-of-commute-of-isnilpotent--b9f99a667e3aaf37663b9d85.md) | 305 | `result-track:b9f99a667e3aaf37663b9d85337e6c844b2b7048cbb22cbd3662e35463eaed79` |
| 33 | `lemma` | [trace_baseChange](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7d8d85bf69fddb7c90d192e6956d2989b51b3f3dc626ec5b82354aaf87d26333.lean/declarations/trace-basechange--3f8e295e1e679fd8f4f3d471.md) | 320 | `result-track:3f8e295e1e679fd8f4f3d471cf4d8d7cb105bbf3d9e800b4dbf86a1bbe74fc52` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
