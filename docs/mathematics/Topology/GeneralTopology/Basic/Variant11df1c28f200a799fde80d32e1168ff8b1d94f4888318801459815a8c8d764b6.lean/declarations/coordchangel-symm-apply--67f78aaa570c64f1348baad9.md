# coordChangeL_symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c5775b7-fd9f-aab4-76b5-cc6e3b9c6d8d",
  "kind": "theorem",
  "lexical_name": "coordChangeL_symm_apply",
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
  "slug": "coordchangel-symm-apply--67f78aaa570c64f1348baad9",
  "source": {
    "blob": "819ab22cae2ff5c95513c9145fe1c5778bf4a61b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 334,
    "line": 320,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant11df1c28f200a799fde80d32e1168ff8b1d94f4888318801459815a8c8d764b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67f78aaa570c64f1348baad9ea7267996e3d467a33a2c56284069a2c3289e61e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant11df1c28f200a799fde80d32e1168ff8b1d94f4888318801459815a8c8d764b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c5775b7-fd9f-aab4-76b5-cc6e3b9c6d8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 320–334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coordChangeL_symm_apply (e e' : Trivialization F (π F E)) [e.IsLinear R] [e'.IsLinear R]
    {b : B} (hb : b ∈ e.baseSet ∩ e'.baseSet) :
    ⇑(coordChangeL R e e' b).symm =
      (e'.linearEquivAt R b hb.2).symm.trans (e.linearEquivAt R b hb.1) :=
  congr_arg LinearEquiv.invFun (dif_pos hb)

end Trivialization

end TopologicalVectorSpace

section

namespace Bundle

/-- The zero section of a vector bundle -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant11df1c28f200a799fde80d32e1168ff8b1d94f4888318801459815a8c8d764b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant11df1c28f200a799fde80d32e1168ff8b1d94f4888318801459815a8c8d764b6.lean#L320).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `819ab22cae2ff5c95513c9145fe1c5778bf4a61b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
