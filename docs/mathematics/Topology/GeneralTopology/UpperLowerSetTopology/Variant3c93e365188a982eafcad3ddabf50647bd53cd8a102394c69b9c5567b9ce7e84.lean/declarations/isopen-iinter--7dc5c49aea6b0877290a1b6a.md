# isOpen_iInter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:008a939f-8f4e-dfdd-2003-320cfca52a58",
  "kind": "theorem",
  "lexical_name": "isOpen_iInter",
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
  "slug": "isopen-iinter--7dc5c49aea6b0877290a1b6a",
  "source": {
    "blob": "0d66285de15d86a95e5e7df2792f0a0472c4270c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 298,
    "path": "GRWTSK/Topology/GeneralTopology/UpperLowerSetTopology/Variant3c93e365188a982eafcad3ddabf50647bd53cd8a102394c69b9c5567b9ce7e84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7dc5c49aea6b0877290a1b6a9b20663ca47f8cd409964e22e2c8451456a34869",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UpperLowerSetTopology/Variant3c93e365188a982eafcad3ddabf50647bd53cd8a102394c69b9c5567b9ce7e84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:008a939f-8f4e-dfdd-2003-320cfca52a58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isOpen_iInter {f : ι → Set α} (hf : ∀ i, IsOpen (f i)) : IsOpen (⋂ i, f i) := by
  simp_rw [IsOpen_iff_IsUpperSet] at *
  apply isUpperSet_iInter
  intros i
  exact hf i

-- c.f. isClosed_iff_lower_and_subset_implies_LUB_mem
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UpperLowerSetTopology/Variant3c93e365188a982eafcad3ddabf50647bd53cd8a102394c69b9c5567b9ce7e84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UpperLowerSetTopology/Variant3c93e365188a982eafcad3ddabf50647bd53cd8a102394c69b9c5567b9ce7e84.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d66285de15d86a95e5e7df2792f0a0472c4270c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
