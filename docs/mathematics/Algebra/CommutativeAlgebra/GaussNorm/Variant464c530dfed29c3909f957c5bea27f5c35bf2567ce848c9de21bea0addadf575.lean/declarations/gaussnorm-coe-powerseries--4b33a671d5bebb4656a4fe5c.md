# gaussNorm_coe_powerSeries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b8b65df38067a1bb8aa2057523220359ec65191c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 106,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/46/464c530dfed29c3909f957c5bea27f5c35bf2567ce848c9de21bea0addadf575.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1dca6197-87c9-85f9-6dcb-6e6a40ce9f62",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:79912802-dddc-43a1-f809-b04a54b34989",
  "kind": "theorem",
  "lexical_name": "gaussNorm_coe_powerSeries",
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
  "slug": "gaussnorm-coe-powerseries--4b33a671d5bebb4656a4fe5c",
  "source": {
    "blob": "b8b65df38067a1bb8aa2057523220359ec65191c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 106,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/GaussNorm/Variant464c530dfed29c3909f957c5bea27f5c35bf2567ce848c9de21bea0addadf575.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b33a671d5bebb4656a4fe5c65e06ff815b4df75ae9d70e2756eb94b9e13c74d",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/GaussNorm/Variant464c530dfed29c3909f957c5bea27f5c35bf2567ce848c9de21bea0addadf575.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79912802-dddc-43a1-f809-b04a54b34989`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gaussNorm_coe_powerSeries (hc : 0 ≤ c) :
    (p.toPowerSeries).gaussNorm v c = p.gaussNorm v c := by
  by_cases hp : p = 0
  · simp [hp]
  · simp only [PowerSeries.gaussNorm_eq, coeff_coe, gaussNorm, support_nonempty, ne_eq, hp,
      not_false_eq_true, ↓reduceDIte]
    apply le_antisymm
    · apply ciSup_le
      intro n
      by_cases h : n ∈ p.support
      · exact Finset.le_sup' (fun j ↦ v (p.coeff j) * c ^ j) h
      · simp_all [sup'_nonneg_of_ne_zero v (support_nonempty.mpr hp) hc]
    · obtain ⟨i, hi⟩ := exists_eq_gaussNorm v c p
      simp only [gaussNorm, support_nonempty.mpr hp, ↓reduceDIte] at hi
      rw [hi]
      exact le_ciSup (aux_bdd v p) i

/-- If `v x = 0 → x = 0` for all `x : R` and `v` is nonnegative, then the Gauss norm is zero if and
only if the polynomial is zero. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/GaussNorm/Variant464c530dfed29c3909f957c5bea27f5c35bf2567ce848c9de21bea0addadf575.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/GaussNorm/Variant464c530dfed29c3909f957c5bea27f5c35bf2567ce848c9de21bea0addadf575.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8b65df38067a1bb8aa2057523220359ec65191c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
