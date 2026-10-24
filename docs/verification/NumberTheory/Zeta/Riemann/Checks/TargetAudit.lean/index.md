# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.TargetAudit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bacf70f97d1afcb4a95970875d8faa4ad3f60c32",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/TargetAudit.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/TargetAudit.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/TargetAudit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bacf70f97d1afcb4a95970875d8faa4ad3f60c32`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/TargetAudit.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/TargetAudit.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann`](../../../../../../mathematics/NumberTheory/Zeta/Riemann.lean/index.md) — import line 1; pinned internal source present.
- `Lean` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/TargetAudit.lean/declarations/example--1096ee60befea530ee588089.md) | 7 | `declaration-track:1096ee60befea530ee588089660bdb62756802f805ccaacb8077ab32f836157b` |
| 2 | `example` | [(anonymous)](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/TargetAudit.lean/declarations/example--5c9f18be6730bd945702b55b.md) | 9 | `declaration-track:5c9f18be6730bd945702b55be9ab4f0683f81d1a44cf6b0c16c4261ca6a118a9` |
| 3 | `example` | [(anonymous)](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/TargetAudit.lean/declarations/example--9ba1812f71cb105c1e64cafb.md) | 11 | `declaration-track:9ba1812f71cb105c1e64cafb4f35d2af958f12acd2ff8aa718cfaa81e31b005f` |
| 4 | `example` | [(anonymous)](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/TargetAudit.lean/declarations/example--32a8295c967f08a8ae2c161f.md) | 12 | `declaration-track:32a8295c967f08a8ae2c161f375197b2c7a1fd04a13f2890f6534ed332dd1f6c` |
| 5 | `example` | [(anonymous)](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/TargetAudit.lean/declarations/example--1fe507d81b770672052ca048.md) | 16 | `declaration-track:1fe507d81b770672052ca0485dac465394458f9b8ed863bc7e48898bf59cde44` |
| 6 | `example` | [(anonymous)](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/TargetAudit.lean/declarations/example--fad6a6c274e15e9635d5fa80.md) | 17 | `declaration-track:fad6a6c274e15e9635d5fa8086e16ff16adc61d360c29b8cab220e57c938277a` |
| 7 | `elab` | [(anonymous)](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/TargetAudit.lean/declarations/elab--948d033676182ec2ec825a39.md) | 20 | `declaration-track:948d033676182ec2ec825a3900fbed25a6a741e21216799d271b534e85252462` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
