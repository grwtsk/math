# RingSubgroupsBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ca789ba4ad07a1ce7efaa4bebe47424a32747eed118810b565ca2442c881ad11",
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
  "slug": "ringsubgroupsbasis--3599d607d24cfc8dfb429977",
  "source": {
    "blob": "56c3c35c7570ac65a4237b8f57334716528560f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 41,
    "path": "GRWTSK/Topology/Bases/Variant2deb01f94a6af5e204b2544925373a25ca2c49addad24ad958f84d826fc62a82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3599d607d24cfc8dfb429977e1c0b8a0538e9aa44d71dec0aff8f2266c09f3e0",
  "verification": {
    "reference": "docs/verification/Topology/Bases/Variant2deb01f94a6af5e204b2544925373a25ca2c49addad24ad958f84d826fc62a82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ca789ba4ad07a1ce7efaa4bebe47424a32747eed118810b565ca2442c881ad11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–57.

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

[Verification target and public status](../../../../../verification/Topology/Bases/Variant2deb01f94a6af5e204b2544925373a25ca2c49addad24ad958f84d826fc62a82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Bases/Variant2deb01f94a6af5e204b2544925373a25ca2c49addad24ad958f84d826fc62a82.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56c3c35c7570ac65a4237b8f57334716528560f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
