# tendsto_atTop_nhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9443cbe9-b6d3-9210-c2ab-a9dd2df9f9dc",
  "kind": "theorem",
  "lexical_name": "tendsto_atTop_nhds",
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
  "slug": "tendsto-attop-nhds--46b5d6f39d5939ff6964810f",
  "source": {
    "blob": "ca0ac51f8beb426a650cc41325bd66a688f4ed2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 189,
    "path": "GRWTSK/Topology/GeneralTopology/Neighborhoods/Variant55259b331cc9a82c1e30c9ae5f090e3535798d5eca3220ab8d93db0bf799114b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46b5d6f39d5939ff6964810f6cba1c3f4bd0a7a96f771ee105eb04080f8ad711",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Neighborhoods/Variant55259b331cc9a82c1e30c9ae5f090e3535798d5eca3220ab8d93db0bf799114b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9443cbe9-b6d3-9210-c2ab-a9dd2df9f9dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_atTop_nhds [Nonempty α] [SemilatticeSup α] {f : α → X} :
    Tendsto f atTop (𝓝 x) ↔ ∀ U : Set X, x ∈ U → IsOpen U → ∃ N, ∀ n, N ≤ n → f n ∈ U :=
  (atTop_basis.tendsto_iff (nhds_basis_opens x)).trans <| by
    simp only [and_imp, exists_prop, true_and, mem_Ici]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Neighborhoods/Variant55259b331cc9a82c1e30c9ae5f090e3535798d5eca3220ab8d93db0bf799114b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Neighborhoods/Variant55259b331cc9a82c1e30c9ae5f090e3535798d5eca3220ab8d93db0bf799114b.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca0ac51f8beb426a650cc41325bd66a688f4ed2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
