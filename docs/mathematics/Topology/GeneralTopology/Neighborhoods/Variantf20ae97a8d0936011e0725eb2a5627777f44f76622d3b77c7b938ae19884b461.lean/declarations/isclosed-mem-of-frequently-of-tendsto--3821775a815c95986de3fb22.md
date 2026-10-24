# IsClosed.mem_of_frequently_of_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e48a269f-2ffd-b08d-a213-8592fa3a4350",
  "kind": "theorem",
  "lexical_name": "IsClosed.mem_of_frequently_of_tendsto",
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
  "slug": "isclosed-mem-of-frequently-of-tendsto--3821775a815c95986de3fb22",
  "source": {
    "blob": "85a377bb7b399663ba1086fa63475f709231a0d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 363,
    "line": 360,
    "path": "GRWTSK/Topology/GeneralTopology/Neighborhoods/Variantf20ae97a8d0936011e0725eb2a5627777f44f76622d3b77c7b938ae19884b461.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3821775a815c95986de3fb227952229e4c1bdd7af0abc5f71966885f394060bd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Neighborhoods/Variantf20ae97a8d0936011e0725eb2a5627777f44f76622d3b77c7b938ae19884b461.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e48a269f-2ffd-b08d-a213-8592fa3a4350`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 360–363.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsClosed.mem_of_frequently_of_tendsto {f : α → X} {b : Filter α}
    (hs : IsClosed s) (h : ∃ᶠ x in b, f x ∈ s) (hf : Tendsto f b (𝓝 x)) : x ∈ s :=
  (hf.frequently <| show ∃ᶠ x in b, (fun y => y ∈ s) (f x) from h).mem_of_closed hs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Neighborhoods/Variantf20ae97a8d0936011e0725eb2a5627777f44f76622d3b77c7b938ae19884b461.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Neighborhoods/Variantf20ae97a8d0936011e0725eb2a5627777f44f76622d3b77c7b938ae19884b461.lean#L360).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85a377bb7b399663ba1086fa63475f709231a0d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
