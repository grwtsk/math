# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:be6680a0d13d721048ac4432ff59f4666b17034b8b72b7def3478145de46e01e",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--61cd70e74f05d7c42f6d8b52",
  "source": {
    "blob": "04da7332d4db39539e8e0f61167e113922164acc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 189,
    "path": "GRWTSK/Topology/AlgebraicTopology/Pairing/Variant8bf0b4a7c6f2568e46ade037bd756067bcb992889ad28fac222481bf69ef2f9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:61cd70e74f05d7c42f6d8b521072794b10fc1fdba52703939b14658d6e6e953c",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Pairing/Variant8bf0b4a7c6f2568e46ade037bd756067bcb992889ad28fac222481bf69ef2f9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:be6680a0d13d721048ac4432ff59f4666b17034b8b72b7def3478145de46e01e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [P.IsRegular] : (P.ofIso e hA).IsRegular where
  wf := by
    have hP := P.wf
    rw [wellFounded_iff_isEmpty_descending_chain] at hP ⊢
    by_contra!
    obtain ⟨f, hf⟩ := this
    refine hP.false ⟨fun n ↦ ⟨_, (f n).2⟩, fun n ↦ ?_⟩
    simpa [← P.ofIso_ancestralRel_iff e hA] using hf n

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Pairing/Variant8bf0b4a7c6f2568e46ade037bd756067bcb992889ad28fac222481bf69ef2f9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Pairing/Variant8bf0b4a7c6f2568e46ade037bd756067bcb992889ad28fac222481bf69ef2f9e.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04da7332d4db39539e8e0f61167e113922164acc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
