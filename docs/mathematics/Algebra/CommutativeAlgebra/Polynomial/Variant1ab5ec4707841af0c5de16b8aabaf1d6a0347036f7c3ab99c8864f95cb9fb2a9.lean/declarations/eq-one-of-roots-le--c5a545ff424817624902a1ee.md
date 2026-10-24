# eq_one_of_roots_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce06d88e-c59d-7cfc-8e15-030e59ae87b6",
  "kind": "theorem",
  "lexical_name": "eq_one_of_roots_le",
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
  "slug": "eq-one-of-roots-le--c5a545ff424817624902a1ee",
  "source": {
    "blob": "d280d3877c59ce86b662c08b43fa555c96ed4922",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 178,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant1ab5ec4707841af0c5de16b8aabaf1d6a0347036f7c3ab99c8864f95cb9fb2a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5a545ff424817624902a1ee144d5bc9040c18fa7e3b94392b7c025f5de0ef7f",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Polynomial/Variant1ab5ec4707841af0c5de16b8aabaf1d6a0347036f7c3ab99c8864f95cb9fb2a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce06d88e-c59d-7cfc-8e15-030e59ae87b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_one_of_roots_le {p : F[X]} {f : F →+* K} {B : ℝ} (hB : B < 0) (h1 : p.Monic)
    (h2 : Splits (p.map f)) (h3 : ∀ z ∈ (map f p).roots, ‖z‖ ≤ B) : p = 1 :=
  h1.natDegree_eq_zero.mp (by
    contrapose! hB
    rw [← h1.natDegree_map f, Splits.natDegree_eq_card_roots h2] at hB
    obtain ⟨z, hz⟩ := card_pos_iff_exists_mem.mp (zero_lt_iff.mpr hB)
    exact le_trans (norm_nonneg _) (h3 z hz))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Polynomial/Variant1ab5ec4707841af0c5de16b8aabaf1d6a0347036f7c3ab99c8864f95cb9fb2a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant1ab5ec4707841af0c5de16b8aabaf1d6a0347036f7c3ab99c8864f95cb9fb2a9.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d280d3877c59ce86b662c08b43fa555c96ed4922` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
