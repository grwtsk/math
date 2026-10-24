# Verification target: GRWTSK.Algebra.IsField.Variantaf7410dfe3cb641433a14a8256670560934f11908b6f9bcb70523f2a5271ee18

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3d73b5ce98496f1e7b394f17991c2928d12a2f6",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/IsField/Variantaf7410dfe3cb641433a14a8256670560934f11908b6f9bcb70523f2a5271ee18.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/IsField/Variantaf7410dfe3cb641433a14a8256670560934f11908b6f9bcb70523f2a5271ee18.lean/index.md) · [Full source](../../../../mathematics/Algebra/IsField/Variantaf7410dfe3cb641433a14a8256670560934f11908b6f9bcb70523f2a5271ee18.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3d73b5ce98496f1e7b394f17991c2928d12a2f6`.

Source path: `GRWTSK/Algebra/IsField/Variantaf7410dfe3cb641433a14a8256670560934f11908b6f9bcb70523f2a5271ee18.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/IsField/Variantaf7410dfe3cb641433a14a8256670560934f11908b6f9bcb70523f2a5271ee18.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsField](../../../../mathematics/Algebra/IsField/Variantaf7410dfe3cb641433a14a8256670560934f11908b6f9bcb70523f2a5271ee18.lean/declarations/isfield--aeedc62bf0d546e3e35cd3a2.md) | 33 | `declaration-track:aeedc62bf0d546e3e35cd3a294e8f7225a8222ee2125c78c9bb4b95ef73d78b3` |
| 2 | `theorem` | [Semifield.toIsField](../../../../mathematics/Algebra/IsField/Variantaf7410dfe3cb641433a14a8256670560934f11908b6f9bcb70523f2a5271ee18.lean/declarations/semifield-toisfield--400627e77896fc1625d7ba77.md) | 42 | `result-track:400627e77896fc1625d7ba779f77a6c7fd1d018ac46d1fdc48a3255c6b0c4272` |
| 3 | `theorem` | [Field.toIsField](../../../../mathematics/Algebra/IsField/Variantaf7410dfe3cb641433a14a8256670560934f11908b6f9bcb70523f2a5271ee18.lean/declarations/field-toisfield--1c09322678f774ca153cdf7a.md) | 47 | `result-track:1c09322678f774ca153cdf7a5314e57c4a91b93762f263c562b70604a85cecc2` |
| 4 | `theorem` | [IsField.nontrivial](../../../../mathematics/Algebra/IsField/Variantaf7410dfe3cb641433a14a8256670560934f11908b6f9bcb70523f2a5271ee18.lean/declarations/isfield-nontrivial--89fdade438007c98833c366a.md) | 51 | `result-track:89fdade438007c98833c366a2f6fead949a2890af056dd8362fc8b064349f478` |
| 5 | `lemma` | [IsField.isDomain](../../../../mathematics/Algebra/IsField/Variantaf7410dfe3cb641433a14a8256670560934f11908b6f9bcb70523f2a5271ee18.lean/declarations/isfield-isdomain--9aabbe552d0bb3312296bd25.md) | 54 | `result-track:9aabbe552d0bb3312296bd2586a31a3d22c0c083830809d976b4d4582a9fe970` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/IsField/Variantaf7410dfe3cb641433a14a8256670560934f11908b6f9bcb70523f2a5271ee18.lean/declarations/instance--3d6459aa98ef4d336ffdd25c.md) | 63 | `declaration-track:3d6459aa98ef4d336ffdd25cc8c199202c3b05922f35dac6d5c4cdf8136c908f` |
| 7 | `theorem` | [not_isField_of_subsingleton](../../../../mathematics/Algebra/IsField/Variantaf7410dfe3cb641433a14a8256670560934f11908b6f9bcb70523f2a5271ee18.lean/declarations/not-isfield-of-subsingleton--d33c49c52aa2552a5379be3e.md) | 67 | `result-track:d33c49c52aa2552a5379be3eb7fe6f4cf4078861f99240e014a13514d2d93df1` |
| 8 | `def` | [IsField.toSemifield](../../../../mathematics/Algebra/IsField/Variantaf7410dfe3cb641433a14a8256670560934f11908b6f9bcb70523f2a5271ee18.lean/declarations/isfield-tosemifield--da5df09f58cc42545d502e77.md) | 75 | `declaration-track:da5df09f58cc42545d502e777ae779e1f6d28dc78307b6775af22f405ba59b44` |
| 9 | `def` | [IsField.toField](../../../../mathematics/Algebra/IsField/Variantaf7410dfe3cb641433a14a8256670560934f11908b6f9bcb70523f2a5271ee18.lean/declarations/isfield-tofield--3238964322645265bce8be98.md) | 88 | `declaration-track:3238964322645265bce8be982ac5dcdd454e8e240623fab5b1183f6c0214c41f` |
| 10 | `theorem` | [uniq_inv_of_isField](../../../../mathematics/Algebra/IsField/Variantaf7410dfe3cb641433a14a8256670560934f11908b6f9bcb70523f2a5271ee18.lean/declarations/uniq-inv-of-isfield--eec801ceccd0133ef0c46609.md) | 98 | `result-track:eec801ceccd0133ef0c46609a4f4fb93ee286e83b22fc5b1330cea3fc6d76f16` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
