# Bundle.ContinuousLinearMap.vectorPrebundle.isContMDiff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6eedbda34e19add01ee5a76bc86944fd64eede5ef46308207ef777b21bb8d7ee",
  "kind": "instance",
  "lexical_name": "Bundle.ContinuousLinearMap.vectorPrebundle.isContMDiff",
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
  "slug": "bundle-continuouslinearmap-vectorprebundle-iscontmdiff--86c27f64e4dc2cd46156f6a9",
  "source": {
    "blob": "7556309acf4e154064cb997a5991d8a4bc50d47c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 119,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Hom/Variant064976c59cd3de4ec554f65cbe54ed3c41731f3615522c040912d2bc89c93af3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:86c27f64e4dc2cd46156f6a9f9a59f7d5e8714be3c6cc6b8c979ba6def60d978",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Hom/Variant064976c59cd3de4ec554f65cbe54ed3c41731f3615522c040912d2bc89c93af3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6eedbda34e19add01ee5a76bc86944fd64eede5ef46308207ef777b21bb8d7ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Bundle.ContinuousLinearMap.vectorPrebundle.isContMDiff :
    (Bundle.ContinuousLinearMap.vectorPrebundle (RingHom.id 𝕜) F₁ E₁ F₂ E₂).IsContMDiff IB n where
  exists_contMDiffCoordChange := by
    rintro _ ⟨e₁, e₂, he₁, he₂, rfl⟩ _ ⟨e₁', e₂', he₁', he₂', rfl⟩
    exact ⟨continuousLinearMapCoordChange (RingHom.id 𝕜) e₁ e₁' e₂ e₂',
      contMDiffOn_continuousLinearMapCoordChange,
      continuousLinearMapCoordChange_apply (RingHom.id 𝕜) e₁ e₁' e₂ e₂'⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Hom/Variant064976c59cd3de4ec554f65cbe54ed3c41731f3615522c040912d2bc89c93af3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Hom/Variant064976c59cd3de4ec554f65cbe54ed3c41731f3615522c040912d2bc89c93af3.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7556309acf4e154064cb997a5991d8a4bc50d47c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
