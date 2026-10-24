# _root_.GRWTSK.Algebra.LinearAlgebra.Inner.Variantcacb19052f1b51bb12b44fc6e5d8fa1112e3c2d1d5d9ddaf968da23c50b512aa.isBoundedBilinearMap_inner

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd8569fa-fd88-1dba-e286-ee0f71130a92",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.Inner.Variantcacb19052f1b51bb12b44fc6e5d8fa1112e3c2d1d5d9ddaf968da23c50b512aa.isBoundedBilinearMap_inner",
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
  "slug": "root-grwtsk-algebra-linearalgebra-inner-variantcacb19052f1b51bb12b44fc6e--df048482d7afeb5dab197353",
  "source": {
    "blob": "fe0b40c10ae995e75e59bb4387ec36d450a5abde",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1881,
    "line": 1861,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant28f485fbfb0f55ad5d73e1d562862f73442da2680ad57a82ece86e77e8c8dfbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df048482d7afeb5dab197353c1c7ef6ee9e7f7e8524bddc61ea9306ce9e2c73d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant28f485fbfb0f55ad5d73e1d562862f73442da2680ad57a82ece86e77e8c8dfbe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd8569fa-fd88-1dba-e286-ee0f71130a92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1861–1881.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.LinearAlgebra.Inner.Variantcacb19052f1b51bb12b44fc6e5d8fa1112e3c2d1d5d9ddaf968da23c50b512aa.isBoundedBilinearMap_inner [NormedSpace ℝ E] :
    IsBoundedBilinearMap ℝ fun p : E × E => ⟪p.1, p.2⟫ :=
  { add_left := inner_add_left
    smul_left := fun r x y => by
      simp only [← algebraMap_smul 𝕜 r x, algebraMap_eq_ofReal, inner_smul_real_left]
    add_right := inner_add_right
    smul_right := fun r x y => by
      simp only [← algebraMap_smul 𝕜 r y, algebraMap_eq_ofReal, inner_smul_real_right]
    bound :=
      ⟨1, zero_lt_one, fun x y => by
        rw [one_mul]
        exact norm_inner_le_norm x y⟩ }
#align is_bounded_bilinear_map_inner isBoundedBilinearMap_inner

end Norm

section BesselsInequality

variable {ι : Type*} (x : E) {v : ι → E}

/-- Bessel's inequality for finite sums. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant28f485fbfb0f55ad5d73e1d562862f73442da2680ad57a82ece86e77e8c8dfbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant28f485fbfb0f55ad5d73e1d562862f73442da2680ad57a82ece86e77e8c8dfbe.lean#L1861).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe0b40c10ae995e75e59bb4387ec36d450a5abde` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
