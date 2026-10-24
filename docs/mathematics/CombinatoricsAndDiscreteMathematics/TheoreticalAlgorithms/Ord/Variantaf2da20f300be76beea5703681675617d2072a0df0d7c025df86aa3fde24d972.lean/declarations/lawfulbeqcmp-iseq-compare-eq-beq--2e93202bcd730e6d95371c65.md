# LawfulBEqCmp.isEq_compare_eq_beq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e8cd89c3134afd0367295cf773b4a56bc97a7135",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 399,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/af2da20f300be76beea5703681675617d2072a0df0d7c025df86aa3fde24d972.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0b9b255e-2458-f8f1-db2f-7fd60491ecd5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5a732a39-91af-aee9-7280-5dbe6e912571",
  "kind": "theorem",
  "lexical_name": "LawfulBEqCmp.isEq_compare_eq_beq",
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
  "slug": "lawfulbeqcmp-iseq-compare-eq-beq--2e93202bcd730e6d95371c65",
  "source": {
    "blob": "e8cd89c3134afd0367295cf773b4a56bc97a7135",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 409,
    "line": 399,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ord/Variantaf2da20f300be76beea5703681675617d2072a0df0d7c025df86aa3fde24d972.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e93202bcd730e6d95371c653e5e2c99887a85c434e3a33e72c293d8d8d56a78",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ord/Variantaf2da20f300be76beea5703681675617d2072a0df0d7c025df86aa3fde24d972.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a732a39-91af-aee9-7280-5dbe6e912571`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 399–409.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LawfulBEqCmp.isEq_compare_eq_beq {α : Type u} [BEq α] {cmp}
    [LawfulBEqCmp (α := α) cmp] {a b : α} : (cmp a b).isEq = (a == b) := by
  rw [Bool.eq_iff_iff, Ordering.isEq_iff_eq_eq, compare_eq_iff_beq]

/--
A typeclass for types with a comparison function that satisfies `compare a b = .eq` if and only if
the boolean equality `a == b` holds.

This typeclass distinguishes itself from `LawfulEqOrd` by using boolean equality (`==`) instead of
logical equality (`=`).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ord/Variantaf2da20f300be76beea5703681675617d2072a0df0d7c025df86aa3fde24d972.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ord/Variantaf2da20f300be76beea5703681675617d2072a0df0d7c025df86aa3fde24d972.lean#L399).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8cd89c3134afd0367295cf773b4a56bc97a7135` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
