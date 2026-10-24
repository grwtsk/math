# IsContMDiff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:890b18d6b7ace692eab101d1fc6b9dc6a4f948fbc506646f19cb4fc12494f939",
  "kind": "class",
  "lexical_name": "IsContMDiff",
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
  "slug": "iscontmdiff--61dea91d30f1321a57d5d26c",
  "source": {
    "blob": "a8d2b1a3a3d792fc60aa6f8fece7bd337c2c4faf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 589,
    "line": 586,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant54334dbfcf0e1c946f5614be66401bff7040782665789fd9ad631a00e6fec37c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:61dea91d30f1321a57d5d26cf9a2016d542246dc6d11762e96f93d63fc639fe6",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Basic/Variant54334dbfcf0e1c946f5614be66401bff7040782665789fd9ad631a00e6fec37c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:890b18d6b7ace692eab101d1fc6b9dc6a4f948fbc506646f19cb4fc12494f939`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 586–589.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsContMDiff (IB : ModelWithCorners 𝕜 EB HB) (n : ℕ∞ω) : Prop where
  contMDiffOn_coordChange :
    ∀ i j, ContMDiffOn IB 𝓘(𝕜, F →L[𝕜] F) n (Z.coordChange i j) (Z.baseSet i ∩ Z.baseSet j)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Basic/Variant54334dbfcf0e1c946f5614be66401bff7040782665789fd9ad631a00e6fec37c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Basic/Variant54334dbfcf0e1c946f5614be66401bff7040782665789fd9ad631a00e6fec37c.lean#L586).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8d2b1a3a3d792fc60aa6f8fece7bd337c2c4faf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
