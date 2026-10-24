# gammaEntry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7cda329825b26cf9a087c6986f60faf2eecf5ad61196f26b63394187f88e553e",
  "kind": "def",
  "lexical_name": "gammaEntry",
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
  "slug": "gammaentry--69ba327a3dca77dc1e8f7637",
  "source": {
    "blob": "416bb673033c8c3ef534eea6a39eef0ac374682f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 104,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FiveModeMatrix/Variant0f16c963bc1c10fa071f44986b99ecac231130e1ea0645a510d2bff8fc916612.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:69ba327a3dca77dc1e8f7637f612fb831fc7aecee7caae4e21bf819181698789",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FiveModeMatrix/Variant0f16c963bc1c10fa071f44986b99ecac231130e1ea0645a510d2bff8fc916612.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7cda329825b26cf9a087c6986f60faf2eecf5ad61196f26b63394187f88e553e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def gammaEntry (A : ℝ) (i j : Fin 5) : ℝ :=
  (∫ ω : ℝ, archimedeanMultiplier ω *
    (modeFourier A i ω * modeFourier A j ω).re) / (2*Real.pi)

/-- This analytic premise has yet to be instantiated for all basis pairs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FiveModeMatrix/Variant0f16c963bc1c10fa071f44986b99ecac231130e1ea0645a510d2bff8fc916612.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FiveModeMatrix/Variant0f16c963bc1c10fa071f44986b99ecac231130e1ea0645a510d2bff8fc916612.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `416bb673033c8c3ef534eea6a39eef0ac374682f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
