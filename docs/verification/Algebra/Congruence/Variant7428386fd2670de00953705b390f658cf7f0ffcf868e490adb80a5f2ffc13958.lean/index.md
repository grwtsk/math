# Verification target: GRWTSK.Algebra.Congruence.Variant7428386fd2670de00953705b390f658cf7f0ffcf868e490adb80a5f2ffc13958

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13ff90e2feb7c8b15747d8aded9686c324d6791b",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Congruence/Variant7428386fd2670de00953705b390f658cf7f0ffcf868e490adb80a5f2ffc13958.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Congruence/Variant7428386fd2670de00953705b390f658cf7f0ffcf868e490adb80a5f2ffc13958.lean/index.md) · [Full source](../../../../mathematics/Algebra/Congruence/Variant7428386fd2670de00953705b390f658cf7f0ffcf868e490adb80a5f2ffc13958.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13ff90e2feb7c8b15747d8aded9686c324d6791b`.

Source path: `GRWTSK/Algebra/Congruence/Variant7428386fd2670de00953705b390f658cf7f0ffcf868e490adb80a5f2ffc13958.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Congruence/Variant7428386fd2670de00953705b390f658cf7f0ffcf868e490adb80a5f2ffc13958.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fin.Tuple.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Setoid.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Algebra](../../../../mathematics/Algebra/Congruence/Variant7428386fd2670de00953705b390f658cf7f0ffcf868e490adb80a5f2ffc13958.lean/declarations/algebra--6057007d4f4453c75aed5d36.md) | 24 | `declaration-track:6057007d4f4453c75aed5d36b3436066a0f84fcafac47daac99829285ffd5d09` |
| 2 | `def` | [Compatible](../../../../mathematics/Algebra/Congruence/Variant7428386fd2670de00953705b390f658cf7f0ffcf868e490adb80a5f2ffc13958.lean/declarations/compatible--1351058c30d0f4ee33a75557.md) | 30 | `declaration-track:1351058c30d0f4ee33a7555744a7ece0d12f66affa8bb314e8fd1d8fdfb79fe1` |
| 3 | `def` | [Congruence](../../../../mathematics/Algebra/Congruence/Variant7428386fd2670de00953705b390f658cf7f0ffcf868e490adb80a5f2ffc13958.lean/declarations/congruence--e8000f96c9614b0a73cc78cd.md) | 35 | `declaration-track:e8000f96c9614b0a73cc78cd22f7158bf10a133abce3fc5e8d428052aa6aebdb` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Congruence/Variant7428386fd2670de00953705b390f658cf7f0ffcf868e490adb80a5f2ffc13958.lean/declarations/instance--ab1f1c8c0cabe3c4f29d970e.md) | 38 | `declaration-track:ab1f1c8c0cabe3c4f29d970e254c985c3ee01a4698ab18df61f8ae7de35e8b1c` |
| 5 | `def` | [Representable](../../../../mathematics/Algebra/Congruence/Variant7428386fd2670de00953705b390f658cf7f0ffcf868e490adb80a5f2ffc13958.lean/declarations/representable--4f05125c3adeecadfc89f898.md) | 42 | `declaration-track:4f05125c3adeecadfc89f898637719c94eb90f5ce9c7e2f856f0e408a0388446` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Congruence/Variant7428386fd2670de00953705b390f658cf7f0ffcf868e490adb80a5f2ffc13958.lean/declarations/instance--5bfcbb9f666c520dabbcc905.md) | 45 | `declaration-track:5bfcbb9f666c520dabbcc9059f4fcf995652cf704a85b90a6f54c414fd760dbb` |
| 7 | `theorem` | [ext](../../../../mathematics/Algebra/Congruence/Variant7428386fd2670de00953705b390f658cf7f0ffcf868e490adb80a5f2ffc13958.lean/declarations/ext--0fe5cfbd555633b69b053eb8.md) | 53 | `result-track:0fe5cfbd555633b69b053eb85eef9cf014e80522f82350cf5d0b85d96a73130b` |
| 8 | `theorem` | [refl](../../../../mathematics/Algebra/Congruence/Variant7428386fd2670de00953705b390f658cf7f0ffcf868e490adb80a5f2ffc13958.lean/declarations/refl--6ec7d2185b765f33d946a6e6.md) | 57 | `result-track:6ec7d2185b765f33d946a6e627b28dde242c5dbe1a4e7a1efb07e47d01e460ba` |
| 9 | `theorem` | [symm](../../../../mathematics/Algebra/Congruence/Variant7428386fd2670de00953705b390f658cf7f0ffcf868e490adb80a5f2ffc13958.lean/declarations/symm--e56171458fdebb3e5c695331.md) | 59 | `result-track:e56171458fdebb3e5c695331e73b47c8c830453aade8f2a6b03cdf2a6e3dd158` |
| 10 | `theorem` | [trans](../../../../mathematics/Algebra/Congruence/Variant7428386fd2670de00953705b390f658cf7f0ffcf868e490adb80a5f2ffc13958.lean/declarations/trans--7a08f0f8c7ebd6000f9c564d.md) | 62 | `result-track:7a08f0f8c7ebd6000f9c564da5a76d587ca7382939f9e5ffadde4531cc648621` |
| 11 | `theorem` | [compatible](../../../../mathematics/Algebra/Congruence/Variant7428386fd2670de00953705b390f658cf7f0ffcf868e490adb80a5f2ffc13958.lean/declarations/compatible--926adfbc65980a247565b8e0.md) | 66 | `result-track:926adfbc65980a247565b8e089aaf02b841cd0c8781f414f6ae44a275325e92d` |
| 12 | `def` | [equality](../../../../mathematics/Algebra/Congruence/Variant7428386fd2670de00953705b390f658cf7f0ffcf868e490adb80a5f2ffc13958.lean/declarations/equality--5427844807ca9b07fa16205f.md) | 71 | `declaration-track:5427844807ca9b07fa16205feb0ca8085cf442fc48d267be3946d04e8b744a2c` |
| 13 | `theorem` | [equality_apply](../../../../mathematics/Algebra/Congruence/Variant7428386fd2670de00953705b390f658cf7f0ffcf868e490adb80a5f2ffc13958.lean/declarations/equality-apply--cbbe70913fbaa745f3fc5108.md) | 78 | `result-track:cbbe70913fbaa745f3fc51083ca089ea78bbea5dfc95a956be3b306eeae8832f` |
| 14 | `theorem` | [equality_le](../../../../mathematics/Algebra/Congruence/Variant7428386fd2670de00953705b390f658cf7f0ffcf868e490adb80a5f2ffc13958.lean/declarations/equality-le--b4bb6d4ba9e66ba4ac0b632f.md) | 81 | `result-track:b4bb6d4ba9e66ba4ac0b632f67928923dd2fc9db8b51b29f09389f3553a38681` |
| 15 | `def` | [principal](../../../../mathematics/Algebra/Congruence/Variant7428386fd2670de00953705b390f658cf7f0ffcf868e490adb80a5f2ffc13958.lean/declarations/principal--93c142603d52960a516df252.md) | 87 | `declaration-track:93c142603d52960a516df2524cab75f87449ad880f65713877fc0f7614e5be13` |
| 16 | `theorem` | [principal_pair](../../../../mathematics/Algebra/Congruence/Variant7428386fd2670de00953705b390f658cf7f0ffcf868e490adb80a5f2ffc13958.lean/declarations/principal-pair--05fcc95c51a9738859282729.md) | 96 | `result-track:05fcc95c51a9738859282729665dd5d2327190eba9215c91b20b86e80d8ea498` |
| 17 | `theorem` | [principal_le](../../../../mathematics/Algebra/Congruence/Variant7428386fd2670de00953705b390f658cf7f0ffcf868e490adb80a5f2ffc13958.lean/declarations/principal-le--f7acda4ae3eed0a064dc2275.md) | 99 | `result-track:f7acda4ae3eed0a064dc2275e696af1c8c2030fae400772bbcecdb1e8cee0c8b` |
| 18 | `theorem` | [principal_comm](../../../../mathematics/Algebra/Congruence/Variant7428386fd2670de00953705b390f658cf7f0ffcf868e490adb80a5f2ffc13958.lean/declarations/principal-comm--092f10d453d9266f91bbfaef.md) | 107 | `result-track:092f10d453d9266f91bbfaefac85e0661547cd739ed9a176aaa1d71b3da40f47` |
| 19 | `theorem` | [relation_map_of_updates](../../../../mathematics/Algebra/Congruence/Variant7428386fd2670de00953705b390f658cf7f0ffcf868e490adb80a5f2ffc13958.lean/declarations/relation-map-of-updates--928b4357f70956567d400024.md) | 117 | `result-track:928b4357f70956567d400024ad8916add8dc18bd19298a216f87eed6abb31d90` |
| 20 | `def` | [translation](../../../../mathematics/Algebra/Congruence/Variant7428386fd2670de00953705b390f658cf7f0ffcf868e490adb80a5f2ffc13958.lean/declarations/translation--203f156d86bf66bef91c6acb.md) | 144 | `declaration-track:203f156d86bf66bef91c6acbb4714de4a464e88f27a25a8daf74f5db213f6630` |
| 21 | `theorem` | [translation_preserves](../../../../mathematics/Algebra/Congruence/Variant7428386fd2670de00953705b390f658cf7f0ffcf868e490adb80a5f2ffc13958.lean/declarations/translation-preserves--1c52f3d50b99655a57e89a92.md) | 149 | `result-track:1c52f3d50b99655a57e89a92a70ae9952eef3a0c6b67bd127b65e75ae4d584e7` |
| 22 | `theorem` | [compatible_iff_translations](../../../../mathematics/Algebra/Congruence/Variant7428386fd2670de00953705b390f658cf7f0ffcf868e490adb80a5f2ffc13958.lean/declarations/compatible-iff-translations--f6f49c81d2420430d3912fc6.md) | 160 | `result-track:f6f49c81d2420430d3912fc63e400f0549882a6f325dbe477e049153b9bb6455` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
