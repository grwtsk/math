# Verification target: GRWTSK.Analysis.BranchDescentWitness.Variantdf74882673e25901a6c89d2ad6900ade3fa551b1eb05913d3faf2a19a65dd6b9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ccefab6bacf618fecf4182f542b2367444656c9",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/BranchDescentWitness/Variantdf74882673e25901a6c89d2ad6900ade3fa551b1eb05913d3faf2a19a65dd6b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/BranchDescentWitness/Variantdf74882673e25901a6c89d2ad6900ade3fa551b1eb05913d3faf2a19a65dd6b9.lean/index.md) · [Full source](../../../../mathematics/Analysis/BranchDescentWitness/Variantdf74882673e25901a6c89d2ad6900ade3fa551b1eb05913d3faf2a19a65dd6b9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ccefab6bacf618fecf4182f542b2367444656c9`.

Source path: `GRWTSK/Analysis/BranchDescentWitness/Variantdf74882673e25901a6c89d2ad6900ade3fa551b1eb05913d3faf2a19a65dd6b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/BranchDescentWitness/Variantdf74882673e25901a6c89d2ad6900ade3fa551b1eb05913d3faf2a19a65dd6b9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.BranchRayleighVariation` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.Conversation.BranchSourceSymmetry` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.LocalExtr.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Setoid.Basic` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Order.FixedPoints` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HasDescent](../../../../mathematics/Analysis/BranchDescentWitness/Variantdf74882673e25901a6c89d2ad6900ade3fa551b1eb05913d3faf2a19a65dd6b9.lean/declarations/hasdescent--0778412609208bba62c5fb84.md) | 45 | `declaration-track:0778412609208bba62c5fb843fb0050dd9795d469383f1764b573e1957c7f8e5` |
| 2 | `theorem` | [accounting_descends_iff](../../../../mathematics/Analysis/BranchDescentWitness/Variantdf74882673e25901a6c89d2ad6900ade3fa551b1eb05913d3faf2a19a65dd6b9.lean/declarations/accounting-descends-iff--a4ca760186841523277827a2.md) | 50 | `result-track:a4ca760186841523277827a2d881eb20e63de0ad5cb14c8bec3ffe94228258c0` |
| 3 | `theorem` | [hasDescent_map](../../../../mathematics/Analysis/BranchDescentWitness/Variantdf74882673e25901a6c89d2ad6900ade3fa551b1eb05913d3faf2a19a65dd6b9.lean/declarations/hasdescent-map--94b713cad8e496fbb8d9809e.md) | 66 | `result-track:94b713cad8e496fbb8d9809e2057c320bdf291204c779c87759273cddda2580b` |
| 4 | `theorem` | [hasDescent_of_lifting](../../../../mathematics/Analysis/BranchDescentWitness/Variantdf74882673e25901a6c89d2ad6900ade3fa551b1eb05913d3faf2a19a65dd6b9.lean/declarations/hasdescent-of-lifting--7b253ae9cca8dced4d78f74f.md) | 76 | `result-track:7b253ae9cca8dced4d78f74f9cc5ccda05462129a7883ddf049251c4a58dd158` |
| 5 | `theorem` | [hasDescent_iff_of_lifting](../../../../mathematics/Analysis/BranchDescentWitness/Variantdf74882673e25901a6c89d2ad6900ade3fa551b1eb05913d3faf2a19a65dd6b9.lean/declarations/hasdescent-iff-of-lifting--8da71dda6d8a65b3cb46ea10.md) | 88 | `result-track:8da71dda6d8a65b3cb46ea106461ad3483ab9ca48d206ce530595470477400a7` |
| 6 | `theorem` | [descent_changes_observation](../../../../mathematics/Analysis/BranchDescentWitness/Variantdf74882673e25901a6c89d2ad6900ade3fa551b1eb05913d3faf2a19a65dd6b9.lean/declarations/descent-changes-observation--2367f40f5f56fef51f732de9.md) | 98 | `result-track:2367f40f5f56fef51f732de93e8f6790f0ceda5d91a11ec9375b7033348b4656` |
| 7 | `theorem` | [no_descent_of_observation_invariant](../../../../mathematics/Analysis/BranchDescentWitness/Variantdf74882673e25901a6c89d2ad6900ade3fa551b1eb05913d3faf2a19a65dd6b9.lean/declarations/no-descent-of-observation-invariant--cf9db6eb99acd5c0d422ae71.md) | 105 | `result-track:cf9db6eb99acd5c0d422ae712c203a192a1ba60c1e8fbd5b4951ac964369ad54` |
| 8 | `theorem` | [surjective_observation_does_not_lift_witness](../../../../mathematics/Analysis/BranchDescentWitness/Variantdf74882673e25901a6c89d2ad6900ade3fa551b1eb05913d3faf2a19a65dd6b9.lean/declarations/surjective-observation-does-not-lift-witness--703d0d975f6748e024bc0cb8.md) | 117 | `result-track:703d0d975f6748e024bc0cb892ea53a61572765518bd607df30ec128e4aee85e` |
| 9 | `def` | [gatedStep](../../../../mathematics/Analysis/BranchDescentWitness/Variantdf74882673e25901a6c89d2ad6900ade3fa551b1eb05913d3faf2a19a65dd6b9.lean/declarations/gatedstep--0b15cfe65e00cb56584e7606.md) | 128 | `declaration-track:0b15cfe65e00cb56584e76066b051c675e8e288cf23700488a0f7bdf70e933dd` |
| 10 | `theorem` | [gated_descent_projects](../../../../mathematics/Analysis/BranchDescentWitness/Variantdf74882673e25901a6c89d2ad6900ade3fa551b1eb05913d3faf2a19a65dd6b9.lean/declarations/gated-descent-projects--0f5cca0a832fe5ef0dc6a0d4.md) | 132 | `result-track:0f5cca0a832fe5ef0dc6a0d469d40d3fcb9a615eab70509a5d9b68963962884a` |
| 11 | `theorem` | [diagnostic_pass_not_core_accept](../../../../mathematics/Analysis/BranchDescentWitness/Variantdf74882673e25901a6c89d2ad6900ade3fa551b1eb05913d3faf2a19a65dd6b9.lean/declarations/diagnostic-pass-not-core-accept--f388d63ec6fe952d8a12a8fe.md) | 139 | `result-track:f388d63ec6fe952d8a12a8fe9abe851a967b18b29347a1386db6531ca346f962` |
| 12 | `theorem` | [source_readout_descends_to_correlation_quotient](../../../../mathematics/Analysis/BranchDescentWitness/Variantdf74882673e25901a6c89d2ad6900ade3fa551b1eb05913d3faf2a19a65dd6b9.lean/declarations/source-readout-descends-to-correlation-quotient--c06092325ed20c9f11b06c0b.md) | 144 | `result-track:c06092325ed20c9f11b06c0b2765c3f1b8eb6fa04c06d00b3c2c0df6ddf44ba9` |
| 13 | `theorem` | [correlation_preserving_edges_no_source_descent](../../../../mathematics/Analysis/BranchDescentWitness/Variantdf74882673e25901a6c89d2ad6900ade3fa551b1eb05913d3faf2a19a65dd6b9.lean/declarations/correlation-preserving-edges-no-source-descent--1b94dd7c2d944f2130b5c9a9.md) | 152 | `result-track:1b94dd7c2d944f2130b5c9a92746bb6c52fae25fa0a32574fa97c04ec8867410` |
| 14 | `def` | [scopeStep](../../../../mathematics/Analysis/BranchDescentWitness/Variantdf74882673e25901a6c89d2ad6900ade3fa551b1eb05913d3faf2a19a65dd6b9.lean/declarations/scopestep--e5f5dd97daa013847ca2523c.md) | 161 | `declaration-track:e5f5dd97daa013847ca2523cff417303415dbc89f1b344ba11f8b79a582377ea` |
| 15 | `def` | [frozenScope](../../../../mathematics/Analysis/BranchDescentWitness/Variantdf74882673e25901a6c89d2ad6900ade3fa551b1eb05913d3faf2a19a65dd6b9.lean/declarations/frozenscope--d9f21d808e98612798fea501.md) | 166 | `declaration-track:d9f21d808e98612798fea501865a5fe642f5039cc4ba3427e364b2bce6d9e14f` |
| 16 | `theorem` | [seed_subset_frozenScope](../../../../mathematics/Analysis/BranchDescentWitness/Variantdf74882673e25901a6c89d2ad6900ade3fa551b1eb05913d3faf2a19a65dd6b9.lean/declarations/seed-subset-frozenscope--c767b123b41f7067cca6389b.md) | 170 | `result-track:c767b123b41f7067cca6389b005f67022161c114020d033980f31e34acc148ed` |
| 17 | `theorem` | [frozenScope_closed](../../../../mathematics/Analysis/BranchDescentWitness/Variantdf74882673e25901a6c89d2ad6900ade3fa551b1eb05913d3faf2a19a65dd6b9.lean/declarations/frozenscope-closed--28a0c2a12a6423b2bc10d047.md) | 180 | `result-track:28a0c2a12a6423b2bc10d04777b981d706da4cd3f8e5496e799f8bd09fc0b7ab` |
| 18 | `theorem` | [frozenScope_le](../../../../mathematics/Analysis/BranchDescentWitness/Variantdf74882673e25901a6c89d2ad6900ade3fa551b1eb05913d3faf2a19a65dd6b9.lean/declarations/frozenscope-le--0ae82b4b051a942e405e5721.md) | 190 | `result-track:0ae82b4b051a942e405e572125e567e2d80777c111f3f67771ab97a19f610ccc` |
| 19 | `theorem` | [frozenScope_subset_universe](../../../../mathematics/Analysis/BranchDescentWitness/Variantdf74882673e25901a6c89d2ad6900ade3fa551b1eb05913d3faf2a19a65dd6b9.lean/declarations/frozenscope-subset-universe--f0b45de9bd7b50cdffc8bfad.md) | 201 | `result-track:f0b45de9bd7b50cdffc8bfad6325140f7072a93922440da327a6d9d336300ba8` |
| 20 | `theorem` | [frozenScope_finite](../../../../mathematics/Analysis/BranchDescentWitness/Variantdf74882673e25901a6c89d2ad6900ade3fa551b1eb05913d3faf2a19a65dd6b9.lean/declarations/frozenscope-finite--d7cf4380b2e013146ab4f6bb.md) | 206 | `result-track:d7cf4380b2e013146ab4f6bb846f7aa607d2a2de67bae79f83781829e6014757` |
| 21 | `theorem` | [frozenScope_idempotent](../../../../mathematics/Analysis/BranchDescentWitness/Variantdf74882673e25901a6c89d2ad6900ade3fa551b1eb05913d3faf2a19a65dd6b9.lean/declarations/frozenscope-idempotent--311ad5e049f779447eb43c9c.md) | 212 | `result-track:311ad5e049f779447eb43c9c7420693de3022ccd4fbdf19eaf43ed36395a62c3` |
| 22 | `theorem` | [discovered_obligation_strictly_expands](../../../../mathematics/Analysis/BranchDescentWitness/Variantdf74882673e25901a6c89d2ad6900ade3fa551b1eb05913d3faf2a19a65dd6b9.lean/declarations/discovered-obligation-strictly-expands--64596f936834c1bf74ed34b8.md) | 220 | `result-track:64596f936834c1bf74ed34b858a16ee78bc0a0fe994ba665764b82ce15857da0` |
| 23 | `theorem` | [exists_small_rayleigh_descent_of_first](../../../../mathematics/Analysis/BranchDescentWitness/Variantdf74882673e25901a6c89d2ad6900ade3fa551b1eb05913d3faf2a19a65dd6b9.lean/declarations/exists-small-rayleigh-descent-of-first--5cd4b7bda2dbb07cacbc6a88.md) | 229 | `result-track:5cd4b7bda2dbb07cacbc6a883c14cc0475a4e32d461e941416dd0b1b0e399b70` |
| 24 | `theorem` | [exists_small_rayleigh_descent_of_second](../../../../mathematics/Analysis/BranchDescentWitness/Variantdf74882673e25901a6c89d2ad6900ade3fa551b1eb05913d3faf2a19a65dd6b9.lean/declarations/exists-small-rayleigh-descent-of-second--7403a50bd4c87f82a90a07d1.md) | 256 | `result-track:7403a50bd4c87f82a90a07d12586ad2f7456f9e892faea8946d1dfc70e7b75ac` |
| 25 | `theorem` | [small_rayleigh_descent_iff](../../../../mathematics/Analysis/BranchDescentWitness/Variantdf74882673e25901a6c89d2ad6900ade3fa551b1eb05913d3faf2a19a65dd6b9.lean/declarations/small-rayleigh-descent-iff--1173ead005242863600dbf40.md) | 276 | `result-track:1173ead005242863600dbf40c335556550772773c8cf3006435665d5280ae6a8` |
| 26 | `theorem` | [has_descent_of_rayleigh_path](../../../../mathematics/Analysis/BranchDescentWitness/Variantdf74882673e25901a6c89d2ad6900ade3fa551b1eb05913d3faf2a19a65dd6b9.lean/declarations/has-descent-of-rayleigh-path--72cba121b8a95443a5ff1287.md) | 302 | `result-track:72cba121b8a95443a5ff1287f740d129e70246dc3acf58b46b76ee7be524d71c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
