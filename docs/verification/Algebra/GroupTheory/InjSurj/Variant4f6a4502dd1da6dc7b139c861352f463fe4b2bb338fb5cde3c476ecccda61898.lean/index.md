# Verification target: GRWTSK.Algebra.GroupTheory.InjSurj.Variant4f6a4502dd1da6dc7b139c861352f463fe4b2bb338fb5cde3c476ecccda61898

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08c6cd2856e08d46dfc0c93e17a66fe8f5bbe370",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/InjSurj/Variant4f6a4502dd1da6dc7b139c861352f463fe4b2bb338fb5cde3c476ecccda61898.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant4f6a4502dd1da6dc7b139c861352f463fe4b2bb338fb5cde3c476ecccda61898.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant4f6a4502dd1da6dc7b139c861352f463fe4b2bb338fb5cde3c476ecccda61898.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08c6cd2856e08d46dfc0c93e17a66fe8f5bbe370`.

Source path: `GRWTSK/Algebra/GroupTheory/InjSurj/Variant4f6a4502dd1da6dc7b139c861352f463fe4b2bb338fb5cde3c476ecccda61898.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/InjSurj/Variant4f6a4502dd1da6dc7b139c861352f463fe4b2bb338fb5cde3c476ecccda61898.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.InjSurj` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.NeZero` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Function.Injective.mulZeroClass](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant4f6a4502dd1da6dc7b139c861352f463fe4b2bb338fb5cde3c476ecccda61898.lean/declarations/function-injective-mulzeroclass--6fa7a90aa10601fc454c4390.md) | 26 | `declaration-track:6fa7a90aa10601fc454c43900c54a01b70c64050d6a2784f972a804412ae7ced` |
| 2 | `abbrev` | [Function.Surjective.mulZeroClass](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant4f6a4502dd1da6dc7b139c861352f463fe4b2bb338fb5cde3c476ecccda61898.lean/declarations/function-surjective-mulzeroclass--6aad4dc4a30200309f9bf0a0.md) | 36 | `declaration-track:6aad4dc4a30200309f9bf0a018628e61cca692426032692506b8b13a670f5387` |
| 3 | `theorem` | [Function.Injective.noZeroDivisors](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant4f6a4502dd1da6dc7b139c861352f463fe4b2bb338fb5cde3c476ecccda61898.lean/declarations/function-injective-nozerodivisors--d21979aa0ba7fccdab912277.md) | 54 | `result-track:d21979aa0ba7fccdab912277250be3c81b5703b3a65cc2e8c85b53e3a4d64bd4` |
| 4 | `theorem` | [Function.Injective.isLeftCancelMulZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant4f6a4502dd1da6dc7b139c861352f463fe4b2bb338fb5cde3c476ecccda61898.lean/declarations/function-injective-isleftcancelmulzero--6fccc35be7e26f63ab45bc56.md) | 60 | `result-track:6fccc35be7e26f63ab45bc56af4e79046367d8dca15a99db39412ef51e67b4bf` |
| 5 | `theorem` | [Function.Injective.isRightCancelMulZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant4f6a4502dd1da6dc7b139c861352f463fe4b2bb338fb5cde3c476ecccda61898.lean/declarations/function-injective-isrightcancelmulzero--9d0d57d3a2f4b83255bd1a1d.md) | 67 | `result-track:9d0d57d3a2f4b83255bd1a1dbe2b206cb881bf02893422a874f25e667b1b357f` |
| 6 | `theorem` | [Function.Injective.isCancelMulZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant4f6a4502dd1da6dc7b139c861352f463fe4b2bb338fb5cde3c476ecccda61898.lean/declarations/function-injective-iscancelmulzero--fb0d2e68be41bf6d12f06c66.md) | 74 | `result-track:fb0d2e68be41bf6d12f06c66274a44486d4b4870698d79dd20d35a9d2394afca` |
| 7 | `abbrev` | [Function.Injective.mulZeroOneClass](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant4f6a4502dd1da6dc7b139c861352f463fe4b2bb338fb5cde3c476ecccda61898.lean/declarations/function-injective-mulzerooneclass--f96a5d6eb580aad07e8d4cce.md) | 87 | `declaration-track:f96a5d6eb580aad07e8d4cce9f916574c3a56348935fde57f8f9b72d3ea409c9` |
| 8 | `abbrev` | [Function.Surjective.mulZeroOneClass](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant4f6a4502dd1da6dc7b139c861352f463fe4b2bb338fb5cde3c476ecccda61898.lean/declarations/function-surjective-mulzerooneclass--0f4cfa34f57510eb177a3172.md) | 94 | `declaration-track:0f4cfa34f57510eb177a3172f54a06aab81a631c90ff261342c0103657ded4a8` |
| 9 | `abbrev` | [Function.Injective.semigroupWithZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant4f6a4502dd1da6dc7b139c861352f463fe4b2bb338fb5cde3c476ecccda61898.lean/declarations/function-injective-semigroupwithzero--5342b8e5645232000e883c00.md) | 105 | `declaration-track:5342b8e5645232000e883c000e4280a38a95aa569a7f2b5d00aec5ade8dd2d46` |
| 10 | `abbrev` | [Function.Surjective.semigroupWithZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant4f6a4502dd1da6dc7b139c861352f463fe4b2bb338fb5cde3c476ecccda61898.lean/declarations/function-surjective-semigroupwithzero--18a5073474febfa487554c5c.md) | 112 | `declaration-track:18a5073474febfa487554c5c242634bdba2deaf693f56667bd4ab3aea33ebbd5` |
| 11 | `abbrev` | [Function.Injective.monoidWithZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant4f6a4502dd1da6dc7b139c861352f463fe4b2bb338fb5cde3c476ecccda61898.lean/declarations/function-injective-monoidwithzero--794b14f5ea8d5b69becab5a5.md) | 123 | `declaration-track:794b14f5ea8d5b69becab5a5b635cee3b1e444709f7517d7eb8b5a981e8e2995` |
| 12 | `abbrev` | [Function.Surjective.monoidWithZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant4f6a4502dd1da6dc7b139c861352f463fe4b2bb338fb5cde3c476ecccda61898.lean/declarations/function-surjective-monoidwithzero--bedf57aa9329f7799b3bf43a.md) | 131 | `declaration-track:bedf57aa9329f7799b3bf43a51b49fb617e63ae2c43ad793b50dba7f6790c470` |
| 13 | `abbrev` | [Function.Injective.commMonoidWithZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant4f6a4502dd1da6dc7b139c861352f463fe4b2bb338fb5cde3c476ecccda61898.lean/declarations/function-injective-commmonoidwithzero--2ddba3555347d530f302a40b.md) | 139 | `declaration-track:2ddba3555347d530f302a40b94b4cae1a189300454a4681d3ea81841951a4dd7` |
| 14 | `abbrev` | [Function.Surjective.commMonoidWithZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant4f6a4502dd1da6dc7b139c861352f463fe4b2bb338fb5cde3c476ecccda61898.lean/declarations/function-surjective-commmonoidwithzero--b8b567281009a0ce0c2449a0.md) | 147 | `declaration-track:b8b567281009a0ce0c2449a045eb6dc2205485c56575031811947e88808da4e9` |
| 15 | `abbrev` | [Function.Injective.cancelMonoidWithZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant4f6a4502dd1da6dc7b139c861352f463fe4b2bb338fb5cde3c476ecccda61898.lean/declarations/function-injective-cancelmonoidwithzero--fbdc1e9b39f2c7b099d377d4.md) | 161 | `declaration-track:fbdc1e9b39f2c7b099d377d4dc713690bf078fdb68e9563057125a7767fecbe1` |
| 16 | `abbrev` | [Function.Injective.cancelCommMonoidWithZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant4f6a4502dd1da6dc7b139c861352f463fe4b2bb338fb5cde3c476ecccda61898.lean/declarations/function-injective-cancelcommmonoidwithzero--69842f9e5457e7764730e142.md) | 179 | `declaration-track:69842f9e5457e7764730e1425b2c720d7dce117eb283fb6d8ed79c4500dfb22b` |
| 17 | `abbrev` | [Function.Injective.groupWithZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant4f6a4502dd1da6dc7b139c861352f463fe4b2bb338fb5cde3c476ecccda61898.lean/declarations/function-injective-groupwithzero--831f53cc601e4ddc37f7d860.md) | 193 | `declaration-track:831f53cc601e4ddc37f7d8606750c9177505cf562e748ea862805e60e09d695c` |
| 18 | `abbrev` | [Function.Surjective.groupWithZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant4f6a4502dd1da6dc7b139c861352f463fe4b2bb338fb5cde3c476ecccda61898.lean/declarations/function-surjective-groupwithzero--cad525ea5cf4c68a3acb1283.md) | 207 | `declaration-track:cad525ea5cf4c68a3acb12833d00c1bed21b8df094f053ab8fb3576e47b36952` |
| 19 | `abbrev` | [Function.Injective.commGroupWithZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant4f6a4502dd1da6dc7b139c861352f463fe4b2bb338fb5cde3c476ecccda61898.lean/declarations/function-injective-commgroupwithzero--c58b7440b733a26828ff9987.md) | 227 | `declaration-track:c58b7440b733a26828ff9987d37efd4e4ea4ca6bcb268f3fd5191f9f4343ab34` |
| 20 | `def` | [Function.Surjective.commGroupWithZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant4f6a4502dd1da6dc7b139c861352f463fe4b2bb338fb5cde3c476ecccda61898.lean/declarations/function-surjective-commgroupwithzero--4dc772c6424ec17e6535b0ab.md) | 236 | `declaration-track:4dc772c6424ec17e6535b0ab4c73135c993c65d448b58020081a1331eab4c438` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
