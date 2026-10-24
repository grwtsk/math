# AffineIsometryEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dd44f6505ad42e88c351863c2e321710865007a590561c7783d6b3e467884f26",
  "kind": "structure",
  "lexical_name": "AffineIsometryEquiv",
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
  "slug": "affineisometryequiv--6495303502912e3bb07c12d4",
  "source": {
    "blob": "47507d17ddf18be10e96b6e2ef19193dd0aa7be8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 273,
    "path": "GRWTSK/Topology/GeneralTopology/Isometry/Variant67ed9f8ab70038e19e435b537b982fb08dd6fa7d56c330dd32b6d4a3be42c7f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6495303502912e3bb07c12d4d361092f23a86209b1446d9f88ef074a4f89b328",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Isometry/Variant67ed9f8ab70038e19e435b537b982fb08dd6fa7d56c330dd32b6d4a3be42c7f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dd44f6505ad42e88c351863c2e321710865007a590561c7783d6b3e467884f26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AffineIsometryEquiv extends P ≃ᵃ[𝕜] P₂ where
  norm_map : ∀ x, ‖linear x‖ = ‖x‖

variable {𝕜 P P₂}

-- `≃ᵃᵢ` would be more consistent with the linear isometry equiv notation, but it is uglier
@[inherit_doc] notation:25 P " ≃ᵃⁱ[" 𝕜:25 "] " P₂:0 => AffineIsometryEquiv 𝕜 P P₂

namespace AffineIsometryEquiv

variable (e : P ≃ᵃⁱ[𝕜] P₂)

/-- The underlying linear equiv of an affine isometry equiv is in fact a linear isometry equiv. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Isometry/Variant67ed9f8ab70038e19e435b537b982fb08dd6fa7d56c330dd32b6d4a3be42c7f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Isometry/Variant67ed9f8ab70038e19e435b537b982fb08dd6fa7d56c330dd32b6d4a3be42c7f1.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47507d17ddf18be10e96b6e2ef19193dd0aa7be8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
