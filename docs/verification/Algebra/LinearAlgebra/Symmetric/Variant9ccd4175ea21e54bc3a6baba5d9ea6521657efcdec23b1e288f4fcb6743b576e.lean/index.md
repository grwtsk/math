# Verification target: GRWTSK.Algebra.LinearAlgebra.Symmetric.Variant9ccd4175ea21e54bc3a6baba5d9ea6521657efcdec23b1e288f4fcb6743b576e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8afe482610c246cc3dca330eddf38d023b5ace4d",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Symmetric/Variant9ccd4175ea21e54bc3a6baba5d9ea6521657efcdec23b1e288f4fcb6743b576e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant9ccd4175ea21e54bc3a6baba5d9ea6521657efcdec23b1e288f4fcb6743b576e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant9ccd4175ea21e54bc3a6baba5d9ea6521657efcdec23b1e288f4fcb6743b576e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8afe482610c246cc3dca330eddf38d023b5ace4d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Symmetric/Variant9ccd4175ea21e54bc3a6baba5d9ea6521657efcdec23b1e288f4fcb6743b576e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Symmetric/Variant9ccd4175ea21e54bc3a6baba5d9ea6521657efcdec23b1e288f4fcb6743b576e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Banach` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.SesquilinearForm` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSymmetric](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant9ccd4175ea21e54bc3a6baba5d9ea6521657efcdec23b1e288f4fcb6743b576e.lean/declarations/issymmetric--d741f90a6a351d2d11b4a026.md) | 68 | `declaration-track:d741f90a6a351d2d11b4a02605c69b9aad2c258a35a778e0c2e6a0b9039f1287` |
| 2 | `theorem` | [isSymmetric_iff_sesqForm](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant9ccd4175ea21e54bc3a6baba5d9ea6521657efcdec23b1e288f4fcb6743b576e.lean/declarations/issymmetric-iff-sesqform--dce71c3ac9fbbe1bc9ba8e9a.md) | 76 | `result-track:dce71c3ac9fbbe1bc9ba8e9a3bde78e4a3ac5b60aadc13709e6ef82582f42687` |
| 3 | `theorem` | [IsSymmetric.conj_inner_sym](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant9ccd4175ea21e54bc3a6baba5d9ea6521657efcdec23b1e288f4fcb6743b576e.lean/declarations/issymmetric-conj-inner-sym--e2d72501f0163514a3788792.md) | 83 | `result-track:e2d72501f0163514a378879266415a57429c48fdf83de13543e66b35279736ab` |
| 4 | `theorem` | [IsSymmetric.apply_clm](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant9ccd4175ea21e54bc3a6baba5d9ea6521657efcdec23b1e288f4fcb6743b576e.lean/declarations/issymmetric-apply-clm--bcd6341fc1ad0d4c4b9c5c40.md) | 88 | `result-track:bcd6341fc1ad0d4c4b9c5c4055dcf8ec56436521fd428e24436227b77ac6c241` |
| 5 | `theorem` | [isSymmetric_zero](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant9ccd4175ea21e54bc3a6baba5d9ea6521657efcdec23b1e288f4fcb6743b576e.lean/declarations/issymmetric-zero--57bd314156fa091bd28d9c52.md) | 93 | `result-track:57bd314156fa091bd28d9c527eceef0fdca86f81eb3841f57414264f96270344` |
| 6 | `theorem` | [isSymmetric_id](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant9ccd4175ea21e54bc3a6baba5d9ea6521657efcdec23b1e288f4fcb6743b576e.lean/declarations/issymmetric-id--3349910bdd09c8161dc53501.md) | 97 | `result-track:3349910bdd09c8161dc53501f910b3c1ca17d4c971b37c5bf73fa0a6e2226400` |
| 7 | `theorem` | [IsSymmetric.add](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant9ccd4175ea21e54bc3a6baba5d9ea6521657efcdec23b1e288f4fcb6743b576e.lean/declarations/issymmetric-add--86d9260794061dd105f070a5.md) | 100 | `result-track:86d9260794061dd105f070a506491048dc14f4673ca05890bb39e5d62cb17baf` |
| 8 | `theorem` | [IsSymmetric.continuous](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant9ccd4175ea21e54bc3a6baba5d9ea6521657efcdec23b1e288f4fcb6743b576e.lean/declarations/issymmetric-continuous--ac8ef5a552b0aa5f2689996c.md) | 109 | `result-track:ac8ef5a552b0aa5f2689996c8f0ff6b517517991e47f97dfde5e21321526b7a2` |
| 9 | `theorem` | [IsSymmetric.coe_reApplyInnerSelf_apply](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant9ccd4175ea21e54bc3a6baba5d9ea6521657efcdec23b1e288f4fcb6743b576e.lean/declarations/issymmetric-coe-reapplyinnerself-apply--c4a4131a5a513ea357b85197.md) | 127 | `result-track:c4a4131a5a513ea357b851979682b50163d82c4313184cf2cb93a4a7da0c5374` |
| 10 | `theorem` | [IsSymmetric.restrict_invariant](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant9ccd4175ea21e54bc3a6baba5d9ea6521657efcdec23b1e288f4fcb6743b576e.lean/declarations/issymmetric-restrict-invariant--cab263636b604ed4328ad628.md) | 137 | `result-track:cab263636b604ed4328ad628f8010b4e4a26a9f0fc7cb58f82247e86d8f93469` |
| 11 | `theorem` | [IsSymmetric.restrictScalars](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant9ccd4175ea21e54bc3a6baba5d9ea6521657efcdec23b1e288f4fcb6743b576e.lean/declarations/issymmetric-restrictscalars--c5db821d744d987977f1574f.md) | 141 | `result-track:c5db821d744d987977f1574f96a92d7acce952280026cde59c6b566eb55710f5` |
| 12 | `theorem` | [isSymmetric_iff_inner_map_self_real](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant9ccd4175ea21e54bc3a6baba5d9ea6521657efcdec23b1e288f4fcb6743b576e.lean/declarations/issymmetric-iff-inner-map-self-real--2d3b995eaaa07997f2f1cc87.md) | 154 | `result-track:2d3b995eaaa07997f2f1cc875f9452417cbac4887170c6e25db0d368dabfe679` |
| 13 | `theorem` | [IsSymmetric.inner_map_polarization](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant9ccd4175ea21e54bc3a6baba5d9ea6521657efcdec23b1e288f4fcb6743b576e.lean/declarations/issymmetric-inner-map-polarization--34e9dfb2943a87625dbf6fa1.md) | 175 | `result-track:34e9dfb2943a87625dbf6fa17b60ff6048a1d91584dc32055691bd93644b888b` |
| 14 | `theorem` | [IsSymmetric.inner_map_self_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant9ccd4175ea21e54bc3a6baba5d9ea6521657efcdec23b1e288f4fcb6743b576e.lean/declarations/issymmetric-inner-map-self-eq-zero--d76285de1242f45c9c3f147b.md) | 197 | `result-track:d76285de1242f45c9c3f147b19a63df66526d7b440e68772cf4720c57efca231` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
