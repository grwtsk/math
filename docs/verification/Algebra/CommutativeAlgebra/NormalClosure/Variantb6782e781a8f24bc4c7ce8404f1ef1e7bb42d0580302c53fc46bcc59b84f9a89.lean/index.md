# Verification target: GRWTSK.Algebra.CommutativeAlgebra.NormalClosure.Variantb6782e781a8f24bc4c7ce8404f1ef1e7bb42d0580302c53fc46bcc59b84f9a89

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "39485aa329e08938a22e03af6735b753cd04f07d",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/NormalClosure/Variantb6782e781a8f24bc4c7ce8404f1ef1e7bb42d0580302c53fc46bcc59b84f9a89.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/NormalClosure/Variantb6782e781a8f24bc4c7ce8404f1ef1e7bb42d0580302c53fc46bcc59b84f9a89.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/NormalClosure/Variantb6782e781a8f24bc4c7ce8404f1ef1e7bb42d0580302c53fc46bcc59b84f9a89.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `39485aa329e08938a22e03af6735b753cd04f07d`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/NormalClosure/Variantb6782e781a8f24bc4c7ce8404f1ef1e7bb42d0580302c53fc46bcc59b84f9a89.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/NormalClosure/Variantb6782e781a8f24bc4c7ce8404f1ef1e7bb42d0580302c53fc46bcc59b84f9a89.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Normal` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalClosure](../../../../../mathematics/Algebra/CommutativeAlgebra/NormalClosure/Variantb6782e781a8f24bc4c7ce8404f1ef1e7bb42d0580302c53fc46bcc59b84f9a89.lean/declarations/normalclosure--f1c631aad365200b1f38ef5c.md) | 25 | `declaration-track:f1c631aad365200b1f38ef5c71d165a5399f263bb008c49e4e81898b4eeed655` |
| 2 | `theorem` | [restrictScalars_eq_iSup_adjoin](../../../../../mathematics/Algebra/CommutativeAlgebra/NormalClosure/Variantb6782e781a8f24bc4c7ce8404f1ef1e7bb42d0580302c53fc46bcc59b84f9a89.lean/declarations/restrictscalars-eq-isup-adjoin--722a6c80dc92837cffdace7b.md) | 33 | `result-track:722a6c80dc92837cffdace7b489594e134a95d71da15222fb0cf052fde76c1cf` |
| 3 | `instance` | [normal](../../../../../mathematics/Algebra/CommutativeAlgebra/NormalClosure/Variantb6782e781a8f24bc4c7ce8404f1ef1e7bb42d0580302c53fc46bcc59b84f9a89.lean/declarations/normal--2023ca360a82b834913715da.md) | 57 | `declaration-track:2023ca360a82b834913715daada057043b40ae135092bd7919cf9804477b1e61` |
| 4 | `instance` | [is_finiteDimensional](../../../../../mathematics/Algebra/CommutativeAlgebra/NormalClosure/Variantb6782e781a8f24bc4c7ce8404f1ef1e7bb42d0580302c53fc46bcc59b84f9a89.lean/declarations/is-finitedimensional--00a84a8c3e0df630442a85de.md) | 69 | `declaration-track:00a84a8c3e0df630442a85de8748d895bcdb18e8cb3a4eefdebf9fe08ff6914f` |
| 5 | `instance` | [isScalarTower](../../../../../mathematics/Algebra/CommutativeAlgebra/NormalClosure/Variantb6782e781a8f24bc4c7ce8404f1ef1e7bb42d0580302c53fc46bcc59b84f9a89.lean/declarations/isscalartower--2e4c9ef4ce37b49319d985ae.md) | 76 | `declaration-track:2e4c9ef4ce37b49319d985ae7db656c995869ec8f6e7286d6b97c33b3054cc34` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
