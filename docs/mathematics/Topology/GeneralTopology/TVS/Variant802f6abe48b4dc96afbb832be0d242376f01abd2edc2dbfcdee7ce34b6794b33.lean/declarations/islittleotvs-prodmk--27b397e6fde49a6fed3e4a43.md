# IsLittleOTVS.prodMk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ad9f103f-82f8-b3f9-d7ca-7ec44597e89a",
  "kind": "theorem",
  "lexical_name": "IsLittleOTVS.prodMk",
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
  "slug": "islittleotvs-prodmk--27b397e6fde49a6fed3e4a43",
  "source": {
    "blob": "b4d1414f6409bd8837ab6212ea881887616138ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 342,
    "line": 332,
    "path": "GRWTSK/Topology/GeneralTopology/TVS/Variant802f6abe48b4dc96afbb832be0d242376f01abd2edc2dbfcdee7ce34b6794b33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27b397e6fde49a6fed3e4a433621cee1984fe53ac75f7b1c14b78fdc919ae681",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TVS/Variant802f6abe48b4dc96afbb832be0d242376f01abd2edc2dbfcdee7ce34b6794b33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad9f103f-82f8-b3f9-d7ca-7ec44597e89a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–342.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsLittleOTVS.prodMk [ContinuousSMul 𝕜 E] [ContinuousSMul 𝕜 F] {k : α → G}
    (hf : f =o[𝕜; l] k) (hg : g =o[𝕜; l] k) : (fun x ↦ (f x, g x)) =o[𝕜; l] k := by
  rw [((nhds_basis_balanced 𝕜 E).prod_nhds (nhds_basis_balanced 𝕜 F)).isLittleOTVS_iff
    (basis_sets _)]
  rintro ⟨U, V⟩ ⟨⟨hU, hUb⟩, hV, hVb⟩
  rcases ((hf.eventually_smallSets U hU).and (hg.eventually_smallSets V hV)).exists_mem_of_smallSets
    with ⟨W, hW, hWf, hWg⟩
  refine ⟨W, hW, fun ε hε ↦ ?_⟩
  filter_upwards [hWf ε hε, hWg ε hε] with x hfx hgx
  simp [egauge_prod_mk, *]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TVS/Variant802f6abe48b4dc96afbb832be0d242376f01abd2edc2dbfcdee7ce34b6794b33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TVS/Variant802f6abe48b4dc96afbb832be0d242376f01abd2edc2dbfcdee7ce34b6794b33.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4d1414f6409bd8837ab6212ea881887616138ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
