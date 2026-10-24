# Verification target: GRWTSK.Algebra.Transport.Variant716bf1ee673e9bc179d465aa54b5ec845560c814b76f23a9e629e0b04066732f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd771ec8f8b64b6f7833938b3f3cef9ba2563f60",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Transport/Variant716bf1ee673e9bc179d465aa54b5ec845560c814b76f23a9e629e0b04066732f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Transport/Variant716bf1ee673e9bc179d465aa54b5ec845560c814b76f23a9e629e0b04066732f.lean/index.md) · [Full source](../../../../mathematics/Algebra/Transport/Variant716bf1ee673e9bc179d465aa54b5ec845560c814b76f23a9e629e0b04066732f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd771ec8f8b64b6f7833938b3f3cef9ba2563f60`.

Source path: `GRWTSK/Algebra/Transport/Variant716bf1ee673e9bc179d465aa54b5ec845560c814b76f23a9e629e0b04066732f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Transport/Variant716bf1ee673e9bc179d465aa54b5ec845560c814b76f23a9e629e0b04066732f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FilesystemHomology.EditComplex` — import line 1; external provider; requires a separately pinned dependency.
- `FilesystemDynamics.FirstReturn` — import line 2; external provider; requires a separately pinned dependency.
- `DAF.Homology.HomologicalLift` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toHomologicalLift](../../../../mathematics/Algebra/Transport/Variant716bf1ee673e9bc179d465aa54b5ec845560c814b76f23a9e629e0b04066732f.lean/declarations/tohomologicallift--5fa096eca88c1a39307d7bd2.md) | 48 | `declaration-track:5fa096eca88c1a39307d7bd29e50671af877837a457935a263be80f83f699c56` |
| 2 | `def` | [filesystemFirstReturn_induces_homologyIso](../../../../mathematics/Algebra/Transport/Variant716bf1ee673e9bc179d465aa54b5ec845560c814b76f23a9e629e0b04066732f.lean/declarations/filesystemfirstreturn-induces-homologyiso--440cf6100d621b32e17f3f5d.md) | 64 | `declaration-track:440cf6100d621b32e17f3f5db6e073c4087ef30a2fcf90f1f8f9bc0e49fa80b6` |
| 3 | `theorem` | [filesystemFirstReturn_preserves_torsion](../../../../mathematics/Algebra/Transport/Variant716bf1ee673e9bc179d465aa54b5ec845560c814b76f23a9e629e0b04066732f.lean/declarations/filesystemfirstreturn-preserves-torsion--68252104817f0f644551c3e3.md) | 82 | `result-track:68252104817f0f644551c3e3b302dbf26a81224b75c6400f35ff339949ec85cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
