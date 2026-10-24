# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant50e51d8717119e0a2b4112ae1e490b16c07768b3c881b5a073855ebe5e2f078f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a120391662d666a9d17de3d0f9e22f6a58ca3be",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant50e51d8717119e0a2b4112ae1e490b16c07768b3c881b5a073855ebe5e2f078f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant50e51d8717119e0a2b4112ae1e490b16c07768b3c881b5a073855ebe5e2f078f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant50e51d8717119e0a2b4112ae1e490b16c07768b3c881b5a073855ebe5e2f078f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a120391662d666a9d17de3d0f9e22f6a58ca3be`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant50e51d8717119e0a2b4112ae1e490b16c07768b3c881b5a073855ebe5e2f078f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant50e51d8717119e0a2b4112ae1e490b16c07768b3c881b5a073855ebe5e2f078f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Semiconj.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [inv_inv_symm_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant50e51d8717119e0a2b4112ae1e490b16c07768b3c881b5a073855ebe5e2f078f.lean/declarations/inv-inv-symm-iff--b64066300a76052e82442ae2.md) | 23 | `result-track:b64066300a76052e82442ae2b9fd2475cd70c8efe28945d0cae3b3c1bc137c40` |
| 2 | `lemma` | [inv_symm_left_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant50e51d8717119e0a2b4112ae1e490b16c07768b3c881b5a073855ebe5e2f078f.lean/declarations/inv-symm-left-iff--f14321c3a56264ec3908bab0.md) | 33 | `result-track:f14321c3a56264ec3908bab00167baa9fe83387a6e6531c335fe0e4f882541ff` |
| 3 | `lemma` | [inv_right_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant50e51d8717119e0a2b4112ae1e490b16c07768b3c881b5a073855ebe5e2f078f.lean/declarations/inv-right-iff--94053a860f4401df9eb764c4.md) | 38 | `result-track:94053a860f4401df9eb764c44cc33401920ef9eee16afff448cd1c7feb379f65` |
| 4 | `lemma` | [zpow_right](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant50e51d8717119e0a2b4112ae1e490b16c07768b3c881b5a073855ebe5e2f078f.lean/declarations/zpow-right--a89e7122ffffc75e332e1f9a.md) | 43 | `result-track:a89e7122ffffc75e332e1f9a9b22b5b25a29ad57fd3b0505d1f5dbe1bc7f2084` |
| 5 | `lemma` | [eq_one_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant50e51d8717119e0a2b4112ae1e490b16c07768b3c881b5a073855ebe5e2f078f.lean/declarations/eq-one-iff--46fa67492749faf0ac17cf68.md) | 51 | `result-track:46fa67492749faf0ac17cf682940ed9558ac67c0dfb48649139187c71740e8ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
