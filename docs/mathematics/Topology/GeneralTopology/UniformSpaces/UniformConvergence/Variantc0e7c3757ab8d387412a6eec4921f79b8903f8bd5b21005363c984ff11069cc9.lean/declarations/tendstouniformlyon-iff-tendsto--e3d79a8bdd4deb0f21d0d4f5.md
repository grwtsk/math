# tendstoUniformlyOn_iff_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8fe0f274-76f3-a31e-ff92-4e1ecbea440a",
  "kind": "theorem",
  "lexical_name": "tendstoUniformlyOn_iff_tendsto",
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
  "slug": "tendstouniformlyon-iff-tendsto--e3d79a8bdd4deb0f21d0d4f5",
  "source": {
    "blob": "1f1740433b5b510b7e927aaa21ca658432fb9cf1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 133,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variantc0e7c3757ab8d387412a6eec4921f79b8903f8bd5b21005363c984ff11069cc9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3d79a8bdd4deb0f21d0d4f57b0246ef683efa754336c3d90e2fdae30e059236",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variantc0e7c3757ab8d387412a6eec4921f79b8903f8bd5b21005363c984ff11069cc9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8fe0f274-76f3-a31e-ff92-4e1ecbea440a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendstoUniformlyOn_iff_tendsto {F : ι → α → β} {f : α → β} {p : Filter ι} {s : Set α} :
    TendstoUniformlyOn F f p s ↔ Tendsto (fun q : ι × α => (f q.2, F q.1 q.2)) (p ×ˢ 𝓟 s) (𝓤 β) :=
  by simp [tendstoUniformlyOn_iff_tendstoUniformlyOnFilter, tendstoUniformlyOnFilter_iff_tendsto]
#align tendsto_uniformly_on_iff_tendsto tendstoUniformlyOn_iff_tendsto

/-- A sequence of functions `Fₙ` converges uniformly to a limiting function `f` with respect to a
filter `p` if, for any entourage of the diagonal `u`, one has `p`-eventually
`(f x, Fₙ x) ∈ u` for all `x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variantc0e7c3757ab8d387412a6eec4921f79b8903f8bd5b21005363c984ff11069cc9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variantc0e7c3757ab8d387412a6eec4921f79b8903f8bd5b21005363c984ff11069cc9.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f1740433b5b510b7e927aaa21ca658432fb9cf1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
