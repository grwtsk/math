# bank_square_root_storage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66e3bc0f-91ce-b3d0-2130-3fb6ea256716",
  "kind": "theorem",
  "lexical_name": "bank_square_root_storage",
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
  "slug": "bank-square-root-storage--2667b92d4c3842c23773cc3c",
  "source": {
    "blob": "02850395c7e69ef6305258649fb714c09902adc2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 117,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TriangularDisjointBank/Variantedd584853d14ae23d6530751ff387ab10e43c698ebf0b44af3027c50b0c6799a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2667b92d4c3842c23773cc3c2178f733176e5791b44e49bc76ae4559dd863402",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TriangularDisjointBank/Variantedd584853d14ae23d6530751ff387ab10e43c698ebf0b44af3027c50b0c6799a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66e3bc0f-91ce-b3d0-2130-3fb6ea256716`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bank_square_root_storage (M : ℕ → ℕ) (n : ℕ) {a : ℝ} (ha : 0 ≤ a) :
    0 ≤ bankStorage M a n ∧ bankStorage M a n ≤ a * Real.sqrt n := by
  constructor
  · unfold bankStorage; positivity
  · by_cases hz : height M n = 0
    · simp only [bankStorage, hz, Nat.cast_zero, mul_zero]
      positivity
    · have hpos : (0 : ℕ) < height M n := Nat.pos_of_ne_zero hz
      obtain ⟨j, hj, hle⟩ := (Finset.le_sup_iff hpos).mp (le_rfl : height M n ≤ height M n)
      have ht : (height M n : ℝ) ≤ triangle (M j) n := by exact_mod_cast hle
      have hs := (literal_square_root_storage_envelope (M j) n (a := 1) (by norm_num)).2
      simp only [storage, one_mul] at hs
      exact mul_le_mul_of_nonneg_left (ht.trans hs) ha

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TriangularDisjointBank/Variantedd584853d14ae23d6530751ff387ab10e43c698ebf0b44af3027c50b0c6799a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TriangularDisjointBank/Variantedd584853d14ae23d6530751ff387ab10e43c698ebf0b44af3027c50b0c6799a.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02850395c7e69ef6305258649fb714c09902adc2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
