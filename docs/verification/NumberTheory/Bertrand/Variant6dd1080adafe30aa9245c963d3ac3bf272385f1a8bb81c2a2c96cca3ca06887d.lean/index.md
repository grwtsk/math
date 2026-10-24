# Verification target: GRWTSK.NumberTheory.Bertrand.Variant6dd1080adafe30aa9245c963d3ac3bf272385f1a8bb81c2a2c96cca3ca06887d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ea5b8b1e1c764d0b7aa2aaf3ae9b476e9ecdb4f5",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Bertrand/Variant6dd1080adafe30aa9245c963d3ac3bf272385f1a8bb81c2a2c96cca3ca06887d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Bertrand/Variant6dd1080adafe30aa9245c963d3ac3bf272385f1a8bb81c2a2c96cca3ca06887d.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Bertrand/Variant6dd1080adafe30aa9245c963d3ac3bf272385f1a8bb81c2a2c96cca3ca06887d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ea5b8b1e1c764d0b7aa2aaf3ae9b476e9ecdb4f5`.

Source path: `GRWTSK/NumberTheory/Bertrand/Variant6dd1080adafe30aa9245c963d3ac3bf272385f1a8bb81c2a2c96cca3ca06887d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Bertrand/Variant6dd1080adafe30aa9245c963d3ac3bf272385f1a8bb81c2a2c96cca3ca06887d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Bertrand` — import line 1; external provider; requires a separately pinned dependency.
- `FCRS.Transport.Theorem` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bertrandProfile](../../../../mathematics/NumberTheory/Bertrand/Variant6dd1080adafe30aa9245c963d3ac3bf272385f1a8bb81c2a2c96cca3ca06887d.lean/declarations/bertrandprofile--bf46b1b17fd0fe95e180153e.md) | 7 | `declaration-track:bf46b1b17fd0fe95e180153e9aed2115e06a2db146d270304b724647d492b81e` |
| 2 | `def` | [bertrandPrimeSourceProfile](../../../../mathematics/NumberTheory/Bertrand/Variant6dd1080adafe30aa9245c963d3ac3bf272385f1a8bb81c2a2c96cca3ca06887d.lean/declarations/bertrandprimesourceprofile--aaaa07ec29bd5ab82ba57f66.md) | 25 | `declaration-track:aaaa07ec29bd5ab82ba57f66807bf37f85f20acaa775f2001581fade9d7a6efc` |
| 3 | `theorem` | [bertrandProof](../../../../mathematics/NumberTheory/Bertrand/Variant6dd1080adafe30aa9245c963d3ac3bf272385f1a8bb81c2a2c96cca3ca06887d.lean/declarations/bertrandproof--b2045e5243f55a1bac41c8a2.md) | 43 | `result-track:b2045e5243f55a1bac41c8a2bdeabb920ac981a2a7c5288b9d47729662e75c02` |
| 4 | `theorem` | [bertrandAdmissible](../../../../mathematics/NumberTheory/Bertrand/Variant6dd1080adafe30aa9245c963d3ac3bf272385f1a8bb81c2a2c96cca3ca06887d.lean/declarations/bertrandadmissible--34bd359f1001f313044109b6.md) | 57 | `result-track:34bd359f1001f313044109b60a875355364b1e4ccf86fdfbb1693ec751a0cf9a` |
| 5 | `theorem` | [bertrandIntervalClaim](../../../../mathematics/NumberTheory/Bertrand/Variant6dd1080adafe30aa9245c963d3ac3bf272385f1a8bb81c2a2c96cca3ca06887d.lean/declarations/bertrandintervalclaim--87570fa8d96eb76c07529ea7.md) | 66 | `result-track:87570fa8d96eb76c07529ea7a7a9f7d1cc12091b8c7758278b062fc368564f88` |
| 6 | `def` | [bertrandCertifiedTheorem](../../../../mathematics/NumberTheory/Bertrand/Variant6dd1080adafe30aa9245c963d3ac3bf272385f1a8bb81c2a2c96cca3ca06887d.lean/declarations/bertrandcertifiedtheorem--0d6678d2056194871490a086.md) | 72 | `declaration-track:0d6678d2056194871490a086207ce7176805fe1b92e8e1fe4fab8dd50aeb3429` |
| 7 | `def` | [bertrandPrimeSourceRefines](../../../../mathematics/NumberTheory/Bertrand/Variant6dd1080adafe30aa9245c963d3ac3bf272385f1a8bb81c2a2c96cca3ca06887d.lean/declarations/bertrandprimesourcerefines--8988504b7bcc98126e8f4519.md) | 83 | `declaration-track:8988504b7bcc98126e8f45197099e79badfd8228dbcdb68e0068d2cfb204d70e` |
| 8 | `theorem` | [bertrandPrimeSourceIntervalClaim](../../../../mathematics/NumberTheory/Bertrand/Variant6dd1080adafe30aa9245c963d3ac3bf272385f1a8bb81c2a2c96cca3ca06887d.lean/declarations/bertrandprimesourceintervalclaim--53377343f71871d7071c487c.md) | 100 | `result-track:53377343f71871d7071c487cdc9be4e1eed081b3feda139a9cb14232b2f22edb` |
| 9 | `def` | [bertrandPrimeSourceCertifiedTheorem](../../../../mathematics/NumberTheory/Bertrand/Variant6dd1080adafe30aa9245c963d3ac3bf272385f1a8bb81c2a2c96cca3ca06887d.lean/declarations/bertrandprimesourcecertifiedtheorem--a7fd5044bbd7f4d9c76b6507.md) | 105 | `declaration-track:a7fd5044bbd7f4d9c76b65070112c0cc759c722659982392062e6168b592931b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
