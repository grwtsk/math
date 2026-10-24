# repairedTransfer_eq_product

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:631c608c-20e4-1ace-1206-9de75f9e7e20",
  "kind": "theorem",
  "lexical_name": "repairedTransfer_eq_product",
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
  "slug": "repairedtransfer-eq-product--5b90751adb7ec709e0a4f939",
  "source": {
    "blob": "028855664c734ed1ca373742cf5f0c0b80838d2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 83,
    "path": "GRWTSK/Topology/GeneralTopology/FrozenSourceTransfer/Variant52650cc25252b42e80ef1c998cbbe4b2c1d61d986d79c256d249bb8d560d5722.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b90751adb7ec709e0a4f93901747aed86156f99f8979a9829786cccea14d627",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FrozenSourceTransfer/Variant52650cc25252b42e80ef1c998cbbe4b2c1d61d986d79c256d249bb8d560d5722.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:631c608c-20e4-1ace-1206-9de75f9e7e20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem repairedTransfer_eq_product (z : ℂ) (hz : z ≠ 1 / 2) :
    repairedTransfer z = Complex.exp (-z) * riemannZeta (1 / 2 + z) * V z := by
  classical
  simp only [repairedTransfer, Function.update_of_ne hz, transferProduct]

/-- The repaired value makes the actual transfer genuinely continuous at the removed pole. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FrozenSourceTransfer/Variant52650cc25252b42e80ef1c998cbbe4b2c1d61d986d79c256d249bb8d560d5722.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FrozenSourceTransfer/Variant52650cc25252b42e80ef1c998cbbe4b2c1d61d986d79c256d249bb8d560d5722.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `028855664c734ed1ca373742cf5f0c0b80838d2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
