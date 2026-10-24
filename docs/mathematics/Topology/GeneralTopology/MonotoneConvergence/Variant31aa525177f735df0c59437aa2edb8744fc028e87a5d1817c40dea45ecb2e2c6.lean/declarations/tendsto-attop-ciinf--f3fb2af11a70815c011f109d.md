# tendsto_atTop_ciInf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2881f4a-c5b4-3c4e-2ee3-7c9e25c8bf70",
  "kind": "theorem",
  "lexical_name": "tendsto_atTop_ciInf",
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
  "slug": "tendsto-attop-ciinf--f3fb2af11a70815c011f109d",
  "source": {
    "blob": "2c22cc8ef325b3e42741fde7385057f89ffb15a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 137,
    "path": "GRWTSK/Topology/GeneralTopology/MonotoneConvergence/Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3fb2af11a70815c011f109d8e1894f0e9dc794dd6bba2bae1e53ff9644127fd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MonotoneConvergence/Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2881f4a-c5b4-3c4e-2ee3-7c9e25c8bf70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_atTop_ciInf (h_anti : Antitone f) (hbdd : BddBelow <| range f) :
    Tendsto f atTop (𝓝 (⨅ i, f i)) := by convert tendsto_atBot_ciSup h_anti.dual hbdd.dual using 1

end CiInf

section iSup

variable [CompleteLattice α] [SupConvergenceClass α] {f : ι → α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MonotoneConvergence/Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MonotoneConvergence/Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c22cc8ef325b3e42741fde7385057f89ffb15a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
