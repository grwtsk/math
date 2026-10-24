# contMDiffAt_diffeomorph_comp_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:423c3593-33b0-0b16-6ab5-b688e2ca9186",
  "kind": "theorem",
  "lexical_name": "contMDiffAt_diffeomorph_comp_iff",
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
  "slug": "contmdiffat-diffeomorph-comp-iff--49ecff96538a27cac20115e9",
  "source": {
    "blob": "e6bff92c7d5200919e5eff534b1098eced622e85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 336,
    "line": 332,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Diffeomorph/Variant8319d900b7337c4fdb11e98d12e60a8eb700a90b0ab6004f2ad90f8c24a3c1f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49ecff96538a27cac20115e9971a80390c4b66ca0d48a3d1284042d2c33abd1f",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Diffeomorph/Variant8319d900b7337c4fdb11e98d12e60a8eb700a90b0ab6004f2ad90f8c24a3c1f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:423c3593-33b0-0b16-6ab5-b688e2ca9186`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contMDiffAt_diffeomorph_comp_iff {m} (h : M ≃ₘ^n⟮I, J⟯ N) {f : M' → M} (hm : m ≤ n) {x} :
    CMDiffAt m (h ∘ f) x ↔ CMDiffAt m f x :=
  h.contMDiffWithinAt_diffeomorph_comp_iff hm

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Diffeomorph/Variant8319d900b7337c4fdb11e98d12e60a8eb700a90b0ab6004f2ad90f8c24a3c1f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Diffeomorph/Variant8319d900b7337c4fdb11e98d12e60a8eb700a90b0ab6004f2ad90f8c24a3c1f9.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6bff92c7d5200919e5eff534b1098eced622e85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
