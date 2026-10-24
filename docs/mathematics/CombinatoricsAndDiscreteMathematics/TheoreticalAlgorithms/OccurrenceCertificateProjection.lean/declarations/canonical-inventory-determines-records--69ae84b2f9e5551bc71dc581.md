# canonical_inventory_determines_records

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "374c31e159241db17829da6bb77f56606727505e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 489,
      "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OccurrenceCertificateProjection.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c347979d-1ede-f815-a9c4-04ae80e95ba2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d67f5570-66df-7122-af24-dea61aca0e47",
  "kind": "theorem",
  "lexical_name": "canonical_inventory_determines_records",
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
  "slug": "canonical-inventory-determines-records--69ae84b2f9e5551bc71dc581",
  "source": {
    "blob": "374c31e159241db17829da6bb77f56606727505e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 504,
    "line": 489,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OccurrenceCertificateProjection.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69ae84b2f9e5551bc71dc581bbe1772e362a63432824eabe3c3089d93e12e759",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OccurrenceCertificateProjection.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d67f5570-66df-7122-af24-dea61aca0e47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 489–504.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem canonical_inventory_determines_records {first second : List Output}
    (firstUnique : (first.map outputKey).Nodup) (secondUnique : (second.map outputKey).Nodup)
    (firstSorted : (first.map outputKey).Pairwise targetLess)
    (secondSorted : (second.map outputKey).Pairwise targetLess)
    (inventory : ∀ row, row ∈ first ↔ row ∈ second) : first = second := by
  have permutation := (List.perm_ext_iff_of_nodup
    (output_key_nodup_implies_records_nodup first firstUnique)
    (output_key_nodup_implies_records_nodup second secondUnique)).mpr inventory
  apply List.Perm.eq_of_pairwise (le := fun a b => targetLess (outputKey a) (outputKey b))
      _ (firstSorted.of_map outputKey (fun _ _ h => h))
      (secondSorted.of_map outputKey (fun _ _ h => h)) permutation
  intro first second _ _ forward backward
  exact False.elim (targetLess_asymmetric forward backward)

/-- Canonical output order upgrades extensional request inventory to exact list
identity. Numeric insertion slots never stand in for literal object indices. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OccurrenceCertificateProjection.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OccurrenceCertificateProjection.lean#L489).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `374c31e159241db17829da6bb77f56606727505e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
