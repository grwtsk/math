# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuarticVolumePackingEnclosure

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dcdee9eab1594a02ac004fc528042883894ac223",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuarticVolumePackingEnclosure.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuarticVolumePackingEnclosure.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuarticVolumePackingEnclosure.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dcdee9eab1594a02ac004fc528042883894ac223`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuarticVolumePackingEnclosure.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuarticVolumePackingEnclosure.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuarticVolumePackingEndpoint`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuarticVolumePackingEndpoint.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [edgeProductEnclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuarticVolumePackingEnclosure.lean/declarations/edgeproductenclosure--8210f501b95b9e53a811cbe0.md) | 40 | `declaration-track:8210f501b95b9e53a811cbe0531fdb91ce80381c0d50221aa08f6e925a3d2758` |
| 2 | `theorem` | [edgeProductEnclosure_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuarticVolumePackingEnclosure.lean/declarations/edgeproductenclosure-nonnegative--08e5e923147909d11bdf6544.md) | 43 | `result-track:08e5e923147909d11bdf6544ad6f2896842af21ca62218ab3646c53392fb4fd0` |
| 3 | `theorem` | [gramVolume_le_edgeProductEnclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuarticVolumePackingEnclosure.lean/declarations/gramvolume-le-edgeproductenclosure--dbb8a13910ef3fae532df30c.md) | 51 | `result-track:dbb8a13910ef3fae532df30ceee13a8c7df798e38a8048646d70860603f19d63` |
| 4 | `def` | [safeQuarticEdgeProductEnclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuarticVolumePackingEnclosure.lean/declarations/safequarticedgeproductenclosure--77fd128a09b350fe72b22230.md) | 61 | `declaration-track:77fd128a09b350fe72b22230eecc8fb070adbce0f74dca3fdb360b0f9836e16e` |
| 5 | `theorem` | [safeQuarticEdgeProductEnclosure_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuarticVolumePackingEnclosure.lean/declarations/safequarticedgeproductenclosure-nonnegative--3ea4990dacc2fd5397259e9f.md) | 67 | `result-track:3ea4990dacc2fd5397259e9f6de4187e2a25bcb42e8acf4561d13ce3b9098314` |
| 6 | `theorem` | [safeQuarticStructuredPackingValue_le_edgeProductEnclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuarticVolumePackingEnclosure.lean/declarations/safequarticstructuredpackingvalue-le-edgeproductenclosure--be803947e2e7fd17f37d3901.md) | 79 | `result-track:be803947e2e7fd17f37d39018b77f2b4769a36b240736c3bee6bfdb4b4a206e9` |
| 7 | `structure` | [QuarticVolumePackingScaleDataAtZero](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuarticVolumePackingEnclosure.lean/declarations/quarticvolumepackingscaledataatzero--c0b8094f75363ced1958a61b.md) | 97 | `declaration-track:c0b8094f75363ced1958a61ba67432d024d3f4c44ff79470bdf69aaf2cdfaefa` |
| 8 | `def` | [QuarticVolumePackingScaleDataAtZero.toCertificate](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuarticVolumePackingEnclosure.lean/declarations/quarticvolumepackingscaledataatzero-tocertificate--51321d2872ddfc7ada77443b.md) | 118 | `declaration-track:51321d2872ddfc7ada77443b73a099d4fe3c579e0e94398f536816e777009189` |
| 9 | `def` | [QuarticVolumePackingScaleClaim](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuarticVolumePackingEnclosure.lean/declarations/quarticvolumepackingscaleclaim--15661201513e7ebe94ba984d.md) | 134 | `declaration-track:15661201513e7ebe94ba984de803673e857db267561a09cb9c24de1f8fbe08b5` |
| 10 | `theorem` | [riemannHypothesis_of_quarticVolumePackingScale](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuarticVolumePackingEnclosure.lean/declarations/riemannhypothesis-of-quarticvolumepackingscale--47329aa586fe766c0c91b844.md) | 138 | `result-track:47329aa586fe766c0c91b844dc485a5cabff41392deefa891cd8b4fb767d6a15` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
