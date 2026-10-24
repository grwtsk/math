# exp_eq_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:979d5879-65b9-b3bf-ed18-6fda9a3ffcc0",
  "kind": "theorem",
  "lexical_name": "exp_eq_sum",
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
  "slug": "exp-eq-sum--ab471656ad4216a6efb131d1",
  "source": {
    "blob": "175ac44866ac33810397d3fe5cbc8f0111e23ebe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 62,
    "path": "GRWTSK/Algebra/LinearAlgebra/Exp/Variant5c2262bde015efd8b68baaee28190e15e64b8d05673de2a5dd71d068516ca0d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab471656ad4216a6efb131d15a449bbf6c7ffc43f172e35ca8bcfe812aec9140",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Exp/Variant5c2262bde015efd8b68baaee28190e15e64b8d05673de2a5dd71d068516ca0d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:979d5879-65b9-b3bf-ed18-6fda9a3ffcc0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exp_eq_sum {a : A} {k : ℕ} (h : a ^ k = 0) :
    exp a = ∑ i ∈ range k, (i.factorial : ℚ)⁻¹ • (a ^ i) := by
  have h₁ : ∑ i ∈ range k, (i.factorial : ℚ)⁻¹ • (a ^ i) =
      ∑ i ∈ range (nilpotencyClass a), (i.factorial : ℚ)⁻¹ • (a ^ i) +
        ∑ i ∈ Ico (nilpotencyClass a) k, (i.factorial : ℚ)⁻¹ • (a ^ i) :=
    (sum_range_add_sum_Ico _ (csInf_le' h)).symm
  suffices ∑ i ∈ Ico (nilpotencyClass a) k, (i.factorial : ℚ)⁻¹ • (a ^ i) = 0 by
    dsimp [exp]
    rw [h₁, this, add_zero]
  exact sum_eq_zero fun _ h₂ => by
    rw [pow_eq_zero_of_le (mem_Ico.1 h₂).1 (pow_nilpotencyClass ⟨k, h⟩), smul_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Exp/Variant5c2262bde015efd8b68baaee28190e15e64b8d05673de2a5dd71d068516ca0d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Exp/Variant5c2262bde015efd8b68baaee28190e15e64b8d05673de2a5dd71d068516ca0d3.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `175ac44866ac33810397d3fe5cbc8f0111e23ebe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
