# Verification target: GRWTSK.Topology.GeneralTopology.GroupCompletion.Variant5b9c09b18843701c910553b09b3abae85354ea90286507a868549a11639ca73c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7007ab121857ff66ba916e6a9fe5e31730fe658c",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/GroupCompletion/Variant5b9c09b18843701c910553b09b3abae85354ea90286507a868549a11639ca73c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant5b9c09b18843701c910553b09b3abae85354ea90286507a868549a11639ca73c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant5b9c09b18843701c910553b09b3abae85354ea90286507a868549a11639ca73c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7007ab121857ff66ba916e6a9fe5e31730fe658c`.

Source path: `GRWTSK/Topology/GeneralTopology/GroupCompletion/Variant5b9c09b18843701c910553b09b3abae85354ea90286507a868549a11639ca73c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/GroupCompletion/Variant5b9c09b18843701c910553b09b3abae85354ea90286507a868549a11639ca73c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.UniformMulAction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Completion` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.Pointwise` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant5b9c09b18843701c910553b09b3abae85354ea90286507a868549a11639ca73c.lean/declarations/instance--92f8dbbeafe07a8527dc055e.md) | 42 | `declaration-track:92f8dbbeafe07a8527dc055e0648e12b69e4d26cb890df8f2bb04bc0bf14dcd2` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant5b9c09b18843701c910553b09b3abae85354ea90286507a868549a11639ca73c.lean/declarations/instance--eef88d71f682e427ff8c33db.md) | 45 | `declaration-track:eef88d71f682e427ff8c33dbed29c913908117d5aed3fbd0785403a976f3ee47` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant5b9c09b18843701c910553b09b3abae85354ea90286507a868549a11639ca73c.lean/declarations/instance--4c3e761da6c41cb77d3f1c66.md) | 48 | `declaration-track:4c3e761da6c41cb77d3f1c66255e22f4c726c4de0db1d78ac2b8862be9994330` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant5b9c09b18843701c910553b09b3abae85354ea90286507a868549a11639ca73c.lean/declarations/instance--3afd939bea29e0b4a26f48ba.md) | 51 | `declaration-track:3afd939bea29e0b4a26f48bad603073a7cc85a479c7c09ddee6b8b480ebfedd2` |
| 5 | `theorem` | [UniformSpace.Completion.coe_zero](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant5b9c09b18843701c910553b09b3abae85354ea90286507a868549a11639ca73c.lean/declarations/uniformspace-completion-coe-zero--4ab8df11457977e1a6149712.md) | 55 | `result-track:4ab8df11457977e1a6149712f2399c62c427b47b5c4ddbe85c5e9e2d95a0b54c` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant5b9c09b18843701c910553b09b3abae85354ea90286507a868549a11639ca73c.lean/declarations/instance--3651dbfa1ce22df93249aac7.md) | 66 | `declaration-track:3651dbfa1ce22df93249aac73301ef3a92595a9018f89c83b5db149b1a462ff4` |
| 7 | `theorem` | [coe_neg](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant5b9c09b18843701c910553b09b3abae85354ea90286507a868549a11639ca73c.lean/declarations/coe-neg--04770752050a095899034a9b.md) | 81 | `result-track:04770752050a095899034a9b0adf9678162a6705c6019353220ee6f2370361a1` |
| 8 | `theorem` | [coe_sub](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant5b9c09b18843701c910553b09b3abae85354ea90286507a868549a11639ca73c.lean/declarations/coe-sub--599d6c74e17e978758785f35.md) | 85 | `result-track:599d6c74e17e978758785f3573d441fe38857f6165a6c039bd72cd475d001eef` |
| 9 | `theorem` | [coe_add](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant5b9c09b18843701c910553b09b3abae85354ea90286507a868549a11639ca73c.lean/declarations/coe-add--3aded1f4d687a203065c9003.md) | 89 | `result-track:3aded1f4d687a203065c90031d130a5cb84f014561b40c746617614f88639852` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant5b9c09b18843701c910553b09b3abae85354ea90286507a868549a11639ca73c.lean/declarations/instance--b7eecb6f87fadc35d4beaf91.md) | 92 | `declaration-track:b7eecb6f87fadc35d4beaf91436d394a5feeac9a49abdd9142cab2640c4849f4` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant5b9c09b18843701c910553b09b3abae85354ea90286507a868549a11639ca73c.lean/declarations/instance--dc6724f04f0b1d9bede9396b.md) | 123 | `declaration-track:dc6724f04f0b1d9bede9396b2ea4361e5b6a700fd78003ba535d059060758766` |
| 12 | `instance` | [addGroup](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant5b9c09b18843701c910553b09b3abae85354ea90286507a868549a11639ca73c.lean/declarations/addgroup--6dfcc934344813a9c946f7ef.md) | 149 | `declaration-track:6dfcc934344813a9c946f7efb2762a3ba8a8f7af487f766fff5bfccfd1b169ac` |
| 13 | `instance` | [isUniformAddGroup](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant5b9c09b18843701c910553b09b3abae85354ea90286507a868549a11639ca73c.lean/declarations/isuniformaddgroup--9f8d7d40fc18abe819d30880.md) | 159 | `declaration-track:9f8d7d40fc18abe819d308809e82449b338ac323d8e8fc747031df3bcda0cd0a` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant5b9c09b18843701c910553b09b3abae85354ea90286507a868549a11639ca73c.lean/declarations/instance--59ca47a5185bfb034c185996.md) | 162 | `declaration-track:59ca47a5185bfb034c18599603e50ead0515dc9e4e4b51eda22c8a25996a7ab2` |
| 15 | `def` | [toCompl](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant5b9c09b18843701c910553b09b3abae85354ea90286507a868549a11639ca73c.lean/declarations/tocompl--63a34d54cbcdb23301eaf743.md) | 174 | `declaration-track:63a34d54cbcdb23301eaf743892c0a728cbfeb7a08d2af750c752abed76f9f88` |
| 16 | `theorem` | [continuous_toCompl](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant5b9c09b18843701c910553b09b3abae85354ea90286507a868549a11639ca73c.lean/declarations/continuous-tocompl--f75bd7646655eb8497f66cf4.md) | 179 | `result-track:f75bd7646655eb8497f66cf46669e07091f0ef6c5cd3efde3282bc3f193c73b1` |
| 17 | `theorem` | [isDenseInducing_toCompl](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant5b9c09b18843701c910553b09b3abae85354ea90286507a868549a11639ca73c.lean/declarations/isdenseinducing-tocompl--c3a546bd20111d9fba1d5e34.md) | 183 | `result-track:c3a546bd20111d9fba1d5e34bf90e19b924fe4e3b3a9d42b8a86234aa1c4acfc` |
| 18 | `instance` | [instAddCommGroup](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant5b9c09b18843701c910553b09b3abae85354ea90286507a868549a11639ca73c.lean/declarations/instaddcommgroup--f33b9ba9fddd9dfbd364a778.md) | 192 | `declaration-track:f33b9ba9fddd9dfbd364a778e945ebae08329f30d8bb5fff50ac18d708a18418` |
| 19 | `instance` | [instModule](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant5b9c09b18843701c910553b09b3abae85354ea90286507a868549a11639ca73c.lean/declarations/instmodule--a02bfa93263d51cbbf1f7ccd.md) | 202 | `declaration-track:a02bfa93263d51cbbf1f7ccd3321fb9da49b3beed3552e0af3da0267532b12e5` |
| 20 | `def` | [AddMonoidHom.extension](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant5b9c09b18843701c910553b09b3abae85354ea90286507a868549a11639ca73c.lean/declarations/addmonoidhom-extension--476d43fb5b50e73a377d7578.md) | 223 | `declaration-track:476d43fb5b50e73a377d75785061b2eb7cfcbf44f894df45603c4d127c5e4a1e` |
| 21 | `theorem` | [AddMonoidHom.extension_coe](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant5b9c09b18843701c910553b09b3abae85354ea90286507a868549a11639ca73c.lean/declarations/addmonoidhom-extension-coe--686831bc022e6af0fcf7af20.md) | 237 | `result-track:686831bc022e6af0fcf7af20ee4db01ce1712574a2dd8c6b5f9616c8c02ade66` |
| 22 | `theorem` | [AddMonoidHom.continuous_extension](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant5b9c09b18843701c910553b09b3abae85354ea90286507a868549a11639ca73c.lean/declarations/addmonoidhom-continuous-extension--d06fbf6a7b3a2726cee46e72.md) | 242 | `result-track:d06fbf6a7b3a2726cee46e72084c9171e7f5247546361c21097a536536620a3c` |
| 23 | `def` | [AddMonoidHom.completion](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant5b9c09b18843701c910553b09b3abae85354ea90286507a868549a11639ca73c.lean/declarations/addmonoidhom-completion--9da2088b630bbc59acabd134.md) | 247 | `declaration-track:9da2088b630bbc59acabd134579fbd887038b66cf9647f35d4a0b60012b68e92` |
| 24 | `theorem` | [AddMonoidHom.continuous_completion](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant5b9c09b18843701c910553b09b3abae85354ea90286507a868549a11639ca73c.lean/declarations/addmonoidhom-continuous-completion--3edec71d96bcb58f3cda3d74.md) | 251 | `result-track:3edec71d96bcb58f3cda3d74c3114a4a55588e40664c12b21d53a7c8b4deecb2` |
| 25 | `theorem` | [AddMonoidHom.completion_coe](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant5b9c09b18843701c910553b09b3abae85354ea90286507a868549a11639ca73c.lean/declarations/addmonoidhom-completion-coe--c93b6080af666b9aadbc1afb.md) | 255 | `result-track:c93b6080af666b9aadbc1afb89a92cc0f815afca986ba999dfc54af5bca4674b` |
| 26 | `theorem` | [AddMonoidHom.completion_zero](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant5b9c09b18843701c910553b09b3abae85354ea90286507a868549a11639ca73c.lean/declarations/addmonoidhom-completion-zero--b7561539e1a19b837b3b5cbd.md) | 259 | `result-track:b7561539e1a19b837b3b5cbddc3961845201a21b22bf7dab9c29a7cbf13382c9` |
| 27 | `theorem` | [AddMonoidHom.completion_add](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant5b9c09b18843701c910553b09b3abae85354ea90286507a868549a11639ca73c.lean/declarations/addmonoidhom-completion-add--a248be85447ba01578aa8aa9.md) | 268 | `result-track:a248be85447ba01578aa8aa977ecaac77f3d53397643a3c224f6eda00ae7a196` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
