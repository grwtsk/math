# nnnorm_smulRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea62a2f2-fad7-b4d8-9657-a26c9eb04711",
  "kind": "theorem",
  "lexical_name": "nnnorm_smulRight",
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
  "slug": "nnnorm-smulright--10731cd6849535c66664dd51",
  "source": {
    "blob": "7c4f4f226ccd3b3a4dc39673aa52f23372ff4c5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 802,
    "line": 787,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant3ffb0c6e9f1094bafdeead9932c8678bbcdd1a217c26415649e1e7fd4d26412b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10731cd6849535c66664dd517d65f5d286c867de504760eca79c05ea80c6feba",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant3ffb0c6e9f1094bafdeead9932c8678bbcdd1a217c26415649e1e7fd4d26412b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea62a2f2-fad7-b4d8-9657-a26c9eb04711`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 787–802.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nnnorm_smulRight (f : ContinuousMultilinearMap 𝕜 E 𝕜) (z : G) :
    ‖f.smulRight z‖₊ = ‖f‖₊ * ‖z‖₊ := by
  refine le_antisymm ?_ ?_
  · refine opNNNorm_le_iff.2 fun m => (nnnorm_smul_le _ _).trans ?_
    rw [mul_right_comm]
    gcongr
    exact le_opNNNorm _ _
  · obtain hz | hz := eq_zero_or_pos ‖z‖₊
    · simp [hz]
    rw [← le_div_iff₀ hz, opNNNorm_le_iff]
    intro m
    rw [div_mul_eq_mul_div, le_div_iff₀ hz]
    refine le_trans ?_ ((f.smulRight z).le_opNNNorm m)
    rw [smulRight_apply, nnnorm_smul]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant3ffb0c6e9f1094bafdeead9932c8678bbcdd1a217c26415649e1e7fd4d26412b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant3ffb0c6e9f1094bafdeead9932c8678bbcdd1a217c26415649e1e7fd4d26412b.lean#L787).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c4f4f226ccd3b3a4dc39673aa52f23372ff4c5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
