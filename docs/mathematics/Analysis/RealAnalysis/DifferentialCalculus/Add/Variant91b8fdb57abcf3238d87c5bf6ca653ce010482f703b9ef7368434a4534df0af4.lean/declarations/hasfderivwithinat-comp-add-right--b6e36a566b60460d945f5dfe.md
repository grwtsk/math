# hasFDerivWithinAt_comp_add_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a1e27a23-0a2f-ad2b-f8b9-8337f9f5d7de",
  "kind": "theorem",
  "lexical_name": "hasFDerivWithinAt_comp_add_right",
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
  "slug": "hasfderivwithinat-comp-add-right--b6e36a566b60460d945f5dfe",
  "source": {
    "blob": "e8022ae616f5a0774fecc53e2a566c40fc195125",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 878,
    "line": 875,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Add/Variant91b8fdb57abcf3238d87c5bf6ca653ce010482f703b9ef7368434a4534df0af4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6e36a566b60460d945f5dfe8aea6b779d3ce0949529d5feea3c3d1e8ade49bc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Add/Variant91b8fdb57abcf3238d87c5bf6ca653ce010482f703b9ef7368434a4534df0af4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1e27a23-0a2f-ad2b-f8b9-8337f9f5d7de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 875–878.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasFDerivWithinAt_comp_add_right (a : E) :
    HasFDerivWithinAt (fun x ↦ f (x + a)) f' s x ↔ HasFDerivWithinAt f f' (a +ᵥ s) (x + a) := by
  simpa only [add_comm a] using hasFDerivWithinAt_comp_add_left a

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Add/Variant91b8fdb57abcf3238d87c5bf6ca653ce010482f703b9ef7368434a4534df0af4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Add/Variant91b8fdb57abcf3238d87c5bf6ca653ce010482f703b9ef7368434a4534df0af4.lean#L875).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8022ae616f5a0774fecc53e2a566c40fc195125` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
