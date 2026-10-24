# _root_.Perfect.subset_perfectKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4585fb62d56d9ab18c619dea66e78d695f347f09",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 167,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/98/98f822458600dd9d2d8640360e6ab864684941fc4139b7287f7c93a62fda374e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:980756a0-5503-c7e4-703a-2905b9f465b1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dd8843b1-ec61-9ff4-a04a-1fa1b5390a8d",
  "kind": "theorem",
  "lexical_name": "_root_.Perfect.subset_perfectKernel",
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
  "slug": "root-perfect-subset-perfectkernel--49b83115bc1a5915c0c6a218",
  "source": {
    "blob": "4585fb62d56d9ab18c619dea66e78d695f347f09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 167,
    "path": "GRWTSK/Topology/GeneralTopology/CantorBendixson/Variant98f822458600dd9d2d8640360e6ab864684941fc4139b7287f7c93a62fda374e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49b83115bc1a5915c0c6a218a7d1c072267e47ce1a8cdcc6b2697de486393f20",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CantorBendixson/Variant98f822458600dd9d2d8640360e6ab864684941fc4139b7287f7c93a62fda374e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd8843b1-ec61-9ff4-a04a-1fa1b5390a8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.Perfect.subset_perfectKernel
    {P : Set X} (hP : Perfect P) (hPs : P ⊆ s) :
    P ⊆ perfectKernel s := by
  refine Set.subset_iInter fun i => ?_
  simpa [iteratedDerivedSet_constant_iff_preperfect.mp hP.acc i] using
    iteratedDerivedSet_mono hPs i

/-- The perfect kernel of a closed set is perfect. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CantorBendixson/Variant98f822458600dd9d2d8640360e6ab864684941fc4139b7287f7c93a62fda374e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CantorBendixson/Variant98f822458600dd9d2d8640360e6ab864684941fc4139b7287f7c93a62fda374e.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4585fb62d56d9ab18c619dea66e78d695f347f09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
