# continuousLinearMapToWeakDual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:94a943979b959484f5f8e79047fc85575f0c2bee12b40e8974adc2e7c591750d",
  "kind": "def",
  "lexical_name": "continuousLinearMapToWeakDual",
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
  "slug": "continuouslinearmaptoweakdual--3caeda1ff86d49c947f9cd9a",
  "source": {
    "blob": "fdde6be669434cfea47c4e2ce06b55dc7eeb4b0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 133,
    "path": "GRWTSK/Topology/GeneralTopology/WeakDual/Variantc134afe28db13fb0bfa849066c932d51279cb878f5dafc793ebd11c60081bcf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3caeda1ff86d49c947f9cd9ae9f169a1d40b5a7045d1d42bf118ece07f1d8640",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/WeakDual/Variantc134afe28db13fb0bfa849066c932d51279cb878f5dafc793ebd11c60081bcf6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:94a943979b959484f5f8e79047fc85575f0c2bee12b40e8974adc2e7c591750d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def continuousLinearMapToWeakDual : Dual 𝕜 E →L[𝕜] WeakDual 𝕜 E :=
  { toWeakDual with cont := toWeakDual_continuous }

/-- The weak-star topology is coarser than the dual-norm topology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WeakDual/Variantc134afe28db13fb0bfa849066c932d51279cb878f5dafc793ebd11c60081bcf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WeakDual/Variantc134afe28db13fb0bfa849066c932d51279cb878f5dafc793ebd11c60081bcf6.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdde6be669434cfea47c4e2ce06b55dc7eeb4b0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
