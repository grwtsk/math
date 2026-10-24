# imaginary_packet_posSemidef

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "78875f95d634b590745c6cccd031072c3bf0b8fa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 77,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ec/ec2c937473dd1f3e5b7f3273bb98da6ec9bb03302a2c4a2402cf4e9fbf89ecdd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5f358f51-3d70-f1cd-9bb9-e45be37212a1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:42040c16-1ca5-50aa-d3dd-7f59791914c6",
  "kind": "theorem",
  "lexical_name": "imaginary_packet_posSemidef",
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
  "slug": "imaginary-packet-possemidef--74ffbfaf2a3a38dea3ef1686",
  "source": {
    "blob": "78875f95d634b590745c6cccd031072c3bf0b8fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 77,
    "path": "GRWTSK/Algebra/LinearAlgebra/Ec2c937473dd1f3e5b7f3273bb98da6ec9bb03302a2c4a2402cf4e9fbf89ecddFeshbachHermitia/Variantec2c937473dd1f3e5b7f3273bb98da6ec9bb03302a2c4a2402cf4e9fbf89ecdd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74ffbfaf2a3a38dea3ef16867b0d802c8f42995f55e39b0ad86eff4398e67e45",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Ec2c937473dd1f3e5b7f3273bb98da6ec9bb03302a2c4a2402cf4e9fbf89ecddFeshbachHermitia/Variantec2c937473dd1f3e5b7f3273bb98da6ec9bb03302a2c4a2402cf4e9fbf89ecdd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42040c16-1ca5-50aa-d3dd-7f59791914c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem imaginary_packet_posSemidef :
    (Matrix.fromBlocks (2 : Matrix (Fin 1) (Fin 1) ℂ)
      imaginaryCouplingᴴ imaginaryCoupling 1).PosSemidef := by
  apply (posSemidef_iff _ imaginaryCoupling 1 Matrix.PosDef.one).mpr
  rw [imaginary_center]
  exact Matrix.PosSemidef.one

/-- The positive diagonal packet. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Ec2c937473dd1f3e5b7f3273bb98da6ec9bb03302a2c4a2402cf4e9fbf89ecddFeshbachHermitia/Variantec2c937473dd1f3e5b7f3273bb98da6ec9bb03302a2c4a2402cf4e9fbf89ecdd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Ec2c937473dd1f3e5b7f3273bb98da6ec9bb03302a2c4a2402cf4e9fbf89ecddFeshbachHermitia/Variantec2c937473dd1f3e5b7f3273bb98da6ec9bb03302a2c4a2402cf4e9fbf89ecdd.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78875f95d634b590745c6cccd031072c3bf0b8fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
