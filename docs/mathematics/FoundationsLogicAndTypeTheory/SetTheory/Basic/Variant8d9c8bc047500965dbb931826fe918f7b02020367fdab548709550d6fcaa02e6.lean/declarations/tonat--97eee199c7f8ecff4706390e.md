# toNat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:852126c7a2ddbee564dc79bb403b204503ffe65f31588d0e1381474d997b9bdc",
  "kind": "def",
  "lexical_name": "toNat",
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
  "slug": "tonat--97eee199c7f8ecff4706390e",
  "source": {
    "blob": "402175fd9fd0a65032953aea29302d1f2f0b083c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1683,
    "line": 1676,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variant8d9c8bc047500965dbb931826fe918f7b02020367fdab548709550d6fcaa02e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:97eee199c7f8ecff4706390e846e03e5a7a443691d502d0df0c417816960a174",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variant8d9c8bc047500965dbb931826fe918f7b02020367fdab548709550d6fcaa02e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:852126c7a2ddbee564dc79bb403b204503ffe65f31588d0e1381474d997b9bdc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1676–1683.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toNat : ZeroHom Cardinal ℕ :=
  ⟨fun c => if h : c < aleph0.{v} then Classical.choose (lt_aleph0.1 h) else 0, by
    have h : 0 < ℵ₀ := nat_lt_aleph0 0
    dsimp only
    rw [dif_pos h, ← Cardinal.natCast_inj, ← Classical.choose_spec (lt_aleph0.1 h),
      Nat.cast_zero]⟩
#align cardinal.to_nat Cardinal.toNat

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variant8d9c8bc047500965dbb931826fe918f7b02020367fdab548709550d6fcaa02e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variant8d9c8bc047500965dbb931826fe918f7b02020367fdab548709550d6fcaa02e6.lean#L1676).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `402175fd9fd0a65032953aea29302d1f2f0b083c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
