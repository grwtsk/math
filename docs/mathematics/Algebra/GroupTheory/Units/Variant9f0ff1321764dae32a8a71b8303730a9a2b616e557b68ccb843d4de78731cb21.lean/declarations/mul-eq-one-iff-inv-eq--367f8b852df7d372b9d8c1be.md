# mul_eq_one_iff_inv_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "078dd7986007ac6c665d6255501918a9a1668514",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 364,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:515073a3-619d-ee63-0338-cd9b968a5e56",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1112e4e7-5e1b-7f81-9944-a590934ce144",
  "kind": "theorem",
  "lexical_name": "mul_eq_one_iff_inv_eq",
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
  "slug": "mul-eq-one-iff-inv-eq--367f8b852df7d372b9d8c1be",
  "source": {
    "blob": "078dd7986007ac6c665d6255501918a9a1668514",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 369,
    "line": 364,
    "path": "GRWTSK/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:367f8b852df7d372b9d8c1be23043254839211c295b27d3311367ca59af7d8ef",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1112e4e7-5e1b-7f81-9944-a590934ce144`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 364–369.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem mul_eq_one_iff_inv_eq (h : IsUnit a) : a * b = 1 ↔ a⁻¹ = b :=
  @Units.mul_eq_one_iff_inv_eq _ _ h.unit' _
#align is_unit.mul_eq_one_iff_inv_eq IsUnit.mul_eq_one_iff_inv_eq
#align is_add_unit.add_eq_zero_iff_neg_eq IsAddUnit.add_eq_zero_iff_neg_eq

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean#L364).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `078dd7986007ac6c665d6255501918a9a1668514` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
