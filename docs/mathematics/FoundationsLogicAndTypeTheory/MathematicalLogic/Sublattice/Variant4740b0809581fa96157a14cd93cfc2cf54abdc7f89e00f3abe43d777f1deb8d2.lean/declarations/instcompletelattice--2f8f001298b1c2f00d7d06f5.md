# instCompleteLattice

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1961aa09d1f97666d0750684ef8d8f3477227b0f3f34d9867a2c1bef37137888",
  "kind": "instance",
  "lexical_name": "instCompleteLattice",
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
  "slug": "instcompletelattice--2f8f001298b1c2f00d7d06f5",
  "source": {
    "blob": "54fe5a82eb4cdd4b3398e9bcc6c3ccaf5bbe584b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 187,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sublattice/Variant4740b0809581fa96157a14cd93cfc2cf54abdc7f89e00f3abe43d777f1deb8d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2f8f001298b1c2f00d7d06f5245e38fe98ba930b365809fead63b19bebfe8b75",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sublattice/Variant4740b0809581fa96157a14cd93cfc2cf54abdc7f89e00f3abe43d777f1deb8d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1961aa09d1f97666d0750684ef8d8f3477227b0f3f34d9867a2c1bef37137888`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instCompleteLattice : CompleteLattice (Sublattice α) where
  bot := ⊥
  bot_le := fun _S _a ↦ False.elim
  top := ⊤
  le_top := fun _S a _ha ↦ mem_top a
  inf := (· ⊓ ·)
  le_inf := fun _L _M _N hM hN _a ha ↦ ⟨hM ha, hN ha⟩
  inf_le_left := fun _L _M _a ↦ And.left
  inf_le_right := fun _L _M _a ↦ And.right
  __ := completeLatticeOfInf (Sublattice α)
      fun _s ↦ IsGLB.of_image SetLike.coe_subset_coe isGLB_biInf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sublattice/Variant4740b0809581fa96157a14cd93cfc2cf54abdc7f89e00f3abe43d777f1deb8d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sublattice/Variant4740b0809581fa96157a14cd93cfc2cf54abdc7f89e00f3abe43d777f1deb8d2.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54fe5a82eb4cdd4b3398e9bcc6c3ccaf5bbe584b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
