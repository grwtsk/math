# SourceSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:54b3530041b9c6125db2df8dba030441063650e83cde839c64a7633a1016742d",
  "kind": "abbrev",
  "lexical_name": "SourceSpace",
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
  "slug": "sourcespace--d39cdda395d0c2ee1d20eef3",
  "source": {
    "blob": "cc90d18817332a51c049ad34bea192fe2be4cb9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 26,
    "path": "GRWTSK/Analysis/MeasureTheory/BranchNativeTranslationGap/Variant2f5f90c9b8dd10dea357445d91a3e4579d270c4b572469dc9831e8574b09459a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d39cdda395d0c2ee1d20eef34ad32c2af79f936605c5dd2550ae32fd94aeb801",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/BranchNativeTranslationGap/Variant2f5f90c9b8dd10dea357445d91a3e4579d270c4b572469dc9831e8574b09459a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:54b3530041b9c6125db2df8dba030441063650e83cde839c64a7633a1016742d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev SourceSpace : Type := Lp ℝ 2 (volume : Measure ℝ)

/-- The translation in this module, with the following exact parameterization.

def translation (h : ℝ) : SourceSpace →ₗ[ℝ] SourceSpace := Lp.compMeasurePreservingₗ ℝ (fun x
: ℝ ↦ x - h) (measurePreserving_sub_right volume h)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/BranchNativeTranslationGap/Variant2f5f90c9b8dd10dea357445d91a3e4579d270c4b572469dc9831e8574b09459a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/BranchNativeTranslationGap/Variant2f5f90c9b8dd10dea357445d91a3e4579d270c4b572469dc9831e8574b09459a.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc90d18817332a51c049ad34bea192fe2be4cb9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
