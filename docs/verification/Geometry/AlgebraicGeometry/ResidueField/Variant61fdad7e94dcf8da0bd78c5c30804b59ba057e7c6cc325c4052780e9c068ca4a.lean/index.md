# Verification target: GRWTSK.Geometry.AlgebraicGeometry.ResidueField.Variant61fdad7e94dcf8da0bd78c5c30804b59ba057e7c6cc325c4052780e9c068ca4a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ecfa49005f5a462707e271562d852ae0c81249a8",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/ResidueField/Variant61fdad7e94dcf8da0bd78c5c30804b59ba057e7c6cc325c4052780e9c068ca4a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant61fdad7e94dcf8da0bd78c5c30804b59ba057e7c6cc325c4052780e9c068ca4a.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant61fdad7e94dcf8da0bd78c5c30804b59ba057e7c6cc325c4052780e9c068ca4a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ecfa49005f5a462707e271562d852ae0c81249a8`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/ResidueField/Variant61fdad7e94dcf8da0bd78c5c30804b59ba057e7c6cc325c4052780e9c068ca4a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/ResidueField/Variant61fdad7e94dcf8da0bd78c5c30804b59ba057e7c6cc325c4052780e9c068ca4a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.RingedSpace.LocallyRingedSpace` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.ResidueField.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [residueField](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant61fdad7e94dcf8da0bd78c5c30804b59ba057e7c6cc325c4052780e9c068ca4a.lean/declarations/residuefield--c336bbf5c0c5c63cc165739d.md) | 49 | `declaration-track:c336bbf5c0c5c63cc165739d7bd38b668c5aa13bcf33d9609d65d3e189bf2dee` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant61fdad7e94dcf8da0bd78c5c30804b59ba057e7c6cc325c4052780e9c068ca4a.lean/declarations/instance--a909cd38319d81f5ea73981a.md) | 52 | `declaration-track:a909cd38319d81f5ea73981ac2c37c95f44d16a3bc5de5b0221483ebcf7c2df2` |
| 3 | `def` | [evaluation](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant61fdad7e94dcf8da0bd78c5c30804b59ba057e7c6cc325c4052780e9c068ca4a.lean/declarations/evaluation--6bc91041c03002b391b1fc91.md) | 62 | `declaration-track:6bc91041c03002b391b1fc9187da114b69342a0ab2295209e179eeb243f4ccd0` |
| 4 | `def` | [Γevaluation](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant61fdad7e94dcf8da0bd78c5c30804b59ba057e7c6cc325c4052780e9c068ca4a.lean/declarations/evaluation--e7c810b2ea2dbf91e3aeefca.md) | 68 | `declaration-track:e7c810b2ea2dbf91e3aeefca999624e826929a98450f0a45c34dbf3a3c1f0ece` |
| 5 | `lemma` | [evaluation_eq_zero_iff_notMem_basicOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant61fdad7e94dcf8da0bd78c5c30804b59ba057e7c6cc325c4052780e9c068ca4a.lean/declarations/evaluation-eq-zero-iff-notmem-basicopen--41476618c5552b9d21bc3f1f.md) | 72 | `result-track:41476618c5552b9d21bc3f1f05c29ecce65c84dd09ed2ea38e093e29d2d8af41` |
| 6 | `lemma` | [evaluation_ne_zero_iff_mem_basicOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant61fdad7e94dcf8da0bd78c5c30804b59ba057e7c6cc325c4052780e9c068ca4a.lean/declarations/evaluation-ne-zero-iff-mem-basicopen--dabd0ceddec848eacb579eeb.md) | 80 | `result-track:dabd0ceddec848eacb579eebe8cabb35511687d8ca1b739ff776cb84684211ef` |
| 7 | `lemma` | [basicOpen_eq_bot_iff_forall_evaluation_eq_zero](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant61fdad7e94dcf8da0bd78c5c30804b59ba057e7c6cc325c4052780e9c068ca4a.lean/declarations/basicopen-eq-bot-iff-forall-evaluation-eq-zero--8bf3638ac7424518f1fbff0f.md) | 84 | `result-track:8bf3638ac7424518f1fbff0f4bf974e62feb649fb5d61094dbb2791ddac07d8e` |
| 8 | `lemma` | [Γevaluation_eq_zero_iff_notMem_basicOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant61fdad7e94dcf8da0bd78c5c30804b59ba057e7c6cc325c4052780e9c068ca4a.lean/declarations/evaluation-eq-zero-iff-notmem-basicopen--d1c6dbfa2d1e0a0691e9184c.md) | 91 | `result-track:d1c6dbfa2d1e0a0691e9184cca50dc571f5259910aff7546eb04f9c0ff28a72b` |
| 9 | `lemma` | [Γevaluation_ne_zero_iff_mem_basicOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant61fdad7e94dcf8da0bd78c5c30804b59ba057e7c6cc325c4052780e9c068ca4a.lean/declarations/evaluation-ne-zero-iff-mem-basicopen--084ef2c5498bd37106afbc29.md) | 98 | `result-track:084ef2c5498bd37106afbc29e4bdaa1d41539d42ee020cd9f2f7ba56455a1668` |
| 10 | `def` | [residueFieldMap](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant61fdad7e94dcf8da0bd78c5c30804b59ba057e7c6cc325c4052780e9c068ca4a.lean/declarations/residuefieldmap--50a577d4cdc6ddb0410e859e.md) | 106 | `declaration-track:50a577d4cdc6ddb0410e859ecc69cdafce469acd46f34115e8e965c384f1d066` |
| 11 | `lemma` | [residue_comp_residueFieldMap_eq_stalkMap_comp_residue](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant61fdad7e94dcf8da0bd78c5c30804b59ba057e7c6cc325c4052780e9c068ca4a.lean/declarations/residue-comp-residuefieldmap-eq-stalkmap-comp-residue--66047d01a991cbdf5e55a63d.md) | 109 | `result-track:66047d01a991cbdf5e55a63d4fb6f6c0070036d52394f8b5084b57421e08935f` |
| 12 | `lemma` | [residueFieldMap_id](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant61fdad7e94dcf8da0bd78c5c30804b59ba057e7c6cc325c4052780e9c068ca4a.lean/declarations/residuefieldmap-id--c1c3f3b38c9ea5bd32f5a119.md) | 117 | `result-track:c1c3f3b38c9ea5bd32f5a1192e339d1bd167a4cd07787371cf31f2f926c1ff91` |
| 13 | `lemma` | [residueFieldMap_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant61fdad7e94dcf8da0bd78c5c30804b59ba057e7c6cc325c4052780e9c068ca4a.lean/declarations/residuefieldmap-comp--f010eb121e3c1e7b5c812ac9.md) | 124 | `result-track:f010eb121e3c1e7b5c812ac9df4ef26ab940ebfc4959097c404a50521e93b7bc` |
| 14 | `lemma` | [evaluation_naturality](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant61fdad7e94dcf8da0bd78c5c30804b59ba057e7c6cc325c4052780e9c068ca4a.lean/declarations/evaluation-naturality--527988f53bb2c5d90aad928d.md) | 133 | `result-track:527988f53bb2c5d90aad928d0caa8a74eef0f5c31444d37adb494f4402c1ee89` |
| 15 | `lemma` | [evaluation_naturality_apply](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant61fdad7e94dcf8da0bd78c5c30804b59ba057e7c6cc325c4052780e9c068ca4a.lean/declarations/evaluation-naturality-apply--a703a1e61578f51088d41507.md) | 145 | `result-track:a703a1e61578f51088d415073234dc2884197217cff41f60cd9978ddb169ee27` |
| 16 | `lemma` | [Γevaluation_naturality](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant61fdad7e94dcf8da0bd78c5c30804b59ba057e7c6cc325c4052780e9c068ca4a.lean/declarations/evaluation-naturality--c1fb28fc35d22787c98f6954.md) | 153 | `result-track:c1fb28fc35d22787c98f6954c7fe6ceed8cddcdf8d1abc839bedb1a7f7abb432` |
| 17 | `lemma` | [Γevaluation_naturality_apply](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant61fdad7e94dcf8da0bd78c5c30804b59ba057e7c6cc325c4052780e9c068ca4a.lean/declarations/evaluation-naturality-apply--f7ad2bffe85aa53e0a2e0fda.md) | 158 | `result-track:f7ad2bffe85aa53e0a2e0fda15c6e0a44ad6040938b8b929a72416047e753e8b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
