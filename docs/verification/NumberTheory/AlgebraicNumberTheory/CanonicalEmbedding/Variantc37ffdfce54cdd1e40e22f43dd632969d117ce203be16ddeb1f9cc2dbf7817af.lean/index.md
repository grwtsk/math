# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.CanonicalEmbedding.Variantc37ffdfce54cdd1e40e22f43dd632969d117ce203be16ddeb1f9cc2dbf7817af

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7400434384e8937c68d0970509a567c2703c4fd",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/CanonicalEmbedding/Variantc37ffdfce54cdd1e40e22f43dd632969d117ce203be16ddeb1f9cc2dbf7817af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/CanonicalEmbedding/Variantc37ffdfce54cdd1e40e22f43dd632969d117ce203be16ddeb1f9cc2dbf7817af.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/CanonicalEmbedding/Variantc37ffdfce54cdd1e40e22f43dd632969d117ce203be16ddeb1f9cc2dbf7817af.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7400434384e8937c68d0970509a567c2703c4fd`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/CanonicalEmbedding/Variantc37ffdfce54cdd1e40e22f43dd632969d117ce203be16ddeb1f9cc2dbf7817af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/CanonicalEmbedding/Variantc37ffdfce54cdd1e40e22f43dd632969d117ce203be16ddeb1f9cc2dbf7817af.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.NumberField.Embeddings` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Discriminant` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [_root_.NumberField.canonicalEmbedding](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/CanonicalEmbedding/Variantc37ffdfce54cdd1e40e22f43dd632969d117ce203be16ddeb1f9cc2dbf7817af.lean/declarations/root-numberfield-canonicalembedding--b816a53cc1598ef6f149f99c.md) | 40 | `declaration-track:b816a53cc1598ef6f149f99c1481763d8d7ef1aa98b88ec263fcdc94f6f0321b` |
| 2 | `theorem` | [_root_.NumberField.canonicalEmbedding_injective](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/CanonicalEmbedding/Variantc37ffdfce54cdd1e40e22f43dd632969d117ce203be16ddeb1f9cc2dbf7817af.lean/declarations/root-numberfield-canonicalembedding-injective--126d9f2cfae6925f328016ce.md) | 42 | `result-track:126d9f2cfae6925f328016ceffcefa721180325945c709c7fc47bf57bb6cd56f` |
| 3 | `theorem` | [apply_at](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/CanonicalEmbedding/Variantc37ffdfce54cdd1e40e22f43dd632969d117ce203be16ddeb1f9cc2dbf7817af.lean/declarations/apply-at--4e6f1e92d8bf54abcd71be2f.md) | 48 | `result-track:4e6f1e92d8bf54abcd71be2f983898d60b5c77ca638b77fbf6a22f916da410bd` |
| 4 | `theorem` | [conj_apply](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/CanonicalEmbedding/Variantc37ffdfce54cdd1e40e22f43dd632969d117ce203be16ddeb1f9cc2dbf7817af.lean/declarations/conj-apply--0d647c4550ee8d05fd158b5c.md) | 54 | `result-track:0d647c4550ee8d05fd158b5c2759f980642d9e27bfc1f4195532c3cff97b7823` |
| 5 | `theorem` | [nnnorm_eq](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/CanonicalEmbedding/Variantc37ffdfce54cdd1e40e22f43dd632969d117ce203be16ddeb1f9cc2dbf7817af.lean/declarations/nnnorm-eq--0bf9132ebb635c0d17521230.md) | 65 | `result-track:0bf9132ebb635c0d17521230d8ceb83f8f00a12d5997856f369bbb4d77bc62d4` |
| 6 | `theorem` | [norm_le_iff](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/CanonicalEmbedding/Variantc37ffdfce54cdd1e40e22f43dd632969d117ce203be16ddeb1f9cc2dbf7817af.lean/declarations/norm-le-iff--4acb0eef013685fe3e5ff2fe.md) | 69 | `result-track:4acb0eef013685fe3e5ff2fe1ae3e2656c7a7ffa472ec57dcc602510c45a6b1d` |
| 7 | `def` | [integerLattice](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/CanonicalEmbedding/Variantc37ffdfce54cdd1e40e22f43dd632969d117ce203be16ddeb1f9cc2dbf7817af.lean/declarations/integerlattice--44422437f7616bde3a7b5d15.md) | 83 | `declaration-track:44422437f7616bde3a7b5d15393d72642b9d969d86195dec50aa96f47aa93515` |
| 8 | `theorem` | [integerLattice.inter_ball_finite](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/CanonicalEmbedding/Variantc37ffdfce54cdd1e40e22f43dd632969d117ce203be16ddeb1f9cc2dbf7817af.lean/declarations/integerlattice-inter-ball-finite--b894d73f3d6fed0e4acf3dcb.md) | 86 | `result-track:b894d73f3d6fed0e4acf3dcba609025c61807c1ac5360b863b166b022c9071e8` |
| 9 | `def` | [latticeBasis](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/CanonicalEmbedding/Variantc37ffdfce54cdd1e40e22f43dd632969d117ce203be16ddeb1f9cc2dbf7817af.lean/declarations/latticebasis--4dec4f8a72f50619b6275689.md) | 103 | `declaration-track:4dec4f8a72f50619b627568915c14ce64edec19b274d1215344c6cdb1143e8cf` |
| 10 | `theorem` | [latticeBasis_apply](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/CanonicalEmbedding/Variantc37ffdfce54cdd1e40e22f43dd632969d117ce203be16ddeb1f9cc2dbf7817af.lean/declarations/latticebasis-apply--b13ed50714f3b6150a43a1f3.md) | 132 | `result-track:b13ed50714f3b6150a43a1f3775a140406e86d8a1bd44115a4c15fe318668f67` |
| 11 | `theorem` | [mem_span_latticeBasis](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/CanonicalEmbedding/Variantc37ffdfce54cdd1e40e22f43dd632969d117ce203be16ddeb1f9cc2dbf7817af.lean/declarations/mem-span-latticebasis--379ed0a6c379dd9490a1667d.md) | 137 | `result-track:379ed0a6c379dd9490a1667d9b08aad5441d6e5b25049468087dc3f12ad05171` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
