# inventory_log_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a18f9bf7-7a29-bcd9-440a-1c737d2c57ea",
  "kind": "theorem",
  "lexical_name": "inventory_log_lower",
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
  "slug": "inventory-log-lower--f817910d264b5cab489a44d9",
  "source": {
    "blob": "bdab93e1e1ff38ad80a6d0e4e0387b5a50cf38c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 411,
    "line": 381,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Attempt03/Variant36da9724754a616735834451e2b083ba3904d834c4af73c213c122cd19a8314b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f817910d264b5cab489a44d912ffd8efee7ade23ec7950a3673c8c4fe0a728b4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Attempt03/Variant36da9724754a616735834451e2b083ba3904d834c4af73c213c122cd19a8314b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a18f9bf7-7a29-bcd9-440a-1c737d2c57ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 381–411.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inventory_log_lower : ∀ p ∈ primeInventory,
    0 ≤ certifiedLogLower p ∧ certifiedLogLower p ≤ Real.log p := by
  intro p hp
  simp only [primeInventory, mem_insert, mem_singleton] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · norm_num [certifiedLogLower]; convert log_two_lower using 1 <;> norm_num
  · norm_num [certifiedLogLower]; convert log_3_lower using 1 <;> norm_num
  · norm_num [certifiedLogLower]; convert log_5_lower using 1 <;> norm_num
  · norm_num [certifiedLogLower]; convert log_7_lower using 1 <;> norm_num
  · norm_num [certifiedLogLower]; convert log_11_lower using 1 <;> norm_num
  · norm_num [certifiedLogLower]; convert log_13_lower using 1 <;> norm_num
  · norm_num [certifiedLogLower]; convert log_17_lower using 1 <;> norm_num
  · norm_num [certifiedLogLower]; convert log_19_lower using 1 <;> norm_num
  · norm_num [certifiedLogLower]; convert log_23_lower using 1 <;> norm_num
  · norm_num [certifiedLogLower]; convert log_29_lower using 1 <;> norm_num
  · norm_num [certifiedLogLower]; convert log_31_lower using 1 <;> norm_num
  · norm_num [certifiedLogLower]; convert log_37_lower using 1 <;> norm_num
  · norm_num [certifiedLogLower]; convert log_41_lower using 1 <;> norm_num
  · norm_num [certifiedLogLower]; convert log_43_lower using 1 <;> norm_num
  · norm_num [certifiedLogLower]; convert log_47_lower using 1 <;> norm_num
  · norm_num [certifiedLogLower]; convert log_53_lower using 1 <;> norm_num
  · norm_num [certifiedLogLower]; convert log_59_lower using 1 <;> norm_num
  · norm_num [certifiedLogLower]; convert log_61_lower using 1 <;> norm_num
  · norm_num [certifiedLogLower]; convert log_67_lower using 1 <;> norm_num
  · norm_num [certifiedLogLower]; convert log_71_lower using 1 <;> norm_num
  · norm_num [certifiedLogLower]; convert log_73_lower using 1 <;> norm_num
  · norm_num [certifiedLogLower]; convert log_79_lower using 1 <;> norm_num
  · norm_num [certifiedLogLower]; convert log_83_lower using 1 <;> norm_num
  · norm_num [certifiedLogLower]; convert log_89_lower using 1 <;> norm_num
  · norm_num [certifiedLogLower]; convert log_97_lower using 1 <;> norm_num

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Attempt03/Variant36da9724754a616735834451e2b083ba3904d834c4af73c213c122cd19a8314b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Attempt03/Variant36da9724754a616735834451e2b083ba3904d834c4af73c213c122cd19a8314b.lean#L381).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdab93e1e1ff38ad80a6d0e4e0387b5a50cf38c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
