# exponential_primitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "95ff9871cf987ffec8769f0f47b45b1768bfa6ee",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 39,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/8255add931bb79bc44ed13854e92dbd12d01b3fadc8bcb4f683413d01adf2c5c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1b235291-1c2c-52ab-1761-128790b6228a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8e97b611-3fec-f75b-ff28-46b4e80c14ed",
  "kind": "theorem",
  "lexical_name": "exponential_primitive",
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
  "slug": "exponential-primitive--382e6d922d4822f0c0124243",
  "source": {
    "blob": "95ff9871cf987ffec8769f0f47b45b1768bfa6ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 39,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/TransformProbe/Variant8255add931bb79bc44ed13854e92dbd12d01b3fadc8bcb4f683413d01adf2c5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:382e6d922d4822f0c01242430b88f92c1004feaa4840deedd8c8b12313db6318",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/TransformProbe/Variant8255add931bb79bc44ed13854e92dbd12d01b3fadc8bcb4f683413d01adf2c5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e97b611-3fec-f75b-ff28-46b4e80c14ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exponential_primitive (t : ℂ) (x : ℝ) :
    HasDerivAt (fun y : ℝ ↦ Complex.exp (t*y) * (primitivePolynomial t).eval (y:ℂ))
      (t^9 * (1-(x:ℂ)^2)^4 * Complex.exp (t*x)) x := by
  have hx : HasDerivAt (fun y : ℝ ↦ t * (y:ℂ)) t x := by
    simpa using (((hasDerivAt_id (x:ℂ)).const_mul t).comp_ofReal)
  have h := hx.cexp.mul (((primitivePolynomial t).hasDerivAt (x:ℂ)).comp_ofReal)
  convert h using 1 <;> try rfl
  have hp := congrArg (Polynomial.eval (x:ℂ)) (primitive_derivative t)
  simp only [eval_add, eval_mul, eval_C, eval_pow, eval_sub, eval_one, eval_X] at hp
  linear_combination (-(Complex.exp (t*x))) * hp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/TransformProbe/Variant8255add931bb79bc44ed13854e92dbd12d01b3fadc8bcb4f683413d01adf2c5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/TransformProbe/Variant8255add931bb79bc44ed13854e92dbd12d01b3fadc8bcb4f683413d01adf2c5c.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95ff9871cf987ffec8769f0f47b45b1768bfa6ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
