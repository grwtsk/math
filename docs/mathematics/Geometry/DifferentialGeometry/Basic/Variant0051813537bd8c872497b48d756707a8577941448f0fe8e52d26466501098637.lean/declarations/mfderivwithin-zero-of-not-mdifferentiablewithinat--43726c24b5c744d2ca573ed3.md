# mfderivWithin_zero_of_not_mdifferentiableWithinAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "19eb776f5780ad4650a415a82bf6f3d7aeaa18dd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 616,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/00/0051813537bd8c872497b48d756707a8577941448f0fe8e52d26466501098637.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:efd5b40e-58cb-bec0-d253-e188e8e72348",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:612956b4-2f87-1ff4-341a-6e9c68ee4168",
  "kind": "theorem",
  "lexical_name": "mfderivWithin_zero_of_not_mdifferentiableWithinAt",
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
  "slug": "mfderivwithin-zero-of-not-mdifferentiablewithinat--43726c24b5c744d2ca573ed3",
  "source": {
    "blob": "19eb776f5780ad4650a415a82bf6f3d7aeaa18dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 619,
    "line": 616,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant0051813537bd8c872497b48d756707a8577941448f0fe8e52d26466501098637.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43726c24b5c744d2ca573ed3e1d16582afa9eba8941a84ad81a38b6974f914b5",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Basic/Variant0051813537bd8c872497b48d756707a8577941448f0fe8e52d26466501098637.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:612956b4-2f87-1ff4-341a-6e9c68ee4168`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 616–619.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mfderivWithin_zero_of_not_mdifferentiableWithinAt
    (h : ¬MDifferentiableWithinAt I I' f s x) : mfderivWithin I I' f s x = 0 := by
  simp only [mfderivWithin, h, if_neg, not_false_iff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Basic/Variant0051813537bd8c872497b48d756707a8577941448f0fe8e52d26466501098637.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Basic/Variant0051813537bd8c872497b48d756707a8577941448f0fe8e52d26466501098637.lean#L616).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19eb776f5780ad4650a415a82bf6f3d7aeaa18dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
