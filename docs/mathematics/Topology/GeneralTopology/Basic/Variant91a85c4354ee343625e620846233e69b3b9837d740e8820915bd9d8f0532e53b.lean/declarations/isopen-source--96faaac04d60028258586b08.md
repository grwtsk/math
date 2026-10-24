# isOpen_source

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a9a281c7-9f37-085f-740f-2ac63ad81b4b",
  "kind": "theorem",
  "lexical_name": "isOpen_source",
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
  "slug": "isopen-source--96faaac04d60028258586b08",
  "source": {
    "blob": "a68fb721eb3d4f095b1e594d3a3e1bdb1ee4c151",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 758,
    "line": 751,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant91a85c4354ee343625e620846233e69b3b9837d740e8820915bd9d8f0532e53b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96faaac04d60028258586b0807e719c143700039c710cd180031c70707067444",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant91a85c4354ee343625e620846233e69b3b9837d740e8820915bd9d8f0532e53b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9a281c7-9f37-085f-740f-2ac63ad81b4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 751–758.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isOpen_source (e : Pretrivialization F (π F E)) :
    IsOpen[a.totalSpaceTopology] e.source := by
  refine isOpen_iSup_iff.mpr fun e' => isOpen_iSup_iff.mpr fun _ => ?_
  refine isOpen_coinduced.mpr (isOpen_induced_iff.mpr ⟨e.target, e.open_target, ?_⟩)
  ext ⟨x, hx⟩
  simp only [mem_preimage, Pretrivialization.setSymm, restrict, e.mem_target, e.mem_source,
    e'.proj_symm_apply hx]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant91a85c4354ee343625e620846233e69b3b9837d740e8820915bd9d8f0532e53b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant91a85c4354ee343625e620846233e69b3b9837d740e8820915bd9d8f0532e53b.lean#L751).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a68fb721eb3d4f095b1e594d3a3e1bdb1ee4c151` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
