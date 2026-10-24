# le_trailingDegree_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:04055963-e970-b900-e7ab-0b8214b4c1de",
  "kind": "theorem",
  "lexical_name": "le_trailingDegree_mul",
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
  "slug": "le-trailingdegree-mul--ae39d7119a19e09cd32f48c2",
  "source": {
    "blob": "1ee8123765a7d1f28b95e9af35576eaf21d7659f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 290,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/TrailingDegree/Variant3e92f607c4dc829438d1b14dc49fff6dc40b501d4e26a9a3edec7b1b8b9395c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae39d7119a19e09cd32f48c2fe53eb89902fedb64e0086227449e9551ca0b57c",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/TrailingDegree/Variant3e92f607c4dc829438d1b14dc49fff6dc40b501d4e26a9a3edec7b1b8b9395c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04055963-e970-b900-e7ab-0b8214b4c1de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 290–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_trailingDegree_mul : p.trailingDegree + q.trailingDegree ≤ (p * q).trailingDegree := by
  refine Finset.le_min fun n hn => ?_
  rw [mem_support_iff, coeff_mul] at hn
  obtain ⟨⟨i, j⟩, hij, hpq⟩ := exists_ne_zero_of_sum_ne_zero hn
  refine
    (add_le_add (min_le (mem_support_iff.mpr (left_ne_zero_of_mul hpq)))
          (min_le (mem_support_iff.mpr (right_ne_zero_of_mul hpq)))).trans_eq ?_
  rwa [← WithTop.coe_add, WithTop.coe_eq_coe, ← mem_antidiagonal]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/TrailingDegree/Variant3e92f607c4dc829438d1b14dc49fff6dc40b501d4e26a9a3edec7b1b8b9395c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/TrailingDegree/Variant3e92f607c4dc829438d1b14dc49fff6dc40b501d4e26a9a3edec7b1b8b9395c2.lean#L290).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ee8123765a7d1f28b95e9af35576eaf21d7659f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
