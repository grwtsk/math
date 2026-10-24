# Verification target: GRWTSK.Algebra.RingHom.Variantda4dd179792089a4e17e98c453b40ff979a6edbf05498473ddc405aff19384e2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac9cfbd4e297dff17cf05f3073adc13541c0bb6a",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingHom/Variantda4dd179792089a4e17e98c453b40ff979a6edbf05498473ddc405aff19384e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/RingHom/Variantda4dd179792089a4e17e98c453b40ff979a6edbf05498473ddc405aff19384e2.lean/index.md) · [Full source](../../../../mathematics/Algebra/RingHom/Variantda4dd179792089a4e17e98c453b40ff979a6edbf05498473ddc405aff19384e2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac9cfbd4e297dff17cf05f3073adc13541c0bb6a`.

Source path: `GRWTSK/Algebra/RingHom/Variantda4dd179792089a4e17e98c453b40ff979a6edbf05498473ddc405aff19384e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingHom/Variantda4dd179792089a4e17e98c453b40ff979a6edbf05498473ddc405aff19384e2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Spectrum.Prime.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [RingHom.specComap](../../../../mathematics/Algebra/RingHom/Variantda4dd179792089a4e17e98c453b40ff979a6edbf05498473ddc405aff19384e2.lean/declarations/ringhom-speccomap--6d12a4669ffe1777bb7612cb.md) | 28 | `declaration-track:6d12a4669ffe1777bb7612cb668163fb91a6952126c4640c9677d31bfd5d35ff` |
| 2 | `theorem` | [preimage_specComap_zeroLocus_aux](../../../../mathematics/Algebra/RingHom/Variantda4dd179792089a4e17e98c453b40ff979a6edbf05498473ddc405aff19384e2.lean/declarations/preimage-speccomap-zerolocus-aux--485885e077ac2a7dbe0c77bb.md) | 38 | `result-track:485885e077ac2a7dbe0c77bb635be946add041c33cbae190091893283a7d2a73` |
| 3 | `theorem` | [specComap_asIdeal](../../../../mathematics/Algebra/RingHom/Variantda4dd179792089a4e17e98c453b40ff979a6edbf05498473ddc405aff19384e2.lean/declarations/speccomap-asideal--6f8d4133105935ea568cf9e9.md) | 46 | `result-track:6f8d4133105935ea568cf9e9a49b1c6210a9218cc5670745c86346b2f13690ac` |
| 4 | `theorem` | [specComap_id](../../../../mathematics/Algebra/RingHom/Variantda4dd179792089a4e17e98c453b40ff979a6edbf05498473ddc405aff19384e2.lean/declarations/speccomap-id--170f3ef50ae74c968b257289.md) | 51 | `result-track:170f3ef50ae74c968b25728930a1800d382cc32c6b32221fedefb03d2805eb14` |
| 5 | `theorem` | [specComap_comp](../../../../mathematics/Algebra/RingHom/Variantda4dd179792089a4e17e98c453b40ff979a6edbf05498473ddc405aff19384e2.lean/declarations/speccomap-comp--f5c6661e537fa73be3df56f3.md) | 55 | `result-track:f5c6661e537fa73be3df56f3f6bd267a450985fbf40d19108d5ae051771a832b` |
| 6 | `theorem` | [specComap_comp_apply](../../../../mathematics/Algebra/RingHom/Variantda4dd179792089a4e17e98c453b40ff979a6edbf05498473ddc405aff19384e2.lean/declarations/speccomap-comp-apply--071a33b5fe055a4fb3f20ee4.md) | 59 | `result-track:071a33b5fe055a4fb3f20ee48942f42a5f18a73bbf5fd0a880285bc595900d74` |
| 7 | `theorem` | [preimage_specComap_zeroLocus](../../../../mathematics/Algebra/RingHom/Variantda4dd179792089a4e17e98c453b40ff979a6edbf05498473ddc405aff19384e2.lean/declarations/preimage-speccomap-zerolocus--91d3bee733fc1682db876776.md) | 64 | `result-track:91d3bee733fc1682db87677603c3e084e879319bc8da771e2517b866edc46515` |
| 8 | `theorem` | [specComap_injective_of_surjective](../../../../mathematics/Algebra/RingHom/Variantda4dd179792089a4e17e98c453b40ff979a6edbf05498473ddc405aff19384e2.lean/declarations/speccomap-injective-of-surjective--e0ff591fe1278ed5c5e03448.md) | 68 | `result-track:e0ff591fe1278ed5c5e03448f98a66363b0d94593d0db417c52fcfffbc8ac656` |
| 9 | `def` | [comapEquiv](../../../../mathematics/Algebra/RingHom/Variantda4dd179792089a4e17e98c453b40ff979a6edbf05498473ddc405aff19384e2.lean/declarations/comapequiv--f1e4eb9f51704f8a5f319b29.md) | 76 | `declaration-track:f1e4eb9f51704f8a5f319b29b83d3dc6f9874d68a9f8ac9290b6b02f263fcb12` |
| 10 | `def` | [sigmaToPi](../../../../mathematics/Algebra/RingHom/Variantda4dd179792089a4e17e98c453b40ff979a6edbf05498473ddc405aff19384e2.lean/declarations/sigmatopi--55590db346c2f8f7cecc9c6c.md) | 96 | `declaration-track:55590db346c2f8f7cecc9c6c301d76f5090c4de09c5c23da400df876f808955b` |
| 11 | `theorem` | [sigmaToPi_injective](../../../../mathematics/Algebra/RingHom/Variantda4dd179792089a4e17e98c453b40ff979a6edbf05498473ddc405aff19384e2.lean/declarations/sigmatopi-injective--0ff536c844716ca4ae2a6914.md) | 99 | `result-track:0ff536c844716ca4ae2a6914a0401183b8471eae879e6f4939012abb03708d97` |
| 12 | `theorem` | [exists_maximal_notMem_range_sigmaToPi_of_infinite](../../../../mathematics/Algebra/RingHom/Variantda4dd179792089a4e17e98c453b40ff979a6edbf05498473ddc405aff19384e2.lean/declarations/exists-maximal-notmem-range-sigmatopi-of-infinite--a573c7827751651d5decaf11.md) | 114 | `result-track:a573c7827751651d5decaf11f9999ead4f8b5dbc7e86a975b732a02e79560710` |
| 13 | `theorem` | [sigmaToPi_not_surjective_of_infinite](../../../../mathematics/Algebra/RingHom/Variantda4dd179792089a4e17e98c453b40ff979a6edbf05498473ddc405aff19384e2.lean/declarations/sigmatopi-not-surjective-of-infinite--087ea8c1d5be445d72cd4bff.md) | 141 | `result-track:087ea8c1d5be445d72cd4bffa2333718f42252869e7b4f578a722eefbc15a3ba` |
| 14 | `lemma` | [exists_comap_evalRingHom_eq](../../../../mathematics/Algebra/RingHom/Variantda4dd179792089a4e17e98c453b40ff979a6edbf05498473ddc405aff19384e2.lean/declarations/exists-comap-evalringhom-eq--9160482fc072c6a2df63762b.md) | 145 | `result-track:9160482fc072c6a2df63762b4fa57e7a5a831a5e159b5fc146c1bb58b4e8a72b` |
| 15 | `lemma` | [sigmaToPi_bijective](../../../../mathematics/Algebra/RingHom/Variantda4dd179792089a4e17e98c453b40ff979a6edbf05498473ddc405aff19384e2.lean/declarations/sigmatopi-bijective--e2187f44062b40508cd7a334.md) | 170 | `result-track:e2187f44062b40508cd7a33459c83e3e3a662fda9f2e39b797f32fb3a8fd983e` |
| 16 | `lemma` | [iUnion_range_specComap_comp_evalRingHom](../../../../mathematics/Algebra/RingHom/Variantda4dd179792089a4e17e98c453b40ff979a6edbf05498473ddc405aff19384e2.lean/declarations/iunion-range-speccomap-comp-evalringhom--7f548e9c79f4d485e92e378b.md) | 177 | `result-track:7f548e9c79f4d485e92e378b3aa4bebe3e605096621d53b5260fd1e5c889045a` |
| 17 | `theorem` | [image_specComap_zeroLocus_eq_zeroLocus_comap](../../../../mathematics/Algebra/RingHom/Variantda4dd179792089a4e17e98c453b40ff979a6edbf05498473ddc405aff19384e2.lean/declarations/image-speccomap-zerolocus-eq-zerolocus-comap--6c88e0b3c9c4733c0bc2e279.md) | 200 | `result-track:6c88e0b3c9c4733c0bc2e279e03c570f5915d2b71f5abd912a21160a5d58cc38` |
| 18 | `theorem` | [range_specComap_of_surjective](../../../../mathematics/Algebra/RingHom/Variantda4dd179792089a4e17e98c453b40ff979a6edbf05498473ddc405aff19384e2.lean/declarations/range-speccomap-of-surjective--d8ef93008f205735889243b9.md) | 218 | `result-track:d8ef93008f205735889243b9863be0b8dbbac2d80ee68f13444d78401400ba46` |
| 19 | `lemma` | [PrimeSpectrum.mem_range_comap_iff](../../../../mathematics/Algebra/RingHom/Variantda4dd179792089a4e17e98c453b40ff979a6edbf05498473ddc405aff19384e2.lean/declarations/primespectrum-mem-range-comap-iff--78cb7df4d71f0132f0209b25.md) | 227 | `result-track:78cb7df4d71f0132f0209b255bcb0ee9c90e5d2945c96707ec010628059d8bfe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
