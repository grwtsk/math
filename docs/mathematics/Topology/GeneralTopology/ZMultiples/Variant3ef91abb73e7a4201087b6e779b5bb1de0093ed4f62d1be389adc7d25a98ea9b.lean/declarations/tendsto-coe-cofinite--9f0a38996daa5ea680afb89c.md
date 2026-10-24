# tendsto_coe_cofinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "116b5f89c1f06eefef090e5aa486f37344bf66eb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 50,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3e/3ef91abb73e7a4201087b6e779b5bb1de0093ed4f62d1be389adc7d25a98ea9b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e4334c4c-65af-91d9-2d29-b8326e12b990",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:820dde1e-0414-7c60-5a99-1ee686511b55",
  "kind": "theorem",
  "lexical_name": "tendsto_coe_cofinite",
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
  "slug": "tendsto-coe-cofinite--9f0a38996daa5ea680afb89c",
  "source": {
    "blob": "116b5f89c1f06eefef090e5aa486f37344bf66eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 50,
    "path": "GRWTSK/Topology/GeneralTopology/ZMultiples/Variant3ef91abb73e7a4201087b6e779b5bb1de0093ed4f62d1be389adc7d25a98ea9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f0a38996daa5ea680afb89c70d3fab9c30fac271ac80c9d099bd5dccc1f502e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ZMultiples/Variant3ef91abb73e7a4201087b6e779b5bb1de0093ed4f62d1be389adc7d25a98ea9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:820dde1e-0414-7c60-5a99-1ee686511b55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_coe_cofinite : Tendsto ((↑) : ℤ → ℝ) cofinite (cocompact ℝ) := by
  apply (castAddHom ℝ).tendsto_coe_cofinite_of_isDiscrete cast_injective
  rw [range_castAddHom, SetLike.isDiscrete_iff_discreteTopology]
  infer_instance

/-- For nonzero `a`, the "multiples of `a`" map `zmultiplesHom` from `ℤ` to `ℝ` is discrete, i.e.
inverse images of compact sets are finite. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ZMultiples/Variant3ef91abb73e7a4201087b6e779b5bb1de0093ed4f62d1be389adc7d25a98ea9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ZMultiples/Variant3ef91abb73e7a4201087b6e779b5bb1de0093ed4f62d1be389adc7d25a98ea9b.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `116b5f89c1f06eefef090e5aa486f37344bf66eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
