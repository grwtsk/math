# Verification target: GRWTSK.Algebra.Opposite.Variant9ad618ac7d9373b7acf7a28a43c438d332d127284685e2a7a0982e788ca17543

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd68ab4454df07ff6791c66286bf8982609c209f",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Opposite/Variant9ad618ac7d9373b7acf7a28a43c438d332d127284685e2a7a0982e788ca17543.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Opposite/Variant9ad618ac7d9373b7acf7a28a43c438d332d127284685e2a7a0982e788ca17543.lean/index.md) · [Full source](../../../../mathematics/Algebra/Opposite/Variant9ad618ac7d9373b7acf7a28a43c438d332d127284685e2a7a0982e788ca17543.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd68ab4454df07ff6791c66286bf8982609c209f`.

Source path: `GRWTSK/Algebra/Opposite/Variant9ad618ac7d9373b7acf7a28a43c438d332d127284685e2a7a0982e788ca17543.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Opposite/Variant9ad618ac7d9373b7acf7a28a43c438d332d127284685e2a7a0982e788ca17543.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Equiv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Opposites` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Opposite` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [MulOpposite.instAlgebra](../../../../mathematics/Algebra/Opposite/Variant9ad618ac7d9373b7acf7a28a43c438d332d127284685e2a7a0982e788ca17543.lean/declarations/mulopposite-instalgebra--4682f862e60f3a332896173a.md) | 42 | `declaration-track:4682f862e60f3a332896173adeb24c53cca6b2477f738850c8a3a71c6c84ba83` |
| 2 | `theorem` | [algebraMap_apply](../../../../mathematics/Algebra/Opposite/Variant9ad618ac7d9373b7acf7a28a43c438d332d127284685e2a7a0982e788ca17543.lean/declarations/algebramap-apply--e49df8b0d3354cf93773d095.md) | 51 | `result-track:e49df8b0d3354cf93773d09519f4b38724bc21cb8f586fbb3cae7b351e1e7b1e` |
| 3 | `def` | [opOp](../../../../mathematics/Algebra/Opposite/Variant9ad618ac7d9373b7acf7a28a43c438d332d127284685e2a7a0982e788ca17543.lean/declarations/opop--0789757869b07c74972b1b38.md) | 62 | `declaration-track:0789757869b07c74972b1b38fc8d688d0fead514e51df3758abc9fe5dbc1f129` |
| 4 | `theorem` | [toRingEquiv_opOp](../../../../mathematics/Algebra/Opposite/Variant9ad618ac7d9373b7acf7a28a43c438d332d127284685e2a7a0982e788ca17543.lean/declarations/toringequiv-opop--e1e52822ac691748a2592a27.md) | 66 | `result-track:e1e52822ac691748a2592a276e799ef4b6b0de28193aeedd3d6caf8c4c02d058` |
| 5 | `def` | [fromOpposite](../../../../mathematics/Algebra/Opposite/Variant9ad618ac7d9373b7acf7a28a43c438d332d127284685e2a7a0982e788ca17543.lean/declarations/fromopposite--23e542af0db76f677f7b3902.md) | 76 | `declaration-track:23e542af0db76f677f7b3902b9680c0b3b7031f89992bafdbb4befdf1e69da5d` |
| 6 | `theorem` | [toLinearMap_fromOpposite](../../../../mathematics/Algebra/Opposite/Variant9ad618ac7d9373b7acf7a28a43c438d332d127284685e2a7a0982e788ca17543.lean/declarations/tolinearmap-fromopposite--844785ab209ee8f0967690d2.md) | 82 | `result-track:844785ab209ee8f0967690d2bc3b56c2e4a67c8301335bf8767dd6dc32220e0e` |
| 7 | `theorem` | [toRingHom_fromOpposite](../../../../mathematics/Algebra/Opposite/Variant9ad618ac7d9373b7acf7a28a43c438d332d127284685e2a7a0982e788ca17543.lean/declarations/toringhom-fromopposite--2c6dd5634fe2309dfb458a7f.md) | 87 | `result-track:2c6dd5634fe2309dfb458a7f755e11fdfa108085b72d2545995c873a2997b92c` |
| 8 | `def` | [toOpposite](../../../../mathematics/Algebra/Opposite/Variant9ad618ac7d9373b7acf7a28a43c438d332d127284685e2a7a0982e788ca17543.lean/declarations/toopposite--de3f967a270d086bdde2e5d7.md) | 95 | `declaration-track:de3f967a270d086bdde2e5d726430e7420fcc43432f825455cf3eee72f12f5a6` |
| 9 | `theorem` | [toLinearMap_toOpposite](../../../../mathematics/Algebra/Opposite/Variant9ad618ac7d9373b7acf7a28a43c438d332d127284685e2a7a0982e788ca17543.lean/declarations/tolinearmap-toopposite--a0c7c88489655706ff16cde1.md) | 101 | `result-track:a0c7c88489655706ff16cde19baa0dc9f0bcf4544fc7786094d0d98d64f6fe9e` |
| 10 | `theorem` | [toRingHom_toOpposite](../../../../mathematics/Algebra/Opposite/Variant9ad618ac7d9373b7acf7a28a43c438d332d127284685e2a7a0982e788ca17543.lean/declarations/toringhom-toopposite--0c7cf326c18b055402ded9d5.md) | 106 | `result-track:0c7cf326c18b055402ded9d583c2f1685c3e50652f935dcac8c42eff6e145cae` |
| 11 | `def` | [op](../../../../mathematics/Algebra/Opposite/Variant9ad618ac7d9373b7acf7a28a43c438d332d127284685e2a7a0982e788ca17543.lean/declarations/op--371d3eb5dc9437d1252507b1.md) | 113 | `declaration-track:371d3eb5dc9437d1252507b1cb7734eacc07416bfe684dfa46d366c5e120b93f` |
| 12 | `theorem` | [toRingHom_op](../../../../mathematics/Algebra/Opposite/Variant9ad618ac7d9373b7acf7a28a43c438d332d127284685e2a7a0982e788ca17543.lean/declarations/toringhom-op--bdaf96fa2c8a71c473a42903.md) | 119 | `result-track:bdaf96fa2c8a71c473a429037972a3bc8aeec7732bb02bf8577a217cc3953f16` |
| 13 | `abbrev` | [unop](../../../../mathematics/Algebra/Opposite/Variant9ad618ac7d9373b7acf7a28a43c438d332d127284685e2a7a0982e788ca17543.lean/declarations/unop--026459fa04050076dd74e021.md) | 123 | `declaration-track:026459fa04050076dd74e021c71e75f6ebeb9f9b939be9d5595db749e11e38d3` |
| 14 | `theorem` | [toRingHom_unop](../../../../mathematics/Algebra/Opposite/Variant9ad618ac7d9373b7acf7a28a43c438d332d127284685e2a7a0982e788ca17543.lean/declarations/toringhom-unop--912963134838edaac045544c.md) | 125 | `result-track:912963134838edaac045544c6d5454e44565477f419524e3000ef713b058f0ee` |
| 15 | `def` | [opComm](../../../../mathematics/Algebra/Opposite/Variant9ad618ac7d9373b7acf7a28a43c438d332d127284685e2a7a0982e788ca17543.lean/declarations/opcomm--ebe8f8d05970935e56c3b5b3.md) | 130 | `declaration-track:ebe8f8d05970935e56c3b5b3ce79a747eb0f34d33d0a54b053143adcd1775128` |
| 16 | `def` | [op](../../../../mathematics/Algebra/Opposite/Variant9ad618ac7d9373b7acf7a28a43c438d332d127284685e2a7a0982e788ca17543.lean/declarations/op--bb479fe30d96dab9801a35cb.md) | 140 | `declaration-track:bb479fe30d96dab9801a35cb27775f85274242eb13ccb414be5e363695d29920` |
| 17 | `theorem` | [toAlgHom_op](../../../../mathematics/Algebra/Opposite/Variant9ad618ac7d9373b7acf7a28a43c438d332d127284685e2a7a0982e788ca17543.lean/declarations/toalghom-op--2399776ee989153283411586.md) | 150 | `result-track:2399776ee989153283411586c43f6c13f50c1070c0e62d7f665bfa88ec5599af` |
| 18 | `theorem` | [toRingEquiv_op](../../../../mathematics/Algebra/Opposite/Variant9ad618ac7d9373b7acf7a28a43c438d332d127284685e2a7a0982e788ca17543.lean/declarations/toringequiv-op--2a7c6ff2a19d54c33b5faaca.md) | 154 | `result-track:2a7c6ff2a19d54c33b5faaca1496226faf8549242f65af15c978f9ddb7936d73` |
| 19 | `abbrev` | [unop](../../../../mathematics/Algebra/Opposite/Variant9ad618ac7d9373b7acf7a28a43c438d332d127284685e2a7a0982e788ca17543.lean/declarations/unop--673c6cbfed9b97d7204afa05.md) | 159 | `declaration-track:673c6cbfed9b97d7204afa05c51bb1c875978fa72f2058b4e1d38c1aedd5f46c` |
| 20 | `theorem` | [toAlgHom_unop](../../../../mathematics/Algebra/Opposite/Variant9ad618ac7d9373b7acf7a28a43c438d332d127284685e2a7a0982e788ca17543.lean/declarations/toalghom-unop--6b9ee644f8ec3166375e38bc.md) | 161 | `result-track:6b9ee644f8ec3166375e38bcf282ba792bb2127ac0e953ce18271cd18761a5ee` |
| 21 | `theorem` | [toRingEquiv_unop](../../../../mathematics/Algebra/Opposite/Variant9ad618ac7d9373b7acf7a28a43c438d332d127284685e2a7a0982e788ca17543.lean/declarations/toringequiv-unop--2339074f35de36fb9a80e246.md) | 164 | `result-track:2339074f35de36fb9a80e246b9b277fee4f7943dc945ac825b28e2b71af8de5c` |
| 22 | `def` | [opComm](../../../../mathematics/Algebra/Opposite/Variant9ad618ac7d9373b7acf7a28a43c438d332d127284685e2a7a0982e788ca17543.lean/declarations/opcomm--91ec538df19cc6fdd2bea2c2.md) | 170 | `declaration-track:91ec538df19cc6fdd2bea2c2b07bc63224a6ec9469e76428dc7fab74bb57d70f` |
| 23 | `def` | [toOpposite](../../../../mathematics/Algebra/Opposite/Variant9ad618ac7d9373b7acf7a28a43c438d332d127284685e2a7a0982e788ca17543.lean/declarations/toopposite--7129f17caf1622088365511b.md) | 184 | `declaration-track:7129f17caf1622088365511ba2e4dfd2b40bfdd6deb01332b8e0d8c8afd4b2f6` |
| 24 | `lemma` | [toRingEquiv_toOpposite](../../../../mathematics/Algebra/Opposite/Variant9ad618ac7d9373b7acf7a28a43c438d332d127284685e2a7a0982e788ca17543.lean/declarations/toringequiv-toopposite--6af28a455d95be78cfb0cad3.md) | 188 | `result-track:6af28a455d95be78cfb0cad31be5dd5ad932476857cdf621f00f5235c2b4c898` |
| 25 | `lemma` | [toLinearEquiv_toOpposite](../../../../mathematics/Algebra/Opposite/Variant9ad618ac7d9373b7acf7a28a43c438d332d127284685e2a7a0982e788ca17543.lean/declarations/tolinearequiv-toopposite--88c667c21aa30902b325ef4a.md) | 189 | `result-track:88c667c21aa30902b325ef4a0c686588ce4cdce4349e0d4f192d047667965c07` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
