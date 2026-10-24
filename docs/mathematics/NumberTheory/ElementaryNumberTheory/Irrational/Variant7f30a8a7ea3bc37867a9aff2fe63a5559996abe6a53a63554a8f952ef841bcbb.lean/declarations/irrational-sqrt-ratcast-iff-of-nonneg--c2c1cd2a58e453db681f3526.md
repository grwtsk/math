# irrational_sqrt_ratCast_iff_of_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "283b795b6b818dd0842d7c20e7fd52b4809d3bd8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 105,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7f/7f30a8a7ea3bc37867a9aff2fe63a5559996abe6a53a63554a8f952ef841bcbb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cdacec8e-95f3-ebc9-fbb3-57c7199ad3ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:111d52e4-d389-da63-fadf-8186d92b345d",
  "kind": "theorem",
  "lexical_name": "irrational_sqrt_ratCast_iff_of_nonneg",
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
  "slug": "irrational-sqrt-ratcast-iff-of-nonneg--c2c1cd2a58e453db681f3526",
  "source": {
    "blob": "283b795b6b818dd0842d7c20e7fd52b4809d3bd8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 105,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Irrational/Variant7f30a8a7ea3bc37867a9aff2fe63a5559996abe6a53a63554a8f952ef841bcbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2c1cd2a58e453db681f352648b28802d97876a9ce2f41a7f81b2026e6f51a5c",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Irrational/Variant7f30a8a7ea3bc37867a9aff2fe63a5559996abe6a53a63554a8f952ef841bcbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:111d52e4-d389-da63-fadf-8186d92b345d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem irrational_sqrt_ratCast_iff_of_nonneg {q : ℚ} (hq : 0 ≤ q) :
    Irrational (√q) ↔ ¬IsSquare q := by
  refine Iff.not (?_ : Exists _ ↔ Exists _)
  constructor
  · rintro ⟨y, hy⟩
    refine ⟨y, Rat.cast_injective (α := ℝ) ?_⟩
    rw [Rat.cast_mul, hy, mul_self_sqrt (Rat.cast_nonneg.2 hq)]
  · rintro ⟨q', rfl⟩
    exact ⟨|q'|, mod_cast (sqrt_mul_self_eq_abs q').symm⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Irrational/Variant7f30a8a7ea3bc37867a9aff2fe63a5559996abe6a53a63554a8f952ef841bcbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Irrational/Variant7f30a8a7ea3bc37867a9aff2fe63a5559996abe6a53a63554a8f952ef841bcbb.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `283b795b6b818dd0842d7c20e7fd52b4809d3bd8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
