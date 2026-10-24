# exp_eq_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ba15a0e041ddd1b8ebf23f8004f3b23b81012972",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 54,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4cdc1a547adfaf55c896138cb127c191313525447146e19e6b4e797f17b9f6dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b8708e29-5ade-494e-f4d1-38fd1bacd90e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:44a9024c-839f-c2e6-cbc8-dbd304055a8d",
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
  "slug": "exp-eq-sum--a4cee315e3e775f3e403323b",
  "source": {
    "blob": "ba15a0e041ddd1b8ebf23f8004f3b23b81012972",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 54,
    "path": "GRWTSK/Algebra/LinearAlgebra/Exp/Variant4cdc1a547adfaf55c896138cb127c191313525447146e19e6b4e797f17b9f6dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4cee315e3e775f3e403323bf558a51bb97d9420363e8a81e9a0272eadfca7ed",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Exp/Variant4cdc1a547adfaf55c896138cb127c191313525447146e19e6b4e797f17b9f6dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44a9024c-839f-c2e6-cbc8-dbd304055a8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–65.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Exp/Variant4cdc1a547adfaf55c896138cb127c191313525447146e19e6b4e797f17b9f6dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Exp/Variant4cdc1a547adfaf55c896138cb127c191313525447146e19e6b4e797f17b9f6dc.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba15a0e041ddd1b8ebf23f8004f3b23b81012972` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
