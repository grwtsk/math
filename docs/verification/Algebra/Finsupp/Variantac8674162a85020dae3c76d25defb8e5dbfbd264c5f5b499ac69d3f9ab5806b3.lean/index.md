# Verification target: GRWTSK.Algebra.Finsupp.Variantac8674162a85020dae3c76d25defb8e5dbfbd264c5f5b499ac69d3f9ab5806b3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d334a0b11054857d65b721b7b854b0e98e18754f",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Finsupp/Variantac8674162a85020dae3c76d25defb8e5dbfbd264c5f5b499ac69d3f9ab5806b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Finsupp/Variantac8674162a85020dae3c76d25defb8e5dbfbd264c5f5b499ac69d3f9ab5806b3.lean/index.md) · [Full source](../../../../mathematics/Algebra/Finsupp/Variantac8674162a85020dae3c76d25defb8e5dbfbd264c5f5b499ac69d3f9ab5806b3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d334a0b11054857d65b721b7b854b0e98e18754f`.

Source path: `GRWTSK/Algebra/Finsupp/Variantac8674162a85020dae3c76d25defb8e5dbfbd264c5f5b499ac69d3f9ab5806b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Finsupp/Variantac8674162a85020dae3c76d25defb8e5dbfbd264c5f5b499ac69d3f9ab5806b3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Antidiag.Pi` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finsuppAntidiag](../../../../mathematics/Algebra/Finsupp/Variantac8674162a85020dae3c76d25defb8e5dbfbd264c5f5b499ac69d3f9ab5806b3.lean/declarations/finsuppantidiag--157a17950daf9af23c55a683.md) | 47 | `declaration-track:157a17950daf9af23c55a6831c4832749aeefb5c27aa7d579bf00089398edb71` |
| 2 | `lemma` | [mem_finsuppAntidiag](../../../../mathematics/Algebra/Finsupp/Variantac8674162a85020dae3c76d25defb8e5dbfbd264c5f5b499ac69d3f9ab5806b3.lean/declarations/mem-finsuppantidiag--a3462fa4deaf9b16c2351db2.md) | 51 | `result-track:a3462fa4deaf9b16c2351db2bf5c529de706cef62c1e8976b8ce484cd814adb8` |
| 3 | `lemma` | [mem_finsuppAntidiag'](../../../../mathematics/Algebra/Finsupp/Variantac8674162a85020dae3c76d25defb8e5dbfbd264c5f5b499ac69d3f9ab5806b3.lean/declarations/mem-finsuppantidiag--8236f00ad478a6638bff1e31.md) | 54 | `result-track:8236f00ad478a6638bff1e31265fd5829a67f380b51183bbaaa2622507f88ed3` |
| 4 | `lemma` | [finsuppAntidiag_empty_zero](../../../../mathematics/Algebra/Finsupp/Variantac8674162a85020dae3c76d25defb8e5dbfbd264c5f5b499ac69d3f9ab5806b3.lean/declarations/finsuppantidiag-empty-zero--f84ce91e716785d8a28d09ed.md) | 60 | `result-track:f84ce91e716785d8a28d09ed7c45434b3c9cf6122b4c80c5e9996197d5710fec` |
| 5 | `lemma` | [finsuppAntidiag_empty_of_ne_zero](../../../../mathematics/Algebra/Finsupp/Variantac8674162a85020dae3c76d25defb8e5dbfbd264c5f5b499ac69d3f9ab5806b3.lean/declarations/finsuppantidiag-empty-of-ne-zero--12724e24890b288291c48b10.md) | 63 | `result-track:12724e24890b288291c48b1031ac690024cba6cfd801c2603fd5434827a9ea11` |
| 6 | `lemma` | [finsuppAntidiag_empty](../../../../mathematics/Algebra/Finsupp/Variantac8674162a85020dae3c76d25defb8e5dbfbd264c5f5b499ac69d3f9ab5806b3.lean/declarations/finsuppantidiag-empty--c62d0583e17eaa3a894de841.md) | 67 | `result-track:c62d0583e17eaa3a894de841262e2206b500849f9e7f7641eb066503b258b9ff` |
| 7 | `theorem` | [mem_finsuppAntidiag_insert](../../../../mathematics/Algebra/Finsupp/Variantac8674162a85020dae3c76d25defb8e5dbfbd264c5f5b499ac69d3f9ab5806b3.lean/declarations/mem-finsuppantidiag-insert--d92e67b4ef7f0d8178ad96ab.md) | 70 | `result-track:d92e67b4ef7f0d8178ad96abb4656c783b49f50bedba0e03df4b1396529920bc` |
| 8 | `theorem` | [finsuppAntidiag_insert](../../../../mathematics/Algebra/Finsupp/Variantac8674162a85020dae3c76d25defb8e5dbfbd264c5f5b499ac69d3f9ab5806b3.lean/declarations/finsuppantidiag-insert--4484e40b5eeff381bba1a7f2.md) | 93 | `result-track:4484e40b5eeff381bba1a7f27265c4bf535c610a59501426f0634e316411174f` |
| 9 | `lemma` | [mapRange_finsuppAntidiag_subset](../../../../mathematics/Algebra/Finsupp/Variantac8674162a85020dae3c76d25defb8e5dbfbd264c5f5b499ac69d3f9ab5806b3.lean/declarations/maprange-finsuppantidiag-subset--d47ced3faabc91e6cb683a6d.md) | 116 | `result-track:d47ced3faabc91e6cb683a6d0e877ea12876bb6e7aa65cb1287bb95eb3f3a0ab` |
| 10 | `lemma` | [mapRange_finsuppAntidiag_eq](../../../../mathematics/Algebra/Finsupp/Variantac8674162a85020dae3c76d25defb8e5dbfbd264c5f5b499ac69d3f9ab5806b3.lean/declarations/maprange-finsuppantidiag-eq--5c54541dd5b93bc1a7709823.md) | 127 | `result-track:5c54541dd5b93bc1a7709823a0926346f29a847106343705d5a306d28939a795` |
| 11 | `lemma` | [finsuppAntidiag_zero](../../../../mathematics/Algebra/Finsupp/Variantac8674162a85020dae3c76d25defb8e5dbfbd264c5f5b499ac69d3f9ab5806b3.lean/declarations/finsuppantidiag-zero--a3c0da49bf8206e664312eee.md) | 149 | `result-track:a3c0da49bf8206e664312eee0ae7540fdd550a5a4d255bf963093f2d45cd40bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
