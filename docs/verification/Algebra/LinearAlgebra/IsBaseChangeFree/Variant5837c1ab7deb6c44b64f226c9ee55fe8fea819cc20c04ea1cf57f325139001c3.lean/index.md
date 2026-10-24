# Verification target: GRWTSK.Algebra.LinearAlgebra.IsBaseChangeFree.Variant5837c1ab7deb6c44b64f226c9ee55fe8fea819cc20c04ea1cf57f325139001c3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38778acd8467042cf5b674481e8475a3faa59876",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/IsBaseChangeFree/Variant5837c1ab7deb6c44b64f226c9ee55fe8fea819cc20c04ea1cf57f325139001c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/IsBaseChangeFree/Variant5837c1ab7deb6c44b64f226c9ee55fe8fea819cc20c04ea1cf57f325139001c3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/IsBaseChangeFree/Variant5837c1ab7deb6c44b64f226c9ee55fe8fea819cc20c04ea1cf57f325139001c3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38778acd8467042cf5b674481e8475a3faa59876`.

Source path: `GRWTSK/Algebra/LinearAlgebra/IsBaseChangeFree/Variant5837c1ab7deb6c44b64f226c9ee55fe8fea819cc20c04ea1cf57f325139001c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/IsBaseChangeFree/Variant5837c1ab7deb6c44b64f226c9ee55fe8fea819cc20c04ea1cf57f325139001c3.lean.json)

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
| 1 | `def` | [basis](../../../../../mathematics/Algebra/LinearAlgebra/IsBaseChangeFree/Variant5837c1ab7deb6c44b64f226c9ee55fe8fea819cc20c04ea1cf57f325139001c3.lean/declarations/basis--4128d6fa0522c5ef0956a019.md) | 34 | `declaration-track:4128d6fa0522c5ef0956a019e0e8bdfc81642c6b91ae7fe5642f0a07e45a5b44` |
| 2 | `theorem` | [basis_apply](../../../../../mathematics/Algebra/LinearAlgebra/IsBaseChangeFree/Variant5837c1ab7deb6c44b64f226c9ee55fe8fea819cc20c04ea1cf57f325139001c3.lean/declarations/basis-apply--08d59c68864edf3fbf3927e0.md) | 39 | `result-track:08d59c68864edf3fbf3927e07286359688529398823f5faa04277640eb0563a7` |
| 3 | `theorem` | [basis_repr_comp_apply](../../../../../mathematics/Algebra/LinearAlgebra/IsBaseChangeFree/Variant5837c1ab7deb6c44b64f226c9ee55fe8fea819cc20c04ea1cf57f325139001c3.lean/declarations/basis-repr-comp-apply--c1d682c21a73992544c39672.md) | 47 | `result-track:c1d682c21a73992544c3967297060849ebdd049e676cc1b27b18f37ae2230051` |
| 4 | `theorem` | [basis_repr_comp](../../../../../mathematics/Algebra/LinearAlgebra/IsBaseChangeFree/Variant5837c1ab7deb6c44b64f226c9ee55fe8fea819cc20c04ea1cf57f325139001c3.lean/declarations/basis-repr-comp--db4a6be8307cf29f058b85e7.md) | 62 | `result-track:db4a6be8307cf29f058b85e7806eae32809c03fa6f18fab5a718fd36be794e37` |
| 5 | `theorem` | [free](../../../../../mathematics/Algebra/LinearAlgebra/IsBaseChangeFree/Variant5837c1ab7deb6c44b64f226c9ee55fe8fea819cc20c04ea1cf57f325139001c3.lean/declarations/free--a1f1b02ff7618b78fce22fdc.md) | 69 | `result-track:a1f1b02ff7618b78fce22fdcb984f1c074ac5dbe7d7240bae5e42706b9eeb819` |
| 6 | `theorem` | [of_basis](../../../../../mathematics/Algebra/LinearAlgebra/IsBaseChangeFree/Variant5837c1ab7deb6c44b64f226c9ee55fe8fea819cc20c04ea1cf57f325139001c3.lean/declarations/of-basis--9875523773a9282e9562f8d1.md) | 89 | `result-track:9875523773a9282e9562f8d1118c7d97d37e6be45e6766f8ad5f9ae17192950d` |
| 7 | `theorem` | [of_fintype_basis](../../../../../mathematics/Algebra/LinearAlgebra/IsBaseChangeFree/Variant5837c1ab7deb6c44b64f226c9ee55fe8fea819cc20c04ea1cf57f325139001c3.lean/declarations/of-fintype-basis--96149fb4d22ab73ceb67baac.md) | 108 | `result-track:96149fb4d22ab73ceb67baac6da451d3243e84347a45dbf65f86bca62a940fd0` |
| 8 | `theorem` | [of_fintype_basis_eq](../../../../../mathematics/Algebra/LinearAlgebra/IsBaseChangeFree/Variant5837c1ab7deb6c44b64f226c9ee55fe8fea819cc20c04ea1cf57f325139001c3.lean/declarations/of-fintype-basis-eq--87a007701c2dc5ebdb412acf.md) | 129 | `result-track:87a007701c2dc5ebdb412acfc1f4d9a9ed61249d52482a2b6518d021218da488` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
