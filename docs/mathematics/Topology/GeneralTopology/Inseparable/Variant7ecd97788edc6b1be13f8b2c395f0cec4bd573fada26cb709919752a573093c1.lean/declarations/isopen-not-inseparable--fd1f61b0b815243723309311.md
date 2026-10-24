# IsOpen.not_inseparable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "41eab1b6b4c96fd71b6b42a07c726b47044e372b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 387,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7ecd97788edc6b1be13f8b2c395f0cec4bd573fada26cb709919752a573093c1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9275b23a-22f5-613d-5277-ff613d61f2c9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0f1ef1e9-f66e-9478-7934-bd3455b4f0ba",
  "kind": "theorem",
  "lexical_name": "IsOpen.not_inseparable",
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
  "slug": "isopen-not-inseparable--fd1f61b0b815243723309311",
  "source": {
    "blob": "41eab1b6b4c96fd71b6b42a07c726b47044e372b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 400,
    "line": 387,
    "path": "GRWTSK/Topology/GeneralTopology/Inseparable/Variant7ecd97788edc6b1be13f8b2c395f0cec4bd573fada26cb709919752a573093c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd1f61b0b8152437233093111b3c9f86fa22c9f617ada08606ee31cc25073b9a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Inseparable/Variant7ecd97788edc6b1be13f8b2c395f0cec4bd573fada26cb709919752a573093c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f1ef1e9-f66e-9478-7934-bd3455b4f0ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 387–400.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsOpen.not_inseparable (hs : IsOpen s) (hx : x ∈ s) (hy : y ∉ s) : ¬(x ~ᵢ y) := fun h =>
  hy <| (h.mem_open_iff hs).1 hx
#align is_open.not_inseparable IsOpen.not_inseparable

/-!
### Separation quotient

In this section we define the quotient of a topological space by the `Inseparable` relation.
-/


variable (X)

/-- A `setoid` version of `Inseparable`, used to define the `SeparationQuotient`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Inseparable/Variant7ecd97788edc6b1be13f8b2c395f0cec4bd573fada26cb709919752a573093c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Inseparable/Variant7ecd97788edc6b1be13f8b2c395f0cec4bd573fada26cb709919752a573093c1.lean#L387).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41eab1b6b4c96fd71b6b42a07c726b47044e372b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
