# IsPrimePow.exists_ordCompl_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9f453c49-92ab-c75c-f5f9-ec63c55fb16e",
  "kind": "theorem",
  "lexical_name": "IsPrimePow.exists_ordCompl_eq_one",
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
  "slug": "isprimepow-exists-ordcompl-eq-one--82bb4b3c96fc9cc8b10b4fec",
  "source": {
    "blob": "fc3bf8c50a5ad51035deedeb8981cff89a46245d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 72,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimePow/Variantca8fe2895fef6b844e64851fb9faef8e7beecf73083a091ad9594f5ba266410c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82bb4b3c96fc9cc8b10b4feca8af340cf8b0cace50ddd1372de99eca105a782f",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/PrimePow/Variantca8fe2895fef6b844e64851fb9faef8e7beecf73083a091ad9594f5ba266410c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f453c49-92ab-c75c-f5f9-ec63c55fb16e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPrimePow.exists_ordCompl_eq_one {n : ℕ} (h : IsPrimePow n) :
    ∃ p : ℕ, p.Prime ∧ ordCompl[p] n = 1 := by
  rcases eq_or_ne n 0 with (rfl | hn0); · cases not_isPrimePow_zero h
  rcases isPrimePow_iff_factorization_eq_single.mp h with ⟨p, k, hk0, h1⟩
  rcases em' p.Prime with (pp | pp)
  · refine absurd ?_ hk0.ne'
    simp [← Nat.factorization_eq_zero_of_not_prime n pp, h1]
  refine ⟨p, pp, ?_⟩
  refine Nat.eq_of_factorization_eq (Nat.ordCompl_pos p hn0).ne' (by simp) fun q => ?_
  rw [Nat.factorization_ordCompl n p, h1]
  simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PrimePow/Variantca8fe2895fef6b844e64851fb9faef8e7beecf73083a091ad9594f5ba266410c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PrimePow/Variantca8fe2895fef6b844e64851fb9faef8e7beecf73083a091ad9594f5ba266410c.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc3bf8c50a5ad51035deedeb8981cff89a46245d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
