# Verification target: GRWTSK.Algebra.GroupTheory.Adjunctions.Variant9f397419ce9fbd569a38b98beed009172f4cf28a4132d6f834d1062d2d3e3c42

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04d378418981f42400fc5622d5ee5c9cfd5af731",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Adjunctions/Variant9f397419ce9fbd569a38b98beed009172f4cf28a4132d6f834d1062d2d3e3c42.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Adjunctions/Variant9f397419ce9fbd569a38b98beed009172f4cf28a4132d6f834d1062d2d3e3c42.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Adjunctions/Variant9f397419ce9fbd569a38b98beed009172f4cf28a4132d6f834d1062d2d3e3c42.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04d378418981f42400fc5622d5ee5c9cfd5af731`.

Source path: `GRWTSK/Algebra/GroupTheory/Adjunctions/Variant9f397419ce9fbd569a38b98beed009172f4cf28a4132d6f834d1062d2d3e3c42.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Adjunctions/Variant9f397419ce9fbd569a38b98beed009172f4cf28a4132d6f834d1062d2d3e3c42.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.GroupCat.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.FreeAbelianGroup` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [free](../../../../../mathematics/Algebra/GroupTheory/Adjunctions/Variant9f397419ce9fbd569a38b98beed009172f4cf28a4132d6f834d1062d2d3e3c42.lean/declarations/free--957c0709c64a4fee22a3c4ce.md) | 51 | `declaration-track:957c0709c64a4fee22a3c4ce28873d1e1398894152ea102f741e6446ca0a6630` |
| 2 | `theorem` | [free_obj_coe](../../../../../mathematics/Algebra/GroupTheory/Adjunctions/Variant9f397419ce9fbd569a38b98beed009172f4cf28a4132d6f834d1062d2d3e3c42.lean/declarations/free-obj-coe--6a8b9ae582da504119fae173.md) | 59 | `result-track:6a8b9ae582da504119fae173d85530a5a204c300eec671928ccdfa629397ede9` |
| 3 | `theorem` | [free_map_coe](../../../../../mathematics/Algebra/GroupTheory/Adjunctions/Variant9f397419ce9fbd569a38b98beed009172f4cf28a4132d6f834d1062d2d3e3c42.lean/declarations/free-map-coe--8c78f957ab3d341aa7fcb3bb.md) | 64 | `result-track:8c78f957ab3d341aa7fcb3bb76d74ab91a55adcfc915d7aa17e101ee49340210` |
| 4 | `def` | [adj](../../../../../mathematics/Algebra/GroupTheory/Adjunctions/Variant9f397419ce9fbd569a38b98beed009172f4cf28a4132d6f834d1062d2d3e3c42.lean/declarations/adj--03bbd0dae8fa0cdec283bcc3.md) | 71 | `declaration-track:03bbd0dae8fa0cdec283bcc39f544c67bd80ae6ee7e510493c7faa7ab34cf189` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Adjunctions/Variant9f397419ce9fbd569a38b98beed009172f4cf28a4132d6f834d1062d2d3e3c42.lean/declarations/instance--5f90fc31c919b72b55f60e73.md) | 82 | `declaration-track:5f90fc31c919b72b55f60e73df674e99599dc8275a7d2278c8b0a1ef7608c991` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Adjunctions/Variant9f397419ce9fbd569a38b98beed009172f4cf28a4132d6f834d1062d2d3e3c42.lean/declarations/example--4b3924f31ccf25e5069e16e9.md) | 91 | `declaration-track:4b3924f31ccf25e5069e16e9b9eb43ceefc5c803bd74408a789ed60e8670f5b7` |
| 7 | `def` | [free](../../../../../mathematics/Algebra/GroupTheory/Adjunctions/Variant9f397419ce9fbd569a38b98beed009172f4cf28a4132d6f834d1062d2d3e3c42.lean/declarations/free--d55de04bc969b556695dc5ee.md) | 101 | `declaration-track:d55de04bc969b556695dc5ee9fb0796e99b45998455b6741defabed1962b083c` |
| 8 | `def` | [adj](../../../../../mathematics/Algebra/GroupTheory/Adjunctions/Variant9f397419ce9fbd569a38b98beed009172f4cf28a4132d6f834d1062d2d3e3c42.lean/declarations/adj--ae6f26e49d990511d00cef37.md) | 112 | `declaration-track:ae6f26e49d990511d00cef37d3f308292cfa1ab03a82ca06bdb3a332c42668f4` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Adjunctions/Variant9f397419ce9fbd569a38b98beed009172f4cf28a4132d6f834d1062d2d3e3c42.lean/declarations/instance--4e637c2c61fe2cdfb6b21e8e.md) | 126 | `declaration-track:4e637c2c61fe2cdfb6b21e8e36e58c1fb45ecfae564b2d335fd6075ca4953481` |
| 10 | `def` | [abelianize](../../../../../mathematics/Algebra/GroupTheory/Adjunctions/Variant9f397419ce9fbd569a38b98beed009172f4cf28a4132d6f834d1062d2d3e3c42.lean/declarations/abelianize--944fd03c0f17aa163fe3de84.md) | 135 | `declaration-track:944fd03c0f17aa163fe3de84b022b228843b8ff2d21485ae677163467aa76e18` |
| 11 | `def` | [abelianizeAdj](../../../../../mathematics/Algebra/GroupTheory/Adjunctions/Variant9f397419ce9fbd569a38b98beed009172f4cf28a4132d6f834d1062d2d3e3c42.lean/declarations/abelianizeadj--c34b5433a0b26711b6755d9c.md) | 153 | `declaration-track:c34b5433a0b26711b6755d9ce1fec49bc8439710b44dfdad1f77e4029a931240` |
| 12 | `def` | [MonCat.units](../../../../../mathematics/Algebra/GroupTheory/Adjunctions/Variant9f397419ce9fbd569a38b98beed009172f4cf28a4132d6f834d1062d2d3e3c42.lean/declarations/moncat-units--319294df80ecd11ca2e1a651.md) | 171 | `declaration-track:319294df80ecd11ca2e1a651ec1cba3e1079178b53096e320b82e563ae82a2f2` |
| 13 | `def` | [GroupCat.forget₂MonAdj](../../../../../mathematics/Algebra/GroupTheory/Adjunctions/Variant9f397419ce9fbd569a38b98beed009172f4cf28a4132d6f834d1062d2d3e3c42.lean/declarations/groupcat-forget-monadj--44a5aa97505ca4701f5d90d0.md) | 179 | `declaration-track:44a5aa97505ca4701f5d90d047d051521b521e4703ddd60fd09e747701cf54dd` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Adjunctions/Variant9f397419ce9fbd569a38b98beed009172f4cf28a4132d6f834d1062d2d3e3c42.lean/declarations/instance--a7b03b0f5fde7f35b07ab653.md) | 195 | `declaration-track:a7b03b0f5fde7f35b07ab653684edea0398728df2e014cc3cf2f46cd6732ab76` |
| 15 | `def` | [CommMonCat.units](../../../../../mathematics/Algebra/GroupTheory/Adjunctions/Variant9f397419ce9fbd569a38b98beed009172f4cf28a4132d6f834d1062d2d3e3c42.lean/declarations/commmoncat-units--4e174fb0b09db7ff7fa46ce6.md) | 200 | `declaration-track:4e174fb0b09db7ff7fa46ce69e153d1bfc55f1a47351131e72b3915fb4a3cebc` |
| 16 | `def` | [CommGroupCat.forget₂CommMonAdj](../../../../../mathematics/Algebra/GroupTheory/Adjunctions/Variant9f397419ce9fbd569a38b98beed009172f4cf28a4132d6f834d1062d2d3e3c42.lean/declarations/commgroupcat-forget-commmonadj--3a045a9cd36002593ea2bdc3.md) | 208 | `declaration-track:3a045a9cd36002593ea2bdc3d0850000a59fb158fd64c21729e187338cc54abb` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Adjunctions/Variant9f397419ce9fbd569a38b98beed009172f4cf28a4132d6f834d1062d2d3e3c42.lean/declarations/instance--e8ef571b9c8e5892ad2a43f9.md) | 224 | `declaration-track:e8ef571b9c8e5892ad2a43f9a6c25fce5b21236a5a3805c22dcc667838e6efaa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
