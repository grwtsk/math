# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.TaoLi2.Variant0eab51ee1408c4180e49c8fbfd3d28e5538079522cdcfad5884cf56e17b3a172

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee0a3235dff71c7a8c2d22b9cbfc63502feb29bf",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/TaoLi2/Variant0eab51ee1408c4180e49c8fbfd3d28e5538079522cdcfad5884cf56e17b3a172.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TaoLi2/Variant0eab51ee1408c4180e49c8fbfd3d28e5538079522cdcfad5884cf56e17b3a172.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TaoLi2/Variant0eab51ee1408c4180e49c8fbfd3d28e5538079522cdcfad5884cf56e17b3a172.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee0a3235dff71c7a8c2d22b9cbfc63502feb29bf`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/TaoLi2/Variant0eab51ee1408c4180e49c8fbfd3d28e5538079522cdcfad5884cf56e17b3a172.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/TaoLi2/Variant0eab51ee1408c4180e49c8fbfd3d28e5538079522cdcfad5884cf56e17b3a172.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.TaylorModel.Log1p` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [log_one_plus_upper](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TaoLi2/Variant0eab51ee1408c4180e49c8fbfd3d28e5538079522cdcfad5884cf56e17b3a172.lean/declarations/log-one-plus-upper--a9a81b1cbcafb8934eae9eb1.md) | 48 | `result-track:a9a81b1cbcafb8934eae9eb1fcd254115e383d58de88e972d78e13b3bdd91443` |
| 2 | `theorem` | [log_one_plus_lower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TaoLi2/Variant0eab51ee1408c4180e49c8fbfd3d28e5538079522cdcfad5884cf56e17b3a172.lean/declarations/log-one-plus-lower--20f7ef041b3d50892759f58f.md) | 59 | `result-track:20f7ef041b3d50892759f58f4d92b76706e68221efd82619af0d3ae9716567a1` |
| 3 | `theorem` | [log_1_5_lower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TaoLi2/Variant0eab51ee1408c4180e49c8fbfd3d28e5538079522cdcfad5884cf56e17b3a172.lean/declarations/log-1-5-lower--6a31ec319d25ab33823c638a.md) | 80 | `result-track:6a31ec319d25ab33823c638a6cb8a2790786e3847c284e458e82418e7defb660` |
| 4 | `theorem` | [log_1_5_upper](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TaoLi2/Variant0eab51ee1408c4180e49c8fbfd3d28e5538079522cdcfad5884cf56e17b3a172.lean/declarations/log-1-5-upper--f40233825baf2cb7e2039af0.md) | 84 | `result-track:f40233825baf2cb7e2039af04c826533d22644f9bea216db79952ebfc821a03f` |
| 5 | `theorem` | [log_1_5_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TaoLi2/Variant0eab51ee1408c4180e49c8fbfd3d28e5538079522cdcfad5884cf56e17b3a172.lean/declarations/log-1-5-bounds--34b8d5d1f3d670723cef030f.md) | 88 | `result-track:34b8d5d1f3d670723cef030f4e029685f875687c690f8f87ad0c62cff07e0000` |
| 6 | `theorem` | [log_0_5_lower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TaoLi2/Variant0eab51ee1408c4180e49c8fbfd3d28e5538079522cdcfad5884cf56e17b3a172.lean/declarations/log-0-5-lower--ff34ce1cd6c23caa703cd9f2.md) | 93 | `result-track:ff34ce1cd6c23caa703cd9f2d0fd28ecd53d1b5872e7d98aa95c2654a78ddedb` |
| 7 | `theorem` | [log_0_5_upper](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TaoLi2/Variant0eab51ee1408c4180e49c8fbfd3d28e5538079522cdcfad5884cf56e17b3a172.lean/declarations/log-0-5-upper--21227c82457da6490d76747d.md) | 97 | `result-track:21227c82457da6490d76747d18c871517f105dca4af8326dac58661dc3bad934` |
| 8 | `theorem` | [log_0_5_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TaoLi2/Variant0eab51ee1408c4180e49c8fbfd3d28e5538079522cdcfad5884cf56e17b3a172.lean/declarations/log-0-5-bounds--8065532986b8eef5ab8c55fe.md) | 101 | `result-track:8065532986b8eef5ab8c55fe8d337a31df9d486f17be4ff26f18ab9b378bf0e2` |
| 9 | `theorem` | [cancellation_at_0_1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TaoLi2/Variant0eab51ee1408c4180e49c8fbfd3d28e5538079522cdcfad5884cf56e17b3a172.lean/declarations/cancellation-at-0-1--513e55325b97ebb19a55634f.md) | 141 | `result-track:513e55325b97ebb19a55634f2872b7514a2120baf002fd1f17a567855df38762` |
| 10 | `theorem` | [symmetric_log_combination_limit](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TaoLi2/Variant0eab51ee1408c4180e49c8fbfd3d28e5538079522cdcfad5884cf56e17b3a172.lean/declarations/symmetric-log-combination-limit--dbe3987795c39fdc2e199aa6.md) | 163 | `result-track:dbe3987795c39fdc2e199aa6218dc6b36239bd91d39fb95ac05338045202602c` |
| 11 | `theorem` | [symmetric_log_alt_form](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TaoLi2/Variant0eab51ee1408c4180e49c8fbfd3d28e5538079522cdcfad5884cf56e17b3a172.lean/declarations/symmetric-log-alt-form--7d079a73f791b040e448baf9.md) | 170 | `result-track:7d079a73f791b040e448baf99594ee5460320c0b17bd16805bfb6a23e8e80768` |
| 12 | `theorem` | [log_lower_on_2_3](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TaoLi2/Variant0eab51ee1408c4180e49c8fbfd3d28e5538079522cdcfad5884cf56e17b3a172.lean/declarations/log-lower-on-2-3--21066eb6a7871c70485d9b3f.md) | 198 | `result-track:21066eb6a7871c70485d9b3f7054bf320f60f69e0a65ef695ff16b7404f531db` |
| 13 | `theorem` | [log_upper_on_2_3](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TaoLi2/Variant0eab51ee1408c4180e49c8fbfd3d28e5538079522cdcfad5884cf56e17b3a172.lean/declarations/log-upper-on-2-3--03604b1d8f8580d000e08728.md) | 202 | `result-track:03604b1d8f8580d000e08728ffc4a6ac61d598882e8055ac7f682a1660e91b54` |
| 14 | `theorem` | [int_2_to_3_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TaoLi2/Variant0eab51ee1408c4180e49c8fbfd3d28e5538079522cdcfad5884cf56e17b3a172.lean/declarations/int-2-to-3-bounds--d16038d443955aea11d0956c.md) | 206 | `result-track:d16038d443955aea11d0956c222d9f74b0fdb256723b7dc9c2ad3dea1fbd2b42` |
| 15 | `theorem` | [symmetric_bound_at_0_3](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TaoLi2/Variant0eab51ee1408c4180e49c8fbfd3d28e5538079522cdcfad5884cf56e17b3a172.lean/declarations/symmetric-bound-at-0-3--5d876160cdc914cd47de126f.md) | 289 | `result-track:5d876160cdc914cd47de126fd68ca23c88278b5ae93ed72dc9dbcef8d356225c` |
| 16 | `theorem` | [symmetric_bound_at_0_49](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TaoLi2/Variant0eab51ee1408c4180e49c8fbfd3d28e5538079522cdcfad5884cf56e17b3a172.lean/declarations/symmetric-bound-at-0-49--f3be5ecdd0770c42138e0fbf.md) | 300 | `result-track:f3be5ecdd0770c42138e0fbfe05fb8bbee1f0aeae7616c343860822d09ae7c2a` |
| 17 | `theorem` | [li2_integral_exists](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TaoLi2/Variant0eab51ee1408c4180e49c8fbfd3d28e5538079522cdcfad5884cf56e17b3a172.lean/declarations/li2-integral-exists--41b606cad3360254ba82aa0b.md) | 328 | `result-track:41b606cad3360254ba82aa0b46f4afe2afc275f92102bfca6f7937912559252a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
