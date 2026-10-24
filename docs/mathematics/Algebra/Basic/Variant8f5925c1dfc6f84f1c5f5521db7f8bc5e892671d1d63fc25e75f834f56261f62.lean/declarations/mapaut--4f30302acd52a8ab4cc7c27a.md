# mapAut

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4c85a7201d4785c0afec9181d7e81b598aa1987958652ddaf8d0c6f2865408ee",
  "kind": "def",
  "lexical_name": "mapAut",
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
  "slug": "mapaut--4f30302acd52a8ab4cc7c27a",
  "source": {
    "blob": "40a0b5c8d0412db11351f30cf0fa58f47b06bc50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 157,
    "path": "GRWTSK/Algebra/Basic/Variant8f5925c1dfc6f84f1c5f5521db7f8bc5e892671d1d63fc25e75f834f56261f62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4f30302acd52a8ab4cc7c27a73657debc6c22570882caec8e4eaea106211a6c0",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant8f5925c1dfc6f84f1c5f5521db7f8bc5e892671d1d63fc25e75f834f56261f62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4c85a7201d4785c0afec9181d7e81b598aa1987958652ddaf8d0c6f2865408ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def mapAut : RingAut R →* RingAut (IsLocalRing.ResidueField R) where
  toFun := mapEquiv
  map_mul' e₁ e₂ := mapEquiv_trans e₂ e₁
  map_one' := mapEquiv_refl

section MulSemiringAction

variable (G : Type*) [Group G] [MulSemiringAction G R]

/-- If `G` acts on `R` as a `MulSemiringAction`, then it also acts on `IsLocalRing.ResidueField R`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant8f5925c1dfc6f84f1c5f5521db7f8bc5e892671d1d63fc25e75f834f56261f62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant8f5925c1dfc6f84f1c5f5521db7f8bc5e892671d1d63fc25e75f834f56261f62.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40a0b5c8d0412db11351f30cf0fa58f47b06bc50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
