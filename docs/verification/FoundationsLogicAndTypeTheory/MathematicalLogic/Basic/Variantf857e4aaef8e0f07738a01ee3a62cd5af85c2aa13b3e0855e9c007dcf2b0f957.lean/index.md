# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Variantf857e4aaef8e0f07738a01ee3a62cd5af85c2aa13b3e0855e9c007dcf2b0f957

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca431d3a54edb12f731ec4395881ddb13b225b50",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantf857e4aaef8e0f07738a01ee3a62cd5af85c2aa13b3e0855e9c007dcf2b0f957.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantf857e4aaef8e0f07738a01ee3a62cd5af85c2aa13b3e0855e9c007dcf2b0f957.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantf857e4aaef8e0f07738a01ee3a62cd5af85c2aa13b3e0855e9c007dcf2b0f957.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca431d3a54edb12f731ec4395881ddb13b225b50`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantf857e4aaef8e0f07738a01ee3a62cd5af85c2aa13b3e0855e9c007dcf2b0f957.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantf857e4aaef8e0f07738a01ee3a62cd5af85c2aa13b3e0855e9c007dcf2b0f957.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Traversable.Equiv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Traversable.Instances` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.LazyList` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Thunk` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [listEquivLazyList](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantf857e4aaef8e0f07738a01ee3a62cd5af85c2aa13b3e0855e9c007dcf2b0f957.lean/declarations/listequivlazylist--2ca3ca0b581b40bfe589906e.md) | 37 | `declaration-track:2ca3ca0b581b40bfe589906e4468ab11531fe5d71ad849020b0e4e3308c87467` |
| 2 | `instance` | [decidableEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantf857e4aaef8e0f07738a01ee3a62cd5af85c2aa13b3e0855e9c007dcf2b0f957.lean/declarations/decidableeq--65b413148998c512cf53777a.md) | 54 | `declaration-track:65b413148998c512cf53777a2ae190edf487ee180cc9e4b348c0e2badc7fafd0` |
| 3 | `def` | [traverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantf857e4aaef8e0f07738a01ee3a62cd5af85c2aa13b3e0855e9c007dcf2b0f957.lean/declarations/traverse--609d51a21cdcd1c9904b36b7.md) | 67 | `declaration-track:609d51a21cdcd1c9904b36b7045f465db28b214ed2c2cf74644f16a44badd71c` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantf857e4aaef8e0f07738a01ee3a62cd5af85c2aa13b3e0855e9c007dcf2b0f957.lean/declarations/instance--f72978199a6ef900a2c7d058.md) | 73 | `declaration-track:f72978199a6ef900a2c7d0583a42132cd01cb71128c3b64adc91b3c81ef5f2de` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantf857e4aaef8e0f07738a01ee3a62cd5af85c2aa13b3e0855e9c007dcf2b0f957.lean/declarations/instance--3579d9f5503d730c54022206.md) | 77 | `declaration-track:3579d9f5503d730c540222062162366fd55d463ab69df7fac716fd376b5da5e4` |
| 6 | `def` | [init](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantf857e4aaef8e0f07738a01ee3a62cd5af85c2aa13b3e0855e9c007dcf2b0f957.lean/declarations/init--e5d99bc2a3da93987a83f364.md) | 100 | `declaration-track:e5d99bc2a3da93987a83f3649e5d1e4726a05ecabec733e1cc35805f64b16771` |
| 7 | `def` | [find](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantf857e4aaef8e0f07738a01ee3a62cd5af85c2aa13b3e0855e9c007dcf2b0f957.lean/declarations/find--4b491e9b41500b7d9a1f0289.md) | 111 | `declaration-track:4b491e9b41500b7d9a1f02899f4750211c5e64d35ca62895c265a51d725dbe12` |
| 8 | `def` | [interleave](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantf857e4aaef8e0f07738a01ee3a62cd5af85c2aa13b3e0855e9c007dcf2b0f957.lean/declarations/interleave--612c26dd3ada4f58fd7e578b.md) | 117 | `declaration-track:612c26dd3ada4f58fd7e578be5a949b9a70f2793ff85068989e0561b42ca6451` |
| 9 | `def` | [interleaveAll](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantf857e4aaef8e0f07738a01ee3a62cd5af85c2aa13b3e0855e9c007dcf2b0f957.lean/declarations/interleaveall--860a58936d5d1653f2691030.md) | 127 | `declaration-track:860a58936d5d1653f2691030addc2d105faa84af16fd043535e84457b5457888` |
| 10 | `def` | [bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantf857e4aaef8e0f07738a01ee3a62cd5af85c2aa13b3e0855e9c007dcf2b0f957.lean/declarations/bind--098c2b42d52c20e1207d389a.md) | 133 | `declaration-track:098c2b42d52c20e1207d389a88b7906f26e9868d86b692b9b00edbbf5698da44` |
| 11 | `def` | [reverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantf857e4aaef8e0f07738a01ee3a62cd5af85c2aa13b3e0855e9c007dcf2b0f957.lean/declarations/reverse--b87e7ff56f7f367066007589.md) | 142 | `declaration-track:b87e7ff56f7f367066007589366771c2ea7a25986a5622a1aac407704ae48f12` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantf857e4aaef8e0f07738a01ee3a62cd5af85c2aa13b3e0855e9c007dcf2b0f957.lean/declarations/instance--d69cccf178a2bbb47bf667ea.md) | 146 | `declaration-track:d69cccf178a2bbb47bf667ea37bc0312fb69195619d8353f97acfefb123d38c0` |
| 13 | `theorem` | [append_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantf857e4aaef8e0f07738a01ee3a62cd5af85c2aa13b3e0855e9c007dcf2b0f957.lean/declarations/append-nil--5100269b3c3a7582c071c9a7.md) | 151 | `result-track:5100269b3c3a7582c071c9a70fa23e972dd91a3f6c0aeeda1ad19422641002c5` |
| 14 | `theorem` | [append_assoc](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantf857e4aaef8e0f07738a01ee3a62cd5af85c2aa13b3e0855e9c007dcf2b0f957.lean/declarations/append-assoc--8363586048960786810ab694.md) | 158 | `result-track:8363586048960786810ab69430641a297c4840e90d2977db6a272e1739633946` |
| 15 | `theorem` | [append_bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantf857e4aaef8e0f07738a01ee3a62cd5af85c2aa13b3e0855e9c007dcf2b0f957.lean/declarations/append-bind--f629f2fa274e64de7a4ca54c.md) | 167 | `result-track:f629f2fa274e64de7a4ca54c950fb646184268142d87a713c71c4a0302a3cac9` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantf857e4aaef8e0f07738a01ee3a62cd5af85c2aa13b3e0855e9c007dcf2b0f957.lean/declarations/instance--c8b4a443a11b320ea694cb6a.md) | 178 | `declaration-track:c8b4a443a11b320ea694cb6a7f4289a923ffa930614ccc895ef0bb51291acc77` |
| 17 | `def` | [mfirst](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantf857e4aaef8e0f07738a01ee3a62cd5af85c2aa13b3e0855e9c007dcf2b0f957.lean/declarations/mfirst--51f1d26e6893c7a914d88e5e.md) | 206 | `declaration-track:51f1d26e6893c7a914d88e5e95b21b43d13be93f3d9e07e3c84f6bde28721623` |
| 18 | `def` | [Mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantf857e4aaef8e0f07738a01ee3a62cd5af85c2aa13b3e0855e9c007dcf2b0f957.lean/declarations/mem--d79eb2e0709fce1b1562c7ee.md) | 212 | `declaration-track:d79eb2e0709fce1b1562c7ee4a546a64f9779cf26667f66464004af6e985ec21` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantf857e4aaef8e0f07738a01ee3a62cd5af85c2aa13b3e0855e9c007dcf2b0f957.lean/declarations/instance--a9c53473e275d6f592717972.md) | 217 | `declaration-track:a9c53473e275d6f59271797225e371087c2674311ea0458e7e73ace75550aca1` |
| 20 | `instance` | [Mem.decidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantf857e4aaef8e0f07738a01ee3a62cd5af85c2aa13b3e0855e9c007dcf2b0f957.lean/declarations/mem-decidable--d0bcabb9b569775ba68c17f5.md) | 220 | `declaration-track:d0bcabb9b569775ba68c17f5e13f13135dc07f559c515e5df3533a5dd48a0328` |
| 21 | `theorem` | [mem_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantf857e4aaef8e0f07738a01ee3a62cd5af85c2aa13b3e0855e9c007dcf2b0f957.lean/declarations/mem-nil--fefdd8275fa60c3869bc3a79.md) | 236 | `result-track:fefdd8275fa60c3869bc3a794da673d87ddce1d8b0de86168443f6bd5be4f6a6` |
| 22 | `theorem` | [mem_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantf857e4aaef8e0f07738a01ee3a62cd5af85c2aa13b3e0855e9c007dcf2b0f957.lean/declarations/mem-cons--ec8b7d35a3fd0308cde7841a.md) | 241 | `result-track:ec8b7d35a3fd0308cde7841af0ad4a6951327e8b5903ed37acb9c26ef31a36c9` |
| 23 | `theorem` | [forall_mem_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantf857e4aaef8e0f07738a01ee3a62cd5af85c2aa13b3e0855e9c007dcf2b0f957.lean/declarations/forall-mem-cons--6a950e84342774a5fe70e02b.md) | 246 | `result-track:6a950e84342774a5fe70e02bb2b5aba1c8bcffdaaf19e670c402a22f5d72a1ac` |
| 24 | `def` | [pmap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantf857e4aaef8e0f07738a01ee3a62cd5af85c2aa13b3e0855e9c007dcf2b0f957.lean/declarations/pmap--12fd7b2c49b1a7a691d3f43d.md) | 259 | `declaration-track:12fd7b2c49b1a7a691d3f43d3340d8c50678f73d9427e0332434c2629125ef22` |
| 25 | `def` | [attach](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantf857e4aaef8e0f07738a01ee3a62cd5af85c2aa13b3e0855e9c007dcf2b0f957.lean/declarations/attach--8c3a85ce846089a089f8bdc3.md) | 267 | `declaration-track:8c3a85ce846089a089f8bdc3ae0e295e9aa242fe576899670ce1fb298eab94d1` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantf857e4aaef8e0f07738a01ee3a62cd5af85c2aa13b3e0855e9c007dcf2b0f957.lean/declarations/instance--56ac884e2de05b5955d8a011.md) | 271 | `declaration-track:56ac884e2de05b5955d8a011bb2612a421d648461157af6e562e488193eaf6e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
