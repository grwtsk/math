# iterate_derivative_U_eval_one_eq_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e51d5a2321ab17ff93507d577a4688980e17edad",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1055,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d96b7c3731abd5f2bafa577f8f31901feb94ad84037f2ec9c71513fa374d258e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c95d659c-a6bb-0522-7893-8a40b3977136",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:faae9d7d-0b76-c48e-3b74-46c9e84ba7cc",
  "kind": "theorem",
  "lexical_name": "iterate_derivative_U_eval_one_eq_div",
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
  "slug": "iterate-derivative-u-eval-one-eq-div--28993b2f793285ac95c87529",
  "source": {
    "blob": "e51d5a2321ab17ff93507d577a4688980e17edad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1061,
    "line": 1055,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Chebyshev/Variantd96b7c3731abd5f2bafa577f8f31901feb94ad84037f2ec9c71513fa374d258e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28993b2f793285ac95c875295d2dd2256297fd9f5431bbb43ca2ca9e322e5ee2",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Chebyshev/Variantd96b7c3731abd5f2bafa577f8f31901feb94ad84037f2ec9c71513fa374d258e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:faae9d7d-0b76-c48e-3b74-46c9e84ba7cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1055–1061.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iterate_derivative_U_eval_one_eq_div [CharZero 𝔽] (n : ℤ) (k : ℕ) :
    (derivative^[k] (U 𝔽 n)).eval 1 =
      ((∏ l ∈ Finset.range k, ((n + 1) ^ 2 - (l + 1) ^ 2) : ℤ) * (n + 1)) /
      (∏ l ∈ Finset.range k, (2 * l + 3)) := by
  rw [eq_div_iff (Nat.cast_ne_zero.mpr (Finset.prod_ne_zero_iff.mpr (fun _ _ => by positivity))),
    mul_comm, iterate_derivative_U_eval_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Chebyshev/Variantd96b7c3731abd5f2bafa577f8f31901feb94ad84037f2ec9c71513fa374d258e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Chebyshev/Variantd96b7c3731abd5f2bafa577f8f31901feb94ad84037f2ec9c71513fa374d258e.lean#L1055).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e51d5a2321ab17ff93507d577a4688980e17edad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
