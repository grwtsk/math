# Verification target: GRWTSK.Algebra.CompTypeclasses.Variante370590d8df5b914326b79b594855e6d1d18b63ed4792b3a8c94a698015b8eb6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65349c38fd8acd2370cd6caedb36a27c21fb5b6b",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CompTypeclasses/Variante370590d8df5b914326b79b594855e6d1d18b63ed4792b3a8c94a698015b8eb6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/CompTypeclasses/Variante370590d8df5b914326b79b594855e6d1d18b63ed4792b3a8c94a698015b8eb6.lean/index.md) · [Full source](../../../../mathematics/Algebra/CompTypeclasses/Variante370590d8df5b914326b79b594855e6d1d18b63ed4792b3a8c94a698015b8eb6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65349c38fd8acd2370cd6caedb36a27c21fb5b6b`.

Source path: `GRWTSK/Algebra/CompTypeclasses/Variante370590d8df5b914326b79b594855e6d1d18b63ed4792b3a8c94a698015b8eb6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CompTypeclasses/Variante370590d8df5b914326b79b594855e6d1d18b63ed4792b3a8c94a698015b8eb6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Equiv` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [RingHomId](../../../../mathematics/Algebra/CompTypeclasses/Variante370590d8df5b914326b79b594855e6d1d18b63ed4792b3a8c94a698015b8eb6.lean/declarations/ringhomid--544bb32b23c5f57ae1a94042.md) | 54 | `declaration-track:544bb32b23c5f57ae1a940425545318d54bc0dc9b573491c25a711e7a3b4b677` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/CompTypeclasses/Variante370590d8df5b914326b79b594855e6d1d18b63ed4792b3a8c94a698015b8eb6.lean/declarations/instance--3d641654a2d63e0e168531e3.md) | 57 | `declaration-track:3d641654a2d63e0e168531e38a85f621f8eeed565a19c57041c4cc1431850bf6` |
| 3 | `class` | [RingHomCompTriple](../../../../mathematics/Algebra/CompTypeclasses/Variante370590d8df5b914326b79b594855e6d1d18b63ed4792b3a8c94a698015b8eb6.lean/declarations/ringhomcomptriple--445d877acf262bacdeba72cd.md) | 62 | `declaration-track:445d877acf262bacdeba72cd71a6640d2fbdbae8369603e02732efd666353442` |
| 4 | `theorem` | [comp_apply](../../../../mathematics/Algebra/CompTypeclasses/Variante370590d8df5b914326b79b594855e6d1d18b63ed4792b3a8c94a698015b8eb6.lean/declarations/comp-apply--7c8848de5c16649c8d01688a.md) | 75 | `result-track:7c8848de5c16649c8d01688a3d3fba8f62e3dff59d39c4ed75a9971f44d274a7` |
| 5 | `class` | [RingHomInvPair](../../../../mathematics/Algebra/CompTypeclasses/Variante370590d8df5b914326b79b594855e6d1d18b63ed4792b3a8c94a698015b8eb6.lean/declarations/ringhominvpair--6ee6588acfd991a3e8217655.md) | 83 | `declaration-track:6ee6588acfd991a3e821765584cf7f2d7e32c6c065b3850b0ac0488c5feab31d` |
| 6 | `theorem` | [comp_apply_eq](../../../../mathematics/Algebra/CompTypeclasses/Variante370590d8df5b914326b79b594855e6d1d18b63ed4792b3a8c94a698015b8eb6.lean/declarations/comp-apply-eq--d54c5bcafe31954ab7cda197.md) | 101 | `result-track:d54c5bcafe31954ab7cda197a252f21c713e6b26ab3da8395700f279ea084236` |
| 7 | `theorem` | [comp_apply_eq₂](../../../../mathematics/Algebra/CompTypeclasses/Variante370590d8df5b914326b79b594855e6d1d18b63ed4792b3a8c94a698015b8eb6.lean/declarations/comp-apply-eq--cfe0267d4ef6c6deb4421927.md) | 107 | `result-track:cfe0267d4ef6c6deb4421927d4874e9336428d8a0c0711c2b4624497531e8225` |
| 8 | `instance` | [ids](../../../../mathematics/Algebra/CompTypeclasses/Variante370590d8df5b914326b79b594855e6d1d18b63ed4792b3a8c94a698015b8eb6.lean/declarations/ids--a040215878d1fcecadeeb0e6.md) | 112 | `declaration-track:a040215878d1fcecadeeb0e672516300012d8fd624894f39609db2373eacd47e` |
| 9 | `instance` | [triples](../../../../mathematics/Algebra/CompTypeclasses/Variante370590d8df5b914326b79b594855e6d1d18b63ed4792b3a8c94a698015b8eb6.lean/declarations/triples--8f27782b388267788315f66f.md) | 116 | `declaration-track:8f27782b388267788315f66fd943e1f575d3917819bccee29c5ba33368ef9bcb` |
| 10 | `instance` | [triples₂](../../../../mathematics/Algebra/CompTypeclasses/Variante370590d8df5b914326b79b594855e6d1d18b63ed4792b3a8c94a698015b8eb6.lean/declarations/triples--b57bdd843e6341c2c3e8de78.md) | 121 | `declaration-track:b57bdd843e6341c2c3e8de7894df8cabb5a7beba10d978b91747d0317dbef32b` |
| 11 | `theorem` | [of_ringEquiv](../../../../mathematics/Algebra/CompTypeclasses/Variante370590d8df5b914326b79b594855e6d1d18b63ed4792b3a8c94a698015b8eb6.lean/declarations/of-ringequiv--d2d55ec36ad02ff596e90d10.md) | 134 | `result-track:d2d55ec36ad02ff596e90d1007fcef906711cfe3430ce7ef3d1f0ff707b42690` |
| 12 | `theorem` | [symm](../../../../mathematics/Algebra/CompTypeclasses/Variante370590d8df5b914326b79b594855e6d1d18b63ed4792b3a8c94a698015b8eb6.lean/declarations/symm--4627f426604d917c4c43a82c.md) | 146 | `result-track:4627f426604d917c4c43a82c6f29fb22e5d5f6993ea9a81a186553c3340116fa` |
| 13 | `instance` | [ids](../../../../mathematics/Algebra/CompTypeclasses/Variante370590d8df5b914326b79b594855e6d1d18b63ed4792b3a8c94a698015b8eb6.lean/declarations/ids--c828485edd8519bf08a38455.md) | 155 | `declaration-track:c828485edd8519bf08a38455b2b9a58342a912100b95fbd59695b958cb3609e7` |
| 14 | `instance` | [right_ids](../../../../mathematics/Algebra/CompTypeclasses/Variante370590d8df5b914326b79b594855e6d1d18b63ed4792b3a8c94a698015b8eb6.lean/declarations/right-ids--d35fc1277fc420e4149da7b2.md) | 161 | `declaration-track:d35fc1277fc420e4149da7b2d46bae8f6b89c71f29ee3ed0a0ec7d2484d8eeeb` |
| 15 | `class` | [RingHomSurjective](../../../../mathematics/Algebra/CompTypeclasses/Variante370590d8df5b914326b79b594855e6d1d18b63ed4792b3a8c94a698015b8eb6.lean/declarations/ringhomsurjective--c569762c762b76893ae4fb74.md) | 171 | `declaration-track:c569762c762b76893ae4fb7466ce33a4e8f9daf033f874cbe41c719e72f16901` |
| 16 | `theorem` | [RingHom.surjective](../../../../mathematics/Algebra/CompTypeclasses/Variante370590d8df5b914326b79b594855e6d1d18b63ed4792b3a8c94a698015b8eb6.lean/declarations/ringhom-surjective--11ff31685a6afb37da81478f.md) | 176 | `result-track:11ff31685a6afb37da81478fcf527afd0a951d282a125e2ac46a988190fed32f` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/Algebra/CompTypeclasses/Variante370590d8df5b914326b79b594855e6d1d18b63ed4792b3a8c94a698015b8eb6.lean/declarations/instance--f0ac65cc8f92dc5e4a1d7fdb.md) | 184 | `declaration-track:f0ac65cc8f92dc5e4a1d7fdb37ab2e7de068df2ca1a4ac7cd043c8a55bfde689` |
| 18 | `instance` | [ids](../../../../mathematics/Algebra/CompTypeclasses/Variante370590d8df5b914326b79b594855e6d1d18b63ed4792b3a8c94a698015b8eb6.lean/declarations/ids--42daa22a869bc46372b28ff8.md) | 189 | `declaration-track:42daa22a869bc46372b28ff83871fc8a978faf0c01d9b0373368047d3cb8e87b` |
| 19 | `theorem` | [comp](../../../../mathematics/Algebra/CompTypeclasses/Variante370590d8df5b914326b79b594855e6d1d18b63ed4792b3a8c94a698015b8eb6.lean/declarations/comp--bae1af58db0d07107ddb0e35.md) | 194 | `result-track:bae1af58db0d07107ddb0e35e7154ec23b4df8960dde8b38913c6ea8612e21f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
