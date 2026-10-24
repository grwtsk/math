# Verification target: GRWTSK.Algebra.Defs.Variant14253388ba8880aaf95b48570e6a71281513b9ced87be94493e31f1d18a1c88f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a366e08d536aa7b4a8ec7e8dfb56088c75e30d7c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variant14253388ba8880aaf95b48570e6a71281513b9ced87be94493e31f1d18a1c88f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variant14253388ba8880aaf95b48570e6a71281513b9ced87be94493e31f1d18a1c88f.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variant14253388ba8880aaf95b48570e6a71281513b9ced87be94493e31f1d18a1c88f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a366e08d536aa7b4a8ec7e8dfb56088c75e30d7c`.

Source path: `GRWTSK/Algebra/Defs/Variant14253388ba8880aaf95b48570e6a71281513b9ced87be94493e31f1d18a1c88f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variant14253388ba8880aaf95b48570e6a71281513b9ced87be94493e31f1d18a1c88f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.Quotient.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.MaximalIdeal.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ResidueField](../../../../mathematics/Algebra/Defs/Variant14253388ba8880aaf95b48570e6a71281513b9ced87be94493e31f1d18a1c88f.lean/declarations/residuefield--cb03e24b7030604c8515cccc.md) | 24 | `declaration-track:cb03e24b7030604c8515cccc1b1885ae0ea0fc0501f46cd34624d11f3013401c` |
| 2 | `instance` | [ResidueFieldCommRing](../../../../mathematics/Algebra/Defs/Variant14253388ba8880aaf95b48570e6a71281513b9ced87be94493e31f1d18a1c88f.lean/declarations/residuefieldcommring--0019141aa355388f1e0bb25f.md) | 30 | `declaration-track:0019141aa355388f1e0bb25f28832a813bf07df350873a3f5b0a3a0d6e643ad9` |
| 3 | `instance` | [ResidueFieldInhabited](../../../../mathematics/Algebra/Defs/Variant14253388ba8880aaf95b48570e6a71281513b9ced87be94493e31f1d18a1c88f.lean/declarations/residuefieldinhabited--244c17e7bffdbed89b70dc3c.md) | 33 | `declaration-track:244c17e7bffdbed89b70dc3cebdbebb60ddf51cb870749f8f614d57848d05e94` |
| 4 | `instance` | [ResidueField.field](../../../../mathematics/Algebra/Defs/Variant14253388ba8880aaf95b48570e6a71281513b9ced87be94493e31f1d18a1c88f.lean/declarations/residuefield-field--533e916dec06b589fbf4a401.md) | 36 | `declaration-track:533e916dec06b589fbf4a401dffc0b003f43ce2ed5ef7e38f255aeb95e8bb401` |
| 5 | `def` | [residue](../../../../mathematics/Algebra/Defs/Variant14253388ba8880aaf95b48570e6a71281513b9ced87be94493e31f1d18a1c88f.lean/declarations/residue--7c7e8183f170a0c022cacc86.md) | 40 | `declaration-track:7c7e8183f170a0c022cacc863396217a6667245e729401f030d89c1bac9f9b61` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
