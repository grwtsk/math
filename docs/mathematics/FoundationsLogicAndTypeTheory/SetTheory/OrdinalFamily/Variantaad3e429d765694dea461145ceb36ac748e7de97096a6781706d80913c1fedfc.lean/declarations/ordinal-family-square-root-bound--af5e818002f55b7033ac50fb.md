# ordinal_family_square_root_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cc8233d064f1413c7df4c55e97cd2485e7df208e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/aa/aad3e429d765694dea461145ceb36ac748e7de97096a6781706d80913c1fedfc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b0639864-9b33-2187-86df-57776eb6a85f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5e8e2684-3799-43c8-badc-2ad6a4d52ffe",
  "kind": "theorem",
  "lexical_name": "ordinal_family_square_root_bound",
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
  "slug": "ordinal-family-square-root-bound--af5e818002f55b7033ac50fb",
  "source": {
    "blob": "cc8233d064f1413c7df4c55e97cd2485e7df208e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 74,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/OrdinalFamily/Variantaad3e429d765694dea461145ceb36ac748e7de97096a6781706d80913c1fedfc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af5e818002f55b7033ac50fb880455eb59d54cb013253bf2e40b8558cd9f0f7c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/OrdinalFamily/Variantaad3e429d765694dea461145ceb36ac748e7de97096a6781706d80913c1fedfc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e8e2684-3799-43c8-badc-2ad6a4d52ffe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ordinal_family_square_root_bound
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    (certificate :
      OrdinalFamilySquareRootCertificate system)
    (stage : Nat) :
    certificate.discrepancyNorm stage ≤
      certificate.uniformConstant *
        Mathematics.MobiusOntology.squareRootWeight
          (certificate.mass stage)
          certificate.logarithmicOrder := by
  have finiteBound :=
    (system.cut stage).closure
      .deterministicDiscrepancyBound
        (certificate.scaleAt stage)
  rw [certificate.logarithmicOrderMatches stage] at
    finiteBound
  have weightNonnegative :
      0 ≤
        Mathematics.MobiusOntology.squareRootWeight
          (certificate.mass stage)
          certificate.logarithmicOrder := by
    apply mul_nonneg
    · exact Real.sqrt_nonneg _
    · exact pow_nonneg
        (add_nonneg zero_le_one
          (Real.log_nonneg
            ((system.cut stage).closure.assembly
              .massAtLeastOne
                (certificate.scaleAt stage))))
        _
  exact le_trans finiteBound
    (mul_le_mul_of_nonneg_right
      (certificate.totalConstantUniform stage)
      weightNonnegative)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/OrdinalFamily/Variantaad3e429d765694dea461145ceb36ac748e7de97096a6781706d80913c1fedfc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/OrdinalFamily/Variantaad3e429d765694dea461145ceb36ac748e7de97096a6781706d80913c1fedfc.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc8233d064f1413c7df4c55e97cd2485e7df208e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
