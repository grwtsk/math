# Left.one_lt_mul_of_lt_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9584337874155f8b0b3d61930a857873f57f9622",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 730,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a449c997b55589f603072a864de198d837f24d82114c9f74e2b9c5119a7c06e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8b00ae45-4892-b20e-ffeb-40d1445ce112",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b13f04e3-9cbe-60d1-073f-9da4de620492",
  "kind": "theorem",
  "lexical_name": "Left.one_lt_mul_of_lt_of_le",
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
  "slug": "left-one-lt-mul-of-lt-of-le--2860f5741a82c11ac3f17c51",
  "source": {
    "blob": "9584337874155f8b0b3d61930a857873f57f9622",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 740,
    "line": 730,
    "path": "GRWTSK/Algebra/GroupTheory/Lemmas/Variant4a449c997b55589f603072a864de198d837f24d82114c9f74e2b9c5119a7c06e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2860f5741a82c11ac3f17c510eba7aba0e7752741f1b6b6c38d7ed6da06e1241",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Lemmas/Variant4a449c997b55589f603072a864de198d837f24d82114c9f74e2b9c5119a7c06e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b13f04e3-9cbe-60d1-073f-9da4de620492`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 730–740.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Left.one_lt_mul_of_lt_of_le [CovariantClass α α (· * ·) (· ≤ ·)] {a b : α} (ha : 1 < a)
    (hb : 1 ≤ b) :
    1 < a * b :=
  lt_mul_of_lt_of_one_le ha hb
#align left.one_lt_mul_of_lt_of_le Left.one_lt_mul_of_lt_of_le
#align left.add_pos_of_pos_of_nonneg Left.add_pos_of_pos_of_nonneg

/-- Assumes left covariance.
The lemma assuming right covariance is `Right.one_lt_mul`. -/
@[to_additive Left.add_pos "Assumes left covariance.
The lemma assuming right covariance is `Right.add_pos`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Lemmas/Variant4a449c997b55589f603072a864de198d837f24d82114c9f74e2b9c5119a7c06e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Lemmas/Variant4a449c997b55589f603072a864de198d837f24d82114c9f74e2b9c5119a7c06e.lean#L730).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9584337874155f8b0b3d61930a857873f57f9622` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
