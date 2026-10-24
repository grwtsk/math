# inv_le_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a2460d6-c62b-9611-f393-0fea6f55f3c9",
  "kind": "theorem",
  "lexical_name": "inv_le_inv",
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
  "slug": "inv-le-inv--2b3c2d47a44cba09c2f35179",
  "source": {
    "blob": "da1043e1c4e35defb7b43aa5136ff783afde8e12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 164,
    "path": "GRWTSK/Algebra/GroupTheory/Pointwise/Variant16bb1be990ccc02be75ed41ff6ac60ab89b0a25906641f801dbb1ee582b8935f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b3c2d47a44cba09c2f35179a1cd0486bc5f53e1fccf4c73264c5ae2ffa89d51",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Pointwise/Variant16bb1be990ccc02be75ed41ff6ac60ab89b0a25906641f801dbb1ee582b8935f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a2460d6-c62b-9611-f393-0fea6f55f3c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inv_le_inv (S T : Submonoid G) : S⁻¹ ≤ T⁻¹ ↔ S ≤ T :=
  SetLike.coe_subset_coe.symm.trans Set.inv_subset_inv

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Pointwise/Variant16bb1be990ccc02be75ed41ff6ac60ab89b0a25906641f801dbb1ee582b8935f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Pointwise/Variant16bb1be990ccc02be75ed41ff6ac60ab89b0a25906641f801dbb1ee582b8935f.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da1043e1c4e35defb7b43aa5136ff783afde8e12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
