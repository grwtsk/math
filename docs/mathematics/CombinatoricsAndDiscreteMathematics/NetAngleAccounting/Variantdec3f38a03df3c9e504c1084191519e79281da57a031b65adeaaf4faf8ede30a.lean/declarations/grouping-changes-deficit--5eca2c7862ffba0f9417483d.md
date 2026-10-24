# grouping_changes_deficit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:239520b1-b91e-bd45-3483-3ac4e07e34b9",
  "kind": "theorem",
  "lexical_name": "grouping_changes_deficit",
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
  "slug": "grouping-changes-deficit--5eca2c7862ffba0f9417483d",
  "source": {
    "blob": "65349fabf854c1db20573d17bd7d9b7651a2a616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 104,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NetAngleAccounting/Variantdec3f38a03df3c9e504c1084191519e79281da57a031b65adeaaf4faf8ede30a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5eca2c7862ffba0f9417483d7dca9d012a1b217ba0d6894a2b3f1dc5631fa4b5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NetAngleAccounting/Variantdec3f38a03df3c9e504c1084191519e79281da57a031b65adeaaf4faf8ede30a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:239520b1-b91e-bd45-3483-3ac4e07e34b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem grouping_changes_deficit :
    vertexDeficit (fun _ : Fin 4 => Real.pi / 2) = 0 ∧
      2 * vertexDeficit (fun _ : Fin 2 => Real.pi / 2) = 2 * Real.pi ∧
      (0 : ℝ) ≠ 2 * Real.pi := by
  constructor
  · simp [vertexDeficit]
    ring
  constructor
  · simp [vertexDeficit]
    ring
  · nlinarith [Real.pi_pos]

/-- Local deficit in the regular-prism angle formula; geometric realization is separate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/NetAngleAccounting/Variantdec3f38a03df3c9e504c1084191519e79281da57a031b65adeaaf4faf8ede30a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NetAngleAccounting/Variantdec3f38a03df3c9e504c1084191519e79281da57a031b65adeaaf4faf8ede30a.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65349fabf854c1db20573d17bd7d9b7651a2a616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
