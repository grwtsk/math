# RingSubgroupsBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:858a7de77c08d53e5b6fcbdeb8c710f489ce9dff10600a45a3c90da479efc4e5",
  "kind": "structure",
  "lexical_name": "RingSubgroupsBasis",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "ringsubgroupsbasis--c96b7d03170007582c55ef0b",
  "source": {
    "blob": "142741d061222839982ed6e7ff6360baf45508aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 44,
    "path": "GRWTSK/Algebra/LinearAlgebra/Bases/Varianta5329e8c5079366fcf2ed7b2f134cf2ac863378b469a4ef25c760e77f4a01f0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c96b7d03170007582c55ef0b79dcbb9e64584a51a3e989d00fc0817d0a3b381d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Bases/Varianta5329e8c5079366fcf2ed7b2f134cf2ac863378b469a4ef25c760e77f4a01f0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:858a7de77c08d53e5b6fcbdeb8c710f489ce9dff10600a45a3c90da479efc4e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RingSubgroupsBasis {A ι : Type*} [Ring A] (B : ι → AddSubgroup A) : Prop where
  /-- Condition for `B` to be a filter basis on `A`. -/
  inter : ∀ i j, ∃ k, B k ≤ B i ⊓ B j
  /-- For each set `B` in the submodule basis on `A`, there is another basis element `B'` such
   that the set-theoretic product `B' * B'` is in `B`. -/
  mul : ∀ i, ∃ j, (B j : Set A) * B j ⊆ B i
  /-- For any element `x : A` and any set `B` in the submodule basis on `A`,
    there is another basis element `B'` such that `B' * x` is in `B`. -/
  leftMul : ∀ x : A, ∀ i, ∃ j, (B j : Set A) ⊆ (x * ·) ⁻¹' B i
  /-- For any element `x : A` and any set `B` in the submodule basis on `A`,
    there is another basis element `B'` such that `x * B'` is in `B`. -/
  rightMul : ∀ x : A, ∀ i, ∃ j, (B j : Set A) ⊆ (· * x) ⁻¹' B i

namespace RingSubgroupsBasis

variable {A ι : Type*} [Ring A]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Bases/Varianta5329e8c5079366fcf2ed7b2f134cf2ac863378b469a4ef25c760e77f4a01f0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Bases/Varianta5329e8c5079366fcf2ed7b2f134cf2ac863378b469a4ef25c760e77f4a01f0d.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `142741d061222839982ed6e7ff6360baf45508aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
