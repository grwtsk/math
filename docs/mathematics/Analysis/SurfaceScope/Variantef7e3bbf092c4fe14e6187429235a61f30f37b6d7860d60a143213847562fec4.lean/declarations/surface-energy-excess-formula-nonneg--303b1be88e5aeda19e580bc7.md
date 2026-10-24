# surface_energy_excess_formula_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7dd07a88aeb6f083754cc62e9847e0f79a2c45e1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 201,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ef/ef7e3bbf092c4fe14e6187429235a61f30f37b6d7860d60a143213847562fec4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:94cb8561-3fcd-8218-be1e-bb682c53a6fe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1ff224f7-8cdc-ac76-f1f7-4caa58915d25",
  "kind": "theorem",
  "lexical_name": "surface_energy_excess_formula_nonneg",
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
  "slug": "surface-energy-excess-formula-nonneg--303b1be88e5aeda19e580bc7",
  "source": {
    "blob": "7dd07a88aeb6f083754cc62e9847e0f79a2c45e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 201,
    "path": "GRWTSK/Analysis/SurfaceScope/Variantef7e3bbf092c4fe14e6187429235a61f30f37b6d7860d60a143213847562fec4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:303b1be88e5aeda19e580bc730cd13b357c9ed5ba0076f14b6f5deb39566551f",
  "verification": {
    "reference": "docs/verification/Analysis/SurfaceScope/Variantef7e3bbf092c4fe14e6187429235a61f30f37b6d7860d60a143213847562fec4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ff224f7-8cdc-ac76-f1f7-4caa58915d25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem surface_energy_excess_formula_nonneg {surfaceTension area referenceArea : ℝ}
    (tensionNonnegative : 0 ≤ surfaceTension) (areaLowerBound : referenceArea ≤ area) :
    0 ≤ surfaceEnergyExcessFormula surfaceTension area referenceArea :=
  mul_nonneg tensionNonnegative (sub_nonneg.mpr areaLowerBound)

/-- At the positive volume supplied by a reference radius, an explicit scalar
isoperimetric inequality and nonnegative tension give nonnegative reference energy excess.
The reference is a formula state; no geometric existence or rigidity theorem is used. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/SurfaceScope/Variantef7e3bbf092c4fe14e6187429235a61f30f37b6d7860d60a143213847562fec4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SurfaceScope/Variantef7e3bbf092c4fe14e6187429235a61f30f37b6d7860d60a143213847562fec4.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7dd07a88aeb6f083754cc62e9847e0f79a2c45e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
