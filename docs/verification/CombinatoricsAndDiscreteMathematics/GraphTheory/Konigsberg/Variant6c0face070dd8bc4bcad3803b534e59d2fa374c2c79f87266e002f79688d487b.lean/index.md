# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Konigsberg.Variant6c0face070dd8bc4bcad3803b534e59d2fa374c2c79f87266e002f79688d487b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd316bcf536fc234c20237860c3d9d9c94d38a91",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variant6c0face070dd8bc4bcad3803b534e59d2fa374c2c79f87266e002f79688d487b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variant6c0face070dd8bc4bcad3803b534e59d2fa374c2c79f87266e002f79688d487b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variant6c0face070dd8bc4bcad3803b534e59d2fa374c2c79f87266e002f79688d487b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd316bcf536fc234c20237860c3d9d9c94d38a91`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variant6c0face070dd8bc4bcad3803b534e59d2fa374c2c79f87266e002f79688d487b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variant6c0face070dd8bc4bcad3803b534e59d2fa374c2c79f87266e002f79688d487b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Trails` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.DeriveFintype` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Verts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variant6c0face070dd8bc4bcad3803b534e59d2fa374c2c79f87266e002f79688d487b.lean/declarations/verts--ec5301d64f985988ff05d222.md) | 22 | `declaration-track:ec5301d64f985988ff05d222289c9d0bd969d0e1173b8049af195608435bf5f2` |
| 2 | `def` | [edges](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variant6c0face070dd8bc4bcad3803b534e59d2fa374c2c79f87266e002f79688d487b.lean/declarations/edges--25b4c8e5fcaf2d4fe355951f.md) | 33 | `declaration-track:25b4c8e5fcaf2d4fe355951f9323a1860371ab1ab3ba30bf085bf5e6b74b4fae` |
| 3 | `def` | [adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variant6c0face070dd8bc4bcad3803b534e59d2fa374c2c79f87266e002f79688d487b.lean/declarations/adj--3b37b7102ebc594736600302.md) | 40 | `declaration-track:3b37b7102ebc594736600302760eaf462d8fa2e8b69ac46b5b07b4b840aeab29` |
| 4 | `def` | [graph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variant6c0face070dd8bc4bcad3803b534e59d2fa374c2c79f87266e002f79688d487b.lean/declarations/graph--8b959b481014cf2915f96e66.md) | 50 | `declaration-track:8b959b481014cf2915f96e663fb5e827e08e1dfecdc197759d5db63e53094538` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variant6c0face070dd8bc4bcad3803b534e59d2fa374c2c79f87266e002f79688d487b.lean/declarations/instance--b6ec629bd4c67974ad183925.md) | 59 | `declaration-track:b6ec629bd4c67974ad183925715872f367cda07ea3b2c29c53c4df582f44aa52` |
| 6 | `def` | [degree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variant6c0face070dd8bc4bcad3803b534e59d2fa374c2c79f87266e002f79688d487b.lean/declarations/degree--8b0eb2c3b61b2f60de8b37da.md) | 63 | `declaration-track:8b0eb2c3b61b2f60de8b37dab10cfaf18e8be24a4113e9a1c48c00a97ab05a8a` |
| 7 | `lemma` | [degree_eq_degree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variant6c0face070dd8bc4bcad3803b534e59d2fa374c2c79f87266e002f79688d487b.lean/declarations/degree-eq-degree--dba2c646510d5158927782ef.md) | 68 | `result-track:dba2c646510d5158927782efba63d28a5f987fe0d637b51ac491a467da6a4289` |
| 8 | `lemma` | [not_even_degree_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variant6c0face070dd8bc4bcad3803b534e59d2fa374c2c79f87266e002f79688d487b.lean/declarations/not-even-degree-iff--e5ca80946864f61455c4dfc3.md) | 70 | `result-track:e5ca80946864f61455c4dfc34475fbb30811a8cdbf9b592e826d8cb55346d35b` |
| 9 | `lemma` | [setOf_odd_degree_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variant6c0face070dd8bc4bcad3803b534e59d2fa374c2c79f87266e002f79688d487b.lean/declarations/setof-odd-degree-eq--b98e107c7e1056266a05f555.md) | 73 | `result-track:b98e107c7e1056266a05f55588bc46a96d0450fc92bcaf22d57997210c6cba1b` |
| 10 | `theorem` | [not_isEulerian](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variant6c0face070dd8bc4bcad3803b534e59d2fa374c2c79f87266e002f79688d487b.lean/declarations/not-iseulerian--a8f2cead376044f3556b355b.md) | 79 | `result-track:a8f2cead376044f3556b355b3de656703f08058de635b37529c4dc913dbf2a9d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
