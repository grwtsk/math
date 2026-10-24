# degree_divX_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bff6299bba56167809cafdb346453e2584b8f3c4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e8/e80a4c33709d6fba6ebf246f620213a6d0fbe76983df7c035f4d47ead12ac5ac.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:96190406-ca95-dfc4-3f95-6314055c5a66",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:91a158de-a118-cd51-55f0-64c99bbe6fe0",
  "kind": "theorem",
  "lexical_name": "degree_divX_lt",
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
  "slug": "degree-divx-lt--b150cab3ae8d03d05d94efc2",
  "source": {
    "blob": "bff6299bba56167809cafdb346453e2584b8f3c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 70,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Inductions/Variante80a4c33709d6fba6ebf246f620213a6d0fbe76983df7c035f4d47ead12ac5ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b150cab3ae8d03d05d94efc241de1544b01b16de745006d61f049e2c288aeb27",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Inductions/Variante80a4c33709d6fba6ebf246f620213a6d0fbe76983df7c035f4d47ead12ac5ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91a158de-a118-cd51-55f0-64c99bbe6fe0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem degree_divX_lt (hp0 : p ≠ 0) : (divX p).degree < p.degree := by
  haveI := Nontrivial.of_polynomial_ne hp0
  calc
    degree (divX p) < (divX p * X + C (p.coeff 0)).degree :=
      if h : degree p ≤ 0 then by
        have h' : C (p.coeff 0) ≠ 0 := by rwa [← eq_C_of_degree_le_zero h]
        rw [eq_C_of_degree_le_zero h, divX_C, degree_zero, zero_mul, zero_add]
        exact lt_of_le_of_ne bot_le (Ne.symm (mt degree_eq_bot.1 <| by simpa using h'))
      else by
        have hXp0 : divX p ≠ 0 := by
          simpa [divX_eq_zero_iff, -not_le, degree_le_zero_iff] using h
        have : leadingCoeff (divX p) * leadingCoeff X ≠ 0 := by simpa
        have : degree (C (p.coeff 0)) < degree (divX p * X) :=
          calc
            degree (C (p.coeff 0)) ≤ 0 := degree_C_le
            _ < 1 := by decide
            _ = degree (X : R[X]) := degree_X.symm
            _ ≤ degree (divX p * X) := by
              rw [← zero_add (degree X), degree_mul' this]
              exact add_le_add
                (by rw [zero_le_degree_iff, Ne.def, divX_eq_zero_iff]
                    exact fun h0 => h (h0.symm ▸ degree_C_le))
                    le_rfl
        rw [degree_add_eq_left_of_degree_lt this]; exact degree_lt_degree_mul_X hXp0
    _ = degree p := congr_arg _ (divX_mul_X_add _)
set_option linter.uppercaseLean3 false in
#align polynomial.degree_div_X_lt Polynomial.degree_divX_lt

/-- An induction principle for polynomials, valued in Sort* instead of Prop. -/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Inductions/Variante80a4c33709d6fba6ebf246f620213a6d0fbe76983df7c035f4d47ead12ac5ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Inductions/Variante80a4c33709d6fba6ebf246f620213a6d0fbe76983df7c035f4d47ead12ac5ac.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bff6299bba56167809cafdb346453e2584b8f3c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
