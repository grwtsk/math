# IsHeckeTriple

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2795fed6e09ec0ce46639592f2d09db0683ebdd08e94443cfa93b100263dc1d1",
  "kind": "class",
  "lexical_name": "IsHeckeTriple",
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
  "slug": "ishecketriple--7cbdcc50ae74b6871927f70e",
  "source": {
    "blob": "de55879d2044bc0163723f550618c888800a018a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 83,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Varianta6775e91c80e5a6967bdd5d8a2af33c350003f01873e11f6c2876a947ed5a6e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7cbdcc50ae74b6871927f70ece6dfd5fc9e35356b9f8a2f4fa69e3d84e0a47d8",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Varianta6775e91c80e5a6967bdd5d8a2af33c350003f01873e11f6c2876a947ed5a6e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2795fed6e09ec0ce46639592f2d09db0683ebdd08e94443cfa93b100263dc1d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsHeckeTriple (Δ : Submonoid G) (H₁ H₂ : Subgroup G) : Prop where
  /-- The left subgroup is contained in `Δ`. -/
  left_le : H₁.toSubmonoid ≤ Δ
  /-- The right subgroup is contained in `Δ`. -/
  right_le : H₂.toSubmonoid ≤ Δ
  /-- The two subgroups are commensurable. -/
  commensurable : Commensurable H₁ H₂
  /-- The submonoid `Δ` lies in the commensurator of the right subgroup (hence, the subgroups
  being commensurable, also in that of the left one; see `le_commensurator_left`). -/
  le_commensurator_right : Δ ≤ (commensurator H₂).toSubmonoid

namespace IsHeckeTriple

variable {Δ : Submonoid G} {H₁ H₂ H₃ : Subgroup G}

/-- The Hecke triple `(H, Δ, H)` coming from a pair `(H, Δ)` with `H ≤ Δ ≤ commensurator H`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Varianta6775e91c80e5a6967bdd5d8a2af33c350003f01873e11f6c2876a947ed5a6e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Varianta6775e91c80e5a6967bdd5d8a2af33c350003f01873e11f6c2876a947ed5a6e7.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de55879d2044bc0163723f550618c888800a018a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
