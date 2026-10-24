# IccExtendCM_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0c0a6bb9-5463-3dec-64d1-e94171a6339b",
  "kind": "theorem",
  "lexical_name": "IccExtendCM_of_mem",
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
  "slug": "iccextendcm-of-mem--16693d7d89a4a3bb3d522013",
  "source": {
    "blob": "3d4076e5690878047b39bc5a7f83fc473504a0ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 50,
    "path": "GRWTSK/Topology/GeneralTopology/Interval/Variant0c0bc557feb331f674c20862dd182d2dec46396ccd00483d3fb758b58f430524.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16693d7d89a4a3bb3d5220138d85e95e3e4f37f9f62b4301aca5fc2bed02804f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Interval/Variant0c0bc557feb331f674c20862dd182d2dec46396ccd00483d3fb758b58f430524.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c0a6bb9-5463-3dec-64d1-e94171a6339b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IccExtendCM_of_mem {f : C(Icc a b, E)} {x : α} (hx : x ∈ Icc a b) :
    IccExtendCM f x = f ⟨x, hx⟩ := by
  simp [IccExtendCM, projIccCM, projIcc, hx.1, hx.2]

/-- The concatenation of two continuous maps defined on adjacent intervals. If the values of the
functions on the common bound do not agree, this is defined as an arbitrarily chosen constant
map. See `concatCM` for the corresponding map on the subtype of compatible function pairs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Interval/Variant0c0bc557feb331f674c20862dd182d2dec46396ccd00483d3fb758b58f430524.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Interval/Variant0c0bc557feb331f674c20862dd182d2dec46396ccd00483d3fb758b58f430524.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d4076e5690878047b39bc5a7f83fc473504a0ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
