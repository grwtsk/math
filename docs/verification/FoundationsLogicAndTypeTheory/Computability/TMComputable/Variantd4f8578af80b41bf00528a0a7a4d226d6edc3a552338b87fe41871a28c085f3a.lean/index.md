# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Computability.TMComputable.Variantd4f8578af80b41bf00528a0a7a4d226d6edc3a552338b87fe41871a28c085f3a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "75e0b611a992986ee8abc6a43e931c3d756138e4",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantd4f8578af80b41bf00528a0a7a4d226d6edc3a552338b87fe41871a28c085f3a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantd4f8578af80b41bf00528a0a7a4d226d6edc3a552338b87fe41871a28c085f3a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantd4f8578af80b41bf00528a0a7a4d226d6edc3a552338b87fe41871a28c085f3a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `75e0b611a992986ee8abc6a43e931c3d756138e4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantd4f8578af80b41bf00528a0a7a4d226d6edc3a552338b87fe41871a28c085f3a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantd4f8578af80b41bf00528a0a7a4d226d6edc3a552338b87fe41871a28c085f3a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Computability.Encoding` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Computability.TuringMachine` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Eval` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FinTM2](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantd4f8578af80b41bf00528a0a7a4d226d6edc3a552338b87fe41871a28c085f3a.lean/declarations/fintm2--fc3e989dd408902c7ffcbb6d.md) | 53 | `declaration-track:fc3e989dd408902c7ffcbb6d8d3acfb453c0f5da98eb6aeed66660f9369f1fa0` |
| 2 | `instance` | [decidableEqK](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantd4f8578af80b41bf00528a0a7a4d226d6edc3a552338b87fe41871a28c085f3a.lean/declarations/decidableeqk--dc1d47c8f1ce43f3eeb1402e.md) | 70 | `declaration-track:dc1d47c8f1ce43f3eeb1402e12154b24fd320b4e5afc6fea77b6a49d57673e79` |
| 3 | `instance` | [inhabitedσ](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantd4f8578af80b41bf00528a0a7a4d226d6edc3a552338b87fe41871a28c085f3a.lean/declarations/inhabited--f44e00c642a82aec819f96e4.md) | 74 | `declaration-track:f44e00c642a82aec819f96e46ed5841b5969e120f9ac5162fde6b6b0a81b5a16` |
| 4 | `def` | [Stmt](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantd4f8578af80b41bf00528a0a7a4d226d6edc3a552338b87fe41871a28c085f3a.lean/declarations/stmt--02a5818926a701d1507273ec.md) | 79 | `declaration-track:02a5818926a701d1507273ec97a5da1158852f1cf56904b798211867db3d157f` |
| 5 | `instance` | [inhabitedStmt](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantd4f8578af80b41bf00528a0a7a4d226d6edc3a552338b87fe41871a28c085f3a.lean/declarations/inhabitedstmt--b581e7a2cf4cb60b64ec68f8.md) | 84 | `declaration-track:b581e7a2cf4cb60b64ec68f8a307d644678021806e6d1bd16fcfbed99bb06551` |
| 6 | `def` | [Cfg](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantd4f8578af80b41bf00528a0a7a4d226d6edc3a552338b87fe41871a28c085f3a.lean/declarations/cfg--5ce720c0d62908f9bc56153e.md) | 89 | `declaration-track:5ce720c0d62908f9bc56153e1506c0101f578ff0d9ca133e0c822893af7dc250` |
| 7 | `instance` | [inhabitedCfg](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantd4f8578af80b41bf00528a0a7a4d226d6edc3a552338b87fe41871a28c085f3a.lean/declarations/inhabitedcfg--5a0846aadefe52b5895bac2a.md) | 93 | `declaration-track:5a0846aadefe52b5895bac2ab51b6ec6bec7c8652a2183a599fd431e75c08920` |
| 8 | `def` | [step](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantd4f8578af80b41bf00528a0a7a4d226d6edc3a552338b87fe41871a28c085f3a.lean/declarations/step--ddbb1897f29353c5dfc23b69.md) | 99 | `declaration-track:ddbb1897f29353c5dfc23b69b642e8f7e7355d9d335295059b627a75815d0cc7` |
| 9 | `def` | [initList](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantd4f8578af80b41bf00528a0a7a4d226d6edc3a552338b87fe41871a28c085f3a.lean/declarations/initlist--a6152e85dbd07e6e2ab27aec.md) | 108 | `declaration-track:a6152e85dbd07e6e2ab27aec077814de5c6a8dbeff5a688fa9a03f9f9b607c2b` |
| 10 | `def` | [haltList](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantd4f8578af80b41bf00528a0a7a4d226d6edc3a552338b87fe41871a28c085f3a.lean/declarations/haltlist--7c84543fa2b38ab34fdfc0be.md) | 117 | `declaration-track:7c84543fa2b38ab34fdfc0bed7500ec2e978d6140b1d46e78958cf3c8fde44c8` |
| 11 | `structure` | [EvalsTo](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantd4f8578af80b41bf00528a0a7a4d226d6edc3a552338b87fe41871a28c085f3a.lean/declarations/evalsto--d52f0144a74417bc9e32c72f.md) | 127 | `declaration-track:d52f0144a74417bc9e32c72f289ff5c0c368f3fa9c6e302b49660ab3ae05f076` |
| 12 | `structure` | [EvalsToInTime](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantd4f8578af80b41bf00528a0a7a4d226d6edc3a552338b87fe41871a28c085f3a.lean/declarations/evalstointime--43528103817df332ad84dfee.md) | 137 | `declaration-track:43528103817df332ad84dfee6ca93ff19298d8d3e62eb4b7b0e7d7d9474646ce` |
| 13 | `def` | [EvalsTo.refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantd4f8578af80b41bf00528a0a7a4d226d6edc3a552338b87fe41871a28c085f3a.lean/declarations/evalsto-refl--86c5c72955bc2e58e8775fdc.md) | 144 | `declaration-track:86c5c72955bc2e58e8775fdcbae1bcf0bede0515d25cd061ae1df86b2bf7e0de` |
| 14 | `def` | [EvalsTo.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantd4f8578af80b41bf00528a0a7a4d226d6edc3a552338b87fe41871a28c085f3a.lean/declarations/evalsto-trans--7a3f7c07441d70578d96f2ad.md) | 150 | `declaration-track:7a3f7c07441d70578d96f2aded7796d88fe6d17d66f313e2bf8e18dd17e92ec1` |
| 15 | `def` | [EvalsToInTime.refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantd4f8578af80b41bf00528a0a7a4d226d6edc3a552338b87fe41871a28c085f3a.lean/declarations/evalstointime-refl--a141f46a1ecaf8da18dffc06.md) | 157 | `declaration-track:a141f46a1ecaf8da18dffc06e16752b8fd04ee28163b241598bf97d24cf23280` |
| 16 | `def` | [EvalsToInTime.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantd4f8578af80b41bf00528a0a7a4d226d6edc3a552338b87fe41871a28c085f3a.lean/declarations/evalstointime-trans--715f19b2381ef047719061b1.md) | 163 | `declaration-track:715f19b2381ef047719061b1684a6dd06ee3e5f6988a8505bfbae6ff162af74e` |
| 17 | `def` | [TM2Outputs](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantd4f8578af80b41bf00528a0a7a4d226d6edc3a552338b87fe41871a28c085f3a.lean/declarations/tm2outputs--f2981660575fffdc4efe82cb.md) | 170 | `declaration-track:f2981660575fffdc4efe82cb6235609cbb212b09dcb11fe47325f546eafdab04` |
| 18 | `def` | [TM2OutputsInTime](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantd4f8578af80b41bf00528a0a7a4d226d6edc3a552338b87fe41871a28c085f3a.lean/declarations/tm2outputsintime--25bc4972d0aae6f8f2ba1907.md) | 175 | `declaration-track:25bc4972d0aae6f8f2ba190706b3a2cd375fc611d9e97938ab7dd925cfe4bc6a` |
| 19 | `def` | [TM2OutputsInTime.toTM2Outputs](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantd4f8578af80b41bf00528a0a7a4d226d6edc3a552338b87fe41871a28c085f3a.lean/declarations/tm2outputsintime-totm2outputs--87f16272cebdb47f29f4ec86.md) | 181 | `declaration-track:87f16272cebdb47f29f4ec8628e21b06f70eae9c18423a60db0c418bc5092e18` |
| 20 | `structure` | [TM2ComputableAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantd4f8578af80b41bf00528a0a7a4d226d6edc3a552338b87fe41871a28c085f3a.lean/declarations/tm2computableaux--8f5fb0dfb7bac012f21ef070.md) | 188 | `declaration-track:8f5fb0dfb7bac012f21ef07052f3459f6eb232b26b4debc83ad05f8fce703336` |
| 21 | `structure` | [TM2Computable](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantd4f8578af80b41bf00528a0a7a4d226d6edc3a552338b87fe41871a28c085f3a.lean/declarations/tm2computable--78ff9cf052d53925e8bb4f66.md) | 195 | `declaration-track:78ff9cf052d53925e8bb4f66ffcf227d4ab382e00ceff26e8f40bd91286c3216` |
| 22 | `structure` | [TM2ComputableInTime](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantd4f8578af80b41bf00528a0a7a4d226d6edc3a552338b87fe41871a28c085f3a.lean/declarations/tm2computableintime--caaa5c308a0bd5f4203a23c8.md) | 204 | `declaration-track:caaa5c308a0bd5f4203a23c80ad3e536711fcff3b06df6f9d97e12a7d0d82697` |
| 23 | `structure` | [TM2ComputableInPolyTime](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantd4f8578af80b41bf00528a0a7a4d226d6edc3a552338b87fe41871a28c085f3a.lean/declarations/tm2computableinpolytime--1f85e17f92177fb52c6fe966.md) | 216 | `declaration-track:1f85e17f92177fb52c6fe9660e0fe7fbd37fd3835343df78e834efb442750b1d` |
| 24 | `def` | [TM2ComputableInTime.toTM2Computable](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantd4f8578af80b41bf00528a0a7a4d226d6edc3a552338b87fe41871a28c085f3a.lean/declarations/tm2computableintime-totm2computable--f124e2eff99350cdd7244424.md) | 227 | `declaration-track:f124e2eff99350cdd7244424ca17ab39d9802715b55aada4d0874e0ed1cd661b` |
| 25 | `def` | [TM2ComputableInPolyTime.toTM2ComputableInTime](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantd4f8578af80b41bf00528a0a7a4d226d6edc3a552338b87fe41871a28c085f3a.lean/declarations/tm2computableinpolytime-totm2computableintime--7cb36b2702e44e0e30d16114.md) | 233 | `declaration-track:7cb36b2702e44e0e30d16114fbdf6a3d1686ea7349a05671fda36c8da6dbbcbf` |
| 26 | `def` | [idComputer](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantd4f8578af80b41bf00528a0a7a4d226d6edc3a552338b87fe41871a28c085f3a.lean/declarations/idcomputer--f0d46ccd47903d1191933d7a.md) | 242 | `declaration-track:f0d46ccd47903d1191933d7afbfa932c60a16340b6126c82e9e3ffc059029dbc` |
| 27 | `instance` | [inhabitedFinTM2](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantd4f8578af80b41bf00528a0a7a4d226d6edc3a552338b87fe41871a28c085f3a.lean/declarations/inhabitedfintm2--8bd8226b4ac241ebfcf8720f.md) | 255 | `declaration-track:8bd8226b4ac241ebfcf8720f91580a4c0cbb1b254e66b26a3a7c74cc1f1ff48a` |
| 28 | `def` | [idComputableInPolyTime](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantd4f8578af80b41bf00528a0a7a4d226d6edc3a552338b87fe41871a28c085f3a.lean/declarations/idcomputableinpolytime--35e9ab68959ea77d8b3da9e2.md) | 262 | `declaration-track:35e9ab68959ea77d8b3da9e2dce3e66b2ff1b2793b770c575e4bfaae9690ed57` |
| 29 | `instance` | [inhabitedTM2ComputableInPolyTime](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantd4f8578af80b41bf00528a0a7a4d226d6edc3a552338b87fe41871a28c085f3a.lean/declarations/inhabitedtm2computableinpolytime--958ab496a9a84b2e47e5c7b0.md) | 274 | `declaration-track:958ab496a9a84b2e47e5c7b02e21e085c573c677169e395deb40e4dd2b316ab3` |
| 30 | `instance` | [inhabitedTM2OutputsInTime](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantd4f8578af80b41bf00528a0a7a4d226d6edc3a552338b87fe41871a28c085f3a.lean/declarations/inhabitedtm2outputsintime--84a8b8485771492f80fd0f52.md) | 279 | `declaration-track:84a8b8485771492f80fd0f5229c92dadfc58f42394dda1496c3f5eaf968cc88a` |
| 31 | `instance` | [inhabitedTM2Outputs](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantd4f8578af80b41bf00528a0a7a4d226d6edc3a552338b87fe41871a28c085f3a.lean/declarations/inhabitedtm2outputs--7a09b3fd68ba9a478878cd8c.md) | 286 | `declaration-track:7a09b3fd68ba9a478878cd8cb6cc448c20661f09de489f02616660511d5219d6` |
| 32 | `instance` | [inhabitedEvalsToInTime](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantd4f8578af80b41bf00528a0a7a4d226d6edc3a552338b87fe41871a28c085f3a.lean/declarations/inhabitedevalstointime--a6427c2205dcc1aa4b051517.md) | 293 | `declaration-track:a6427c2205dcc1aa4b05151753e66d1ae588dceff7eff01ed9b5e5e5ea22690b` |
| 33 | `instance` | [inhabitedTM2EvalsTo](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantd4f8578af80b41bf00528a0a7a4d226d6edc3a552338b87fe41871a28c085f3a.lean/declarations/inhabitedtm2evalsto--f5a5e984004a1865e4b93909.md) | 298 | `declaration-track:f5a5e984004a1865e4b9390929ad4c68babb4c46e107c119ba468583273c22e9` |
| 34 | `def` | [idComputableInTime](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantd4f8578af80b41bf00528a0a7a4d226d6edc3a552338b87fe41871a28c085f3a.lean/declarations/idcomputableintime--62f4f94c64cf8e05b4d9bddd.md) | 303 | `declaration-track:62f4f94c64cf8e05b4d9bddde36df56fdd9d310b608ccbab9405dd799879cb5f` |
| 35 | `instance` | [inhabitedTM2ComputableInTime](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantd4f8578af80b41bf00528a0a7a4d226d6edc3a552338b87fe41871a28c085f3a.lean/declarations/inhabitedtm2computableintime--b3f25530362112e660d11b60.md) | 307 | `declaration-track:b3f25530362112e660d11b608bbc801b8e2353f47de142d6b149cb4098f52d61` |
| 36 | `def` | [idComputable](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantd4f8578af80b41bf00528a0a7a4d226d6edc3a552338b87fe41871a28c085f3a.lean/declarations/idcomputable--38ee868bfd9b35c326dbc9cf.md) | 313 | `declaration-track:38ee868bfd9b35c326dbc9cf854b9de8bd829192dbc1225e9ddf22480198c1ac` |
| 37 | `instance` | [inhabitedTM2Computable](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantd4f8578af80b41bf00528a0a7a4d226d6edc3a552338b87fe41871a28c085f3a.lean/declarations/inhabitedtm2computable--1acfd9abe61eb2b85c8142f2.md) | 317 | `declaration-track:1acfd9abe61eb2b85c8142f2a4656838495625897548c924da43872611d2ea04` |
| 38 | `instance` | [inhabitedTM2ComputableAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantd4f8578af80b41bf00528a0a7a4d226d6edc3a552338b87fe41871a28c085f3a.lean/declarations/inhabitedtm2computableaux--193e501f5c1c065d3893e03d.md) | 322 | `declaration-track:193e501f5c1c065d3893e03d97a677496594926d3a056f5a9cfcf9ed5e663f57` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
