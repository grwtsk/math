# Verification target: GRWTSK.Algebra.GroupTheory.GaloisDescent.Variant3a812e3ec02cb8d305fe1755763614855842147917071bda5f8bbe7de3f9c78a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "faaea7dd8114ba50c9b701066437dac39ad673e7",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/GaloisDescent/Variant3a812e3ec02cb8d305fe1755763614855842147917071bda5f8bbe7de3f9c78a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/GaloisDescent/Variant3a812e3ec02cb8d305fe1755763614855842147917071bda5f8bbe7de3f9c78a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/GaloisDescent/Variant3a812e3ec02cb8d305fe1755763614855842147917071bda5f8bbe7de3f9c78a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `faaea7dd8114ba50c9b701066437dac39ad673e7`.

Source path: `GRWTSK/Algebra/GroupTheory/GaloisDescent/Variant3a812e3ec02cb8d305fe1755763614855842147917071bda5f8bbe7de3f9c78a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/GaloisDescent/Variant3a812e3ec02cb8d305fe1755763614855842147917071bda5f8bbe7de3f9c78a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Defs` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GaloisCocycle](../../../../../mathematics/Algebra/GroupTheory/GaloisDescent/Variant3a812e3ec02cb8d305fe1755763614855842147917071bda5f8bbe7de3f9c78a.lean/declarations/galoiscocycle--da6c8c582326f2b53128906e.md) | 17 | `declaration-track:da6c8c582326f2b53128906eae0b7a4c256ceae81aaa21b190b9dfb6ab205790` |
| 2 | `structure` | [GaloisDescentDatum](../../../../../mathematics/Algebra/GroupTheory/GaloisDescent/Variant3a812e3ec02cb8d305fe1755763614855842147917071bda5f8bbe7de3f9c78a.lean/declarations/galoisdescentdatum--3c963296869cda9585e149a9.md) | 31 | `declaration-track:3c963296869cda9585e149a9e04ef966af2db7294822ea2b07ecda323508abee` |
| 3 | `structure` | [EffectiveDescentCertificate](../../../../../mathematics/Algebra/GroupTheory/GaloisDescent/Variant3a812e3ec02cb8d305fe1755763614855842147917071bda5f8bbe7de3f9c78a.lean/declarations/effectivedescentcertificate--90687bccf6ece811913736e7.md) | 43 | `declaration-track:90687bccf6ece811913736e7afb4289c1cb1890934eb11e6f447c89211fe0ee6` |
| 4 | `theorem` | [EffectiveDescentCertificate.exists_descended](../../../../../mathematics/Algebra/GroupTheory/GaloisDescent/Variant3a812e3ec02cb8d305fe1755763614855842147917071bda5f8bbe7de3f9c78a.lean/declarations/effectivedescentcertificate-exists-descended--9b9e479b89371c8df9e9c205.md) | 54 | `result-track:9b9e479b89371c8df9e9c2055cee8408a331840c439a402cbc2230bc20429e42` |
| 5 | `theorem` | [EffectiveDescentCertificate.compatibility](../../../../../mathematics/Algebra/GroupTheory/GaloisDescent/Variant3a812e3ec02cb8d305fe1755763614855842147917071bda5f8bbe7de3f9c78a.lean/declarations/effectivedescentcertificate-compatibility--5066fc9dc17254270bf85e58.md) | 70 | `result-track:5066fc9dc17254270bf85e583047d4ec60377de19b586b5cfa587a895605d168` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
