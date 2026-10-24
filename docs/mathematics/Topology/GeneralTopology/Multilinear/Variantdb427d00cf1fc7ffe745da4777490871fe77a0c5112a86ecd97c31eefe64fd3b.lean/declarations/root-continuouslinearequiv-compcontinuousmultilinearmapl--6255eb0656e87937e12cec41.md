# _root_.ContinuousLinearEquiv.compContinuousMultilinearMapL

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:69377f866e059e835f5a5a1be9c7bace1356ab691b84a5c1cd1d4fc453470504",
  "kind": "def",
  "lexical_name": "_root_.ContinuousLinearEquiv.compContinuousMultilinearMapL",
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
  "slug": "root-continuouslinearequiv-compcontinuousmultilinearmapl--6255eb0656e87937e12cec41",
  "source": {
    "blob": "c9ea4c907ee19bb86bfb8a13880dbb434356eeee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1013,
    "line": 995,
    "path": "GRWTSK/Topology/GeneralTopology/Multilinear/Variantdb427d00cf1fc7ffe745da4777490871fe77a0c5112a86ecd97c31eefe64fd3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6255eb0656e87937e12cec4165f2cb830ccbcdde5addc32c8f3556d0a5eb7bf1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Multilinear/Variantdb427d00cf1fc7ffe745da4777490871fe77a0c5112a86ecd97c31eefe64fd3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:69377f866e059e835f5a5a1be9c7bace1356ab691b84a5c1cd1d4fc453470504`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 995–1013.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.ContinuousLinearEquiv.compContinuousMultilinearMapL (g : G ≃L[𝕜] G') :
    ContinuousMultilinearMap 𝕜 E G ≃L[𝕜] ContinuousMultilinearMap 𝕜 E G' :=
  { compContinuousMultilinearMapL 𝕜 E G G'
      g.toContinuousLinearMap with
    invFun := compContinuousMultilinearMapL 𝕜 E G' G g.symm.toContinuousLinearMap
    left_inv := by
      intro f
      ext1 m
      simp [compContinuousMultilinearMapL]
    right_inv := by
      intro f
      ext1 m
      simp [compContinuousMultilinearMapL]
    continuous_toFun := (compContinuousMultilinearMapL 𝕜 E G G' g.toContinuousLinearMap).continuous
    continuous_invFun :=
      (compContinuousMultilinearMapL 𝕜 E G' G g.symm.toContinuousLinearMap).continuous }
#align continuous_linear_equiv.comp_continuous_multilinear_mapL ContinuousLinearEquiv.compContinuousMultilinearMapL

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Multilinear/Variantdb427d00cf1fc7ffe745da4777490871fe77a0c5112a86ecd97c31eefe64fd3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Multilinear/Variantdb427d00cf1fc7ffe745da4777490871fe77a0c5112a86ecd97c31eefe64fd3b.lean#L995).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9ea4c907ee19bb86bfb8a13880dbb434356eeee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
