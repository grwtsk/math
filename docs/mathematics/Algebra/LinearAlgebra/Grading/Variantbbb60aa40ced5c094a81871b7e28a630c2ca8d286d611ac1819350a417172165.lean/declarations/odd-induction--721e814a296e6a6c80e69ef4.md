# odd_induction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b491393-4d9f-010c-e0d0-f7d3f448160c",
  "kind": "theorem",
  "lexical_name": "odd_induction",
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
  "slug": "odd-induction--721e814a296e6a6c80e69ef4",
  "source": {
    "blob": "33523abc77894b72373d3abdce15851066b53733",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 259,
    "path": "GRWTSK/Algebra/LinearAlgebra/Grading/Variantbbb60aa40ced5c094a81871b7e28a630c2ca8d286d611ac1819350a417172165.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:721e814a296e6a6c80e69ef4306ec63030c6aeb355469332d87450dcd5effd5e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Grading/Variantbbb60aa40ced5c094a81871b7e28a630c2ca8d286d611ac1819350a417172165.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b491393-4d9f-010c-e0d0-f7d3f448160c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem odd_induction {P : ∀ x, x ∈ evenOdd Q 1 → Prop}
    (hι : ∀ v, P (ι Q v) (ι_mem_evenOdd_one _ _))
    (hadd : ∀ {x y hx hy}, P x hx → P y hy → P (x + y) (Submodule.add_mem _ hx hy))
    (hιι_mul :
      ∀ (m₁ m₂) {x hx},
        P x hx →
          P (ι Q m₁ * ι Q m₂ * x)
            (zero_add (1 : ZMod 2) ▸ SetLike.mul_mem_graded (ι_mul_ι_mem_evenOdd_zero Q m₁ m₂) hx))
    (x : CliffordAlgebra Q) (hx : x ∈ evenOdd Q 1) : P x hx := by
  refine' evenOdd_induction Q 1 (fun ιv => _) (@hadd) hιι_mul x hx
  -- porting note: was `simp_rw [ZMod.val_one, pow_one]`, lean4#1926
  intro h; rw [ZMod.val_one, pow_one] at h; revert h
  rintro ⟨v, rfl⟩
  exact hι v
#align clifford_algebra.odd_induction CliffordAlgebra.odd_induction

end CliffordAlgebra
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Grading/Variantbbb60aa40ced5c094a81871b7e28a630c2ca8d286d611ac1819350a417172165.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Grading/Variantbbb60aa40ced5c094a81871b7e28a630c2ca8d286d611ac1819350a417172165.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33523abc77894b72373d3abdce15851066b53733` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
