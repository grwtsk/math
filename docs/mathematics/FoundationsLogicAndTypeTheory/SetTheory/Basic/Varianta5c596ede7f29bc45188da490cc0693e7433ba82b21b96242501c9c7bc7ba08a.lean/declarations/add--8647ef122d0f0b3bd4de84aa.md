# add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:907b0ea1713cefb7a3040c66e2a3444ce4347fa12655637afa10cd787dce8573",
  "kind": "instance",
  "lexical_name": "add",
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
  "slug": "add--8647ef122d0f0b3bd4de84aa",
  "source": {
    "blob": "22332773d9c1e31be2712fdd6d13b340d8263663",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 806,
    "line": 803,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Basic/Varianta5c596ede7f29bc45188da490cc0693e7433ba82b21b96242501c9c7bc7ba08a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8647ef122d0f0b3bd4de84aacfe58b7ff605e5853b5365ad7dda5e1835eeb738",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Basic/Varianta5c596ede7f29bc45188da490cc0693e7433ba82b21b96242501c9c7bc7ba08a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:907b0ea1713cefb7a3040c66e2a3444ce4347fa12655637afa10cd787dce8573`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 803–806.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance add : Add Ordinal.{u} :=
  ⟨fun o₁ o₂ => Quotient.liftOn₂ o₁ o₂ (fun ⟨_, r, _⟩ ⟨_, s, _⟩ => type (Sum.Lex r s))
    fun _ _ _ _ ⟨f⟩ ⟨g⟩ => (RelIso.sumLexCongr f g).ordinalType_congr⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Basic/Varianta5c596ede7f29bc45188da490cc0693e7433ba82b21b96242501c9c7bc7ba08a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Basic/Varianta5c596ede7f29bc45188da490cc0693e7433ba82b21b96242501c9c7bc7ba08a.lean#L803).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22332773d9c1e31be2712fdd6d13b340d8263663` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
