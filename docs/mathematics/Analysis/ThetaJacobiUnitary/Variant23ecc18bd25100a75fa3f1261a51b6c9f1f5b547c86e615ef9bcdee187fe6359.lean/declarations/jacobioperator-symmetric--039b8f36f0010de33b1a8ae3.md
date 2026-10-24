# jacobiOperator_symmetric

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8d94945c95a1b5961b1032f6beef3839008a1b38",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 186,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/23/23ecc18bd25100a75fa3f1261a51b6c9f1f5b547c86e615ef9bcdee187fe6359.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ece99720-8ebe-0bf9-9342-295ba8befabe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bfcd4dab-5c7e-6c16-65ff-cf2443b37298",
  "kind": "theorem",
  "lexical_name": "jacobiOperator_symmetric",
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
  "slug": "jacobioperator-symmetric--039b8f36f0010de33b1a8ae3",
  "source": {
    "blob": "8d94945c95a1b5961b1032f6beef3839008a1b38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 186,
    "path": "GRWTSK/Analysis/ThetaJacobiUnitary/Variant23ecc18bd25100a75fa3f1261a51b6c9f1f5b547c86e615ef9bcdee187fe6359.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:039b8f36f0010de33b1a8ae3fc5bb757f72e61728773ffed0f34f53cf71c8b41",
  "verification": {
    "reference": "docs/verification/Analysis/ThetaJacobiUnitary/Variant23ecc18bd25100a75fa3f1261a51b6c9f1f5b547c86e615ef9bcdee187fe6359.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bfcd4dab-5c7e-6c16-65ff-cf2443b37298`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jacobiOperator_symmetric {t : ℝ} (ht : 0 ≤ t) :
    (jacobiOperator t ht).IsFormalAdjoint (jacobiOperator t ht) := by
  intro f g
  change jacobiDomain t ht at f g
  change ⟪jacobiOperator t ht f, (g : lp (fun _ : ℕ => ℂ) 2)⟫_ℂ =
    ⟪(f : lp (fun _ : ℕ => ℂ) 2), jacobiOperator t ht g⟫_ℂ
  rw [← (pointedUnitary t ht).inner_map_map,
    pointedUnitary_jacobiOperator]
  change ⟪coordinateMultiplication (momentMeasure t) (domainUnitary t ht f),
    (domainUnitary t ht g : Lp ℂ 2 (momentMeasure t))⟫_ℂ = _
  rw [coordinateMultiplication_formalAdjoint (momentMeasure t)]
  rw [← (pointedUnitary t ht).inner_map_map,
    pointedUnitary_jacobiOperator]
  rfl

open scoped LinearPMap

/-- Maximal self-adjointness survives the proved pointed unitary, with its literal domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ThetaJacobiUnitary/Variant23ecc18bd25100a75fa3f1261a51b6c9f1f5b547c86e615ef9bcdee187fe6359.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ThetaJacobiUnitary/Variant23ecc18bd25100a75fa3f1261a51b6c9f1f5b547c86e615ef9bcdee187fe6359.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d94945c95a1b5961b1032f6beef3839008a1b38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
