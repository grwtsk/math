# verify_upper_bound_affine1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5f4e5938effabdf8018a26024c6640ecc161d66a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 177,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a1c4536408095562d4e21facc60808f8d749f4268c1af597d777ede23652b51b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:30423e82-1d25-aa01-8b20-38cf7f554700",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5fe028dd-16e2-8de0-fdf4-bb75ebb364f3",
  "kind": "theorem",
  "lexical_name": "verify_upper_bound_affine1",
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
  "slug": "verify-upper-bound-affine1--c2df084fa96b1f6ff8b2526d",
  "source": {
    "blob": "5f4e5938effabdf8018a26024c6640ecc161d66a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 177,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineBounds/Varianta1c4536408095562d4e21facc60808f8d749f4268c1af597d777ede23652b51b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2df084fa96b1f6ff8b2526d267aca65aa2b926f81b594c043a837ecb0934b65",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineBounds/Varianta1c4536408095562d4e21facc60808f8d749f4268c1af597d777ede23652b51b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5fe028dd-16e2-8de0-fdf4-bb75ebb364f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem verify_upper_bound_affine1 (e : Expr) (hsupp : ExprSupportedCore e)
    (I : IntervalRat) (c : ℚ) (cfg : AffineConfig)
    (hdom : evalDomainValidAffine e (toAffineEnvConst I) cfg)
    (h_check : checkUpperBoundAffine1 e I c cfg = true) :
    ∀ x ∈ I, Expr.eval (fun _ => x) e ≤ c := by
  intro x hx
  let ρ_real : Nat → ℝ := fun _ => x
  let ρ_affine := toAffineEnvConst I
  let eps := mkNoise1 I x
  -- Prove noise validity
  have hvalid : AffineForm.validNoise eps := mkNoise1_valid I x hx
  -- Prove environment membership
  have henv : envMemAffine ρ_real ρ_affine eps := mkNoise1_envMem I x hx
  -- Apply correctness theorem to get affine membership
  have hmem_affine := evalIntervalAffine_correct e hsupp ρ_real ρ_affine eps hvalid henv cfg hdom
  -- Use mem_toInterval_weak (no length constraint needed)
  have hmem := AffineForm.mem_toInterval_weak hvalid hmem_affine
  -- Extract upper bound from boolean check
  simp only [checkUpperBoundAffine1, decide_eq_true_eq] at h_check
  -- Combine membership and bound check
  have hhi := hmem.2
  calc Expr.eval (fun _ => x) e
      ≤ ((evalIntervalAffine e ρ_affine cfg).toInterval.hi : ℝ) := hhi
    _ ≤ c := by exact_mod_cast h_check

/-- **Golden Theorem for Affine Lower Bounds (Single Variable)** -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineBounds/Varianta1c4536408095562d4e21facc60808f8d749f4268c1af597d777ede23652b51b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineBounds/Varianta1c4536408095562d4e21facc60808f8d749f4268c1af597d777ede23652b51b.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f4e5938effabdf8018a26024c6640ecc161d66a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
