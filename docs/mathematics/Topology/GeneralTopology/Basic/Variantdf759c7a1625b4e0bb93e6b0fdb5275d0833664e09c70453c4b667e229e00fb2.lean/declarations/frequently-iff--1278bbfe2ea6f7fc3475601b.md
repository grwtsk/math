# frequently_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4ca4bec4-4fe3-de6e-7b9e-58c87abbbf38",
  "kind": "theorem",
  "lexical_name": "frequently_iff",
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
  "slug": "frequently-iff--1278bbfe2ea6f7fc3475601b",
  "source": {
    "blob": "0f10793f23ae104512c0a8fb86ab4625b5eb0aff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1329,
    "line": 1323,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantdf759c7a1625b4e0bb93e6b0fdb5275d0833664e09c70453c4b667e229e00fb2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1278bbfe2ea6f7fc3475601b87386703b0ee7b658c81f141627fe6ca6fe91b91",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantdf759c7a1625b4e0bb93e6b0fdb5275d0833664e09c70453c4b667e229e00fb2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ca4bec4-4fe3-de6e-7b9e-58c87abbbf38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1323–1329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem frequently_iff {f : Filter α} {P : α → Prop} :
    (∃ᶠ x in f, P x) ↔ ∀ {U}, U ∈ f → ∃ x ∈ U, P x := by
  simp only [frequently_iff_forall_eventually_exists_and, exists_prop, @and_comm (P _)]
  rfl
#align filter.frequently_iff Filter.frequently_iff

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantdf759c7a1625b4e0bb93e6b0fdb5275d0833664e09c70453c4b667e229e00fb2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantdf759c7a1625b4e0bb93e6b0fdb5275d0833664e09c70453c4b667e229e00fb2.lean#L1323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f10793f23ae104512c0a8fb86ab4625b5eb0aff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
