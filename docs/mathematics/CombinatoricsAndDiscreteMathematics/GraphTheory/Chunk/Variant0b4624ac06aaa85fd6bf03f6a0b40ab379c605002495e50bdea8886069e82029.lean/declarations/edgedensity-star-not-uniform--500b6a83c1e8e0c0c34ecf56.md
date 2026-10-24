# edgeDensity_star_not_uniform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:65b3fac0-3035-3505-f9b9-3e1eb55d1d77",
  "kind": "theorem",
  "lexical_name": "edgeDensity_star_not_uniform",
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
  "slug": "edgedensity-star-not-uniform--500b6a83c1e8e0c0c34ecf56",
  "source": {
    "blob": "1d3640818920e6fa027bbee864ca5e7737da8fcb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 461,
    "line": 427,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant0b4624ac06aaa85fd6bf03f6a0b40ab379c605002495e50bdea8886069e82029.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:500b6a83c1e8e0c0c34ecf5603555f2d8a60b92911dc0a8f829eae2e734c6e01",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant0b4624ac06aaa85fd6bf03f6a0b40ab379c605002495e50bdea8886069e82029.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65b3fac0-3035-3505-f9b9-3e1eb55d1d77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 427–461.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem edgeDensity_star_not_uniform [Nonempty α]
    (hPα : #P.parts * 16 ^ #P.parts ≤ card α) (hPε : ↑100 ≤ ↑4 ^ #P.parts * ε ^ 5)
    (hε₁ : ε ≤ 1) {hU : U ∈ P.parts} {hV : V ∈ P.parts} (hUVne : U ≠ V) (hUV : ¬G.IsUniform ε U V) :
    ↑3 / ↑4 * ε ≤
    |(∑ ab ∈ (star hP G ε hU V).product (star hP G ε hV U), (G.edgeDensity ab.1 ab.2 : ℝ)) /
      (#(star hP G ε hU V) * #(star hP G ε hV U)) -
        (∑ ab ∈ (chunk hP G ε hU).parts.product (chunk hP G ε hV).parts,
          (G.edgeDensity ab.1 ab.2 : ℝ)) / (16 : ℝ) ^ #P.parts| := by
  rw [show (16 : ℝ) = ↑4 ^ 2 by norm_num, pow_right_comm, sq ((4 : ℝ) ^ _)]
  set p : ℝ :=
    (∑ ab ∈ (star hP G ε hU V).product (star hP G ε hV U), (G.edgeDensity ab.1 ab.2 : ℝ)) /
      (#(star hP G ε hU V) * #(star hP G ε hV U))
  set q : ℝ :=
    (∑ ab ∈ (chunk hP G ε hU).parts.product (chunk hP G ε hV).parts,
      (G.edgeDensity ab.1 ab.2 : ℝ)) / (↑4 ^ #P.parts * ↑4 ^ #P.parts)
  set r : ℝ := ↑(G.edgeDensity ((star hP G ε hU V).biUnion id) ((star hP G ε hV U).biUnion id))
  set s : ℝ := ↑(G.edgeDensity (G.nonuniformWitness ε U V) (G.nonuniformWitness ε V U))
  set t : ℝ := ↑(G.edgeDensity U V)
  have hrs : |r - s| ≤ ε / 5 := abs_density_star_sub_density_le_eps hPε hε₁ hUVne hUV
  have hst : ε ≤ |s - t| := by
    -- After https://github.com/leanprover/lean4/pull/2734, we need to do the zeta reduction before `mod_cast`.
    unfold s t
    exact mod_cast G.nonuniformWitness_spec hUVne hUV
  have hpr : |p - r| ≤ ε ^ 5 / 49 :=
    average_density_near_total_density hPα hPε hε₁ star_subset_chunk star_subset_chunk
  have hqt : |q - t| ≤ ε ^ 5 / 49 := by
    have := average_density_near_total_density hPα hPε hε₁
      (Subset.refl (chunk hP G ε hU).parts) (Subset.refl (chunk hP G ε hV).parts)
    simpa [← sup_eq_biUnion, sup_parts, card_chunk (m_pos hPα).ne']
  have hε' : ε ^ 5 ≤ ε := by
    simpa using pow_le_pow_of_le_one (by sz_positivity) hε₁ (show 1 ≤ 5 by simp)
  grind

/-- Lower bound on the edge densities between non-uniform parts of `SzemerediRegularity.increment`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant0b4624ac06aaa85fd6bf03f6a0b40ab379c605002495e50bdea8886069e82029.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant0b4624ac06aaa85fd6bf03f6a0b40ab379c605002495e50bdea8886069e82029.lean#L427).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d3640818920e6fa027bbee864ca5e7737da8fcb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
