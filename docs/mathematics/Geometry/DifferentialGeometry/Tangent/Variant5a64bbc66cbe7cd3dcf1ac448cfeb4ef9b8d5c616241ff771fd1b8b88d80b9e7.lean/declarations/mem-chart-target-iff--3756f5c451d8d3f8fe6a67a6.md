# mem_chart_target_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "934fab2dbf638b2530ee925d6b60e4b199bd04f4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 243,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5a64bbc66cbe7cd3dcf1ac448cfeb4ef9b8d5c616241ff771fd1b8b88d80b9e7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:66a524af-9aae-5be3-568c-9c005a0d3d85",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bd8c3488-33d5-2c11-d147-273ba5d72f9c",
  "kind": "theorem",
  "lexical_name": "mem_chart_target_iff",
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
  "slug": "mem-chart-target-iff--3756f5c451d8d3f8fe6a67a6",
  "source": {
    "blob": "934fab2dbf638b2530ee925d6b60e4b199bd04f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 243,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Tangent/Variant5a64bbc66cbe7cd3dcf1ac448cfeb4ef9b8d5c616241ff771fd1b8b88d80b9e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3756f5c451d8d3f8fe6a67a6fa97a9437e44d069ef2271a90faee8d06cd1d731",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Tangent/Variant5a64bbc66cbe7cd3dcf1ac448cfeb4ef9b8d5c616241ff771fd1b8b88d80b9e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd8c3488-33d5-2c11-d147-273ba5d72f9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_chart_target_iff (p : H × E) (q : TM) :
    p ∈ (chartAt (ModelProd H E) q).target ↔ p.1 ∈ (chartAt H q.1).target := by
  /- porting note: was
  simp +contextual only [FiberBundle.chartedSpace_chartAt,
    and_iff_left_iff_imp, mfld_simps]
  -/
  simp only [FiberBundle.chartedSpace_chartAt, mfld_simps]
  rw [PartialEquiv.prod_symm]
  simp +contextual only [and_iff_left_iff_imp, mfld_simps]

@[simp, mfld_simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Tangent/Variant5a64bbc66cbe7cd3dcf1ac448cfeb4ef9b8d5c616241ff771fd1b8b88d80b9e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Tangent/Variant5a64bbc66cbe7cd3dcf1ac448cfeb4ef9b8d5c616241ff771fd1b8b88d80b9e7.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `934fab2dbf638b2530ee925d6b60e4b199bd04f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
