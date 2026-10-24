# nonzero_cross_lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "304f4024db8c1a24f8aad765316fca7faf11e969",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 31,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e8/e83568d977c2127560d997ede987cec11bf164759a4f3aaf5598c1106805a331.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7c50f761-7523-1a7f-a4cc-c99e6e87a7cb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:198baf4d-cab7-14d5-a2ad-24eb28c2cf0b",
  "kind": "theorem",
  "lexical_name": "nonzero_cross_lift",
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
  "slug": "nonzero-cross-lift--76fc1b839bcfc0b8207dd28e",
  "source": {
    "blob": "304f4024db8c1a24f8aad765316fca7faf11e969",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 31,
    "path": "GRWTSK/Algebra/LinearAlgebra/PositiveAtlasFeshbachReconstruction/Variante83568d977c2127560d997ede987cec11bf164759a4f3aaf5598c1106805a331.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76fc1b839bcfc0b8207dd28e54013c8467ab4171de088b8f721d8abc1deb66af",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PositiveAtlasFeshbachReconstruction/Variante83568d977c2127560d997ede987cec11bf164759a4f3aaf5598c1106805a331.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:198baf4d-cab7-14d5-a2ad-24eb28c2cf0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonzero_cross_lift : lift two two (fun _ => 3) = (fun _ => 3, fun _ => -3) := by
  ext <;> norm_num [lift_apply, inverse_two, two, Matrix.mulVec, dotProduct]

/-- The coupled full packet annihilates a nonzero reconstructed vector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PositiveAtlasFeshbachReconstruction/Variante83568d977c2127560d997ede987cec11bf164759a4f3aaf5598c1106805a331.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PositiveAtlasFeshbachReconstruction/Variante83568d977c2127560d997ede987cec11bf164759a4f3aaf5598c1106805a331.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `304f4024db8c1a24f8aad765316fca7faf11e969` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
