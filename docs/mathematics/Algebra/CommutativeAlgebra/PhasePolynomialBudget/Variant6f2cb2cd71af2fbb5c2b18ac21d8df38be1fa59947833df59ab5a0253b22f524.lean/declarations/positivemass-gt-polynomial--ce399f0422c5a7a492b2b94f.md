# positiveMass_gt_polynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "132a90078bf76c23b3e26c4469827dad6e677d80",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 44,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6f/6f2cb2cd71af2fbb5c2b18ac21d8df38be1fa59947833df59ab5a0253b22f524.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2f1d0405-0166-2a56-906a-1ff01b3c1655",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:84c7a259-2ef9-a64c-2b38-7e7997fe34eb",
  "kind": "theorem",
  "lexical_name": "positiveMass_gt_polynomial",
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
  "slug": "positivemass-gt-polynomial--ce399f0422c5a7a492b2b94f",
  "source": {
    "blob": "132a90078bf76c23b3e26c4469827dad6e677d80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 44,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/PhasePolynomialBudget/Variant6f2cb2cd71af2fbb5c2b18ac21d8df38be1fa59947833df59ab5a0253b22f524.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce399f0422c5a7a492b2b94f310dc382927fafa6bcbd86f74f4c655f5442612b",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/PhasePolynomialBudget/Variant6f2cb2cd71af2fbb5c2b18ac21d8df38be1fa59947833df59ab5a0253b22f524.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84c7a259-2ef9-a64c-2b38-7e7997fe34eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positiveMass_gt_polynomial {A C : ℝ} (d : ℕ) (hA : 1 ≤ A)
    (hAC : (C + 2) / phasePolynomialCoefficient d ≤ A) : C * A ^ d < positiveMass A := by
  have hk := phasePolynomialCoefficient_pos d
  have hlin : C + 2 ≤ phasePolynomialCoefficient d * A := by
    have h := (div_le_iff₀ hk).mp hAC
    simpa only [mul_comm] using h
  have hpow : 1 ≤ A ^ d := one_le_pow₀ hA
  have hnonneg : 0 ≤ A ^ d := by positivity
  have hmul := mul_le_mul_of_nonneg_right hlin hnonneg
  have ht := positiveMass_ge_taylor hA d
  rw [pow_succ] at ht
  have heq : phasePolynomialCoefficient d * (A ^ d * A) =
      (phasePolynomialCoefficient d * A) * A ^ d := by ring
  rw [heq] at ht
  nlinarith

/-- A max threshold witnesses eventual strict domination of every proposed scalar polynomial budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/PhasePolynomialBudget/Variant6f2cb2cd71af2fbb5c2b18ac21d8df38be1fa59947833df59ab5a0253b22f524.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/PhasePolynomialBudget/Variant6f2cb2cd71af2fbb5c2b18ac21d8df38be1fa59947833df59ab5a0253b22f524.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `132a90078bf76c23b3e26c4469827dad6e677d80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
