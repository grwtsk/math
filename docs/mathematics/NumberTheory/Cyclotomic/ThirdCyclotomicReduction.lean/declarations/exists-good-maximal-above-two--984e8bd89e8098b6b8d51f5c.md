# exists_good_maximal_above_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b69040c8-c71a-e970-7f66-89aa6fa71e83",
  "kind": "theorem",
  "lexical_name": "exists_good_maximal_above_two",
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
  "slug": "exists-good-maximal-above-two--984e8bd89e8098b6b8d51f5c",
  "source": {
    "blob": "5584866341f069a616c24df73eaa7b0854d33f04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 108,
    "path": "GRWTSK/NumberTheory/Cyclotomic/ThirdCyclotomicReduction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:984e8bd89e8098b6b8d51f5cd21a4a1510b3d716ce72ae80bd58cfb024486e66",
  "verification": {
    "reference": "docs/verification/NumberTheory/Cyclotomic/ThirdCyclotomicReduction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b69040c8-c71a-e970-7f66-89aa6fa71e83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_good_maximal_above_two :
    ∃P : Ideal O,P.IsMaximal ∧ (2:O)∈P ∧ lambda∉P := by
  have htwo : Ideal.span ({(2:O)} : Set O)≠⊤ := by
    intro h
    have hn := principal_two_absNorm
    rw [h,Ideal.absNorm_top] at hn
    norm_num at hn
  obtain ⟨P,hP,hcontain⟩ := Ideal.exists_le_maximal (Ideal.span ({(2:O)} : Set O)) htwo
  have h2 : (2:O)∈P := hcontain (Ideal.subset_span (by simp))
  refine ⟨P,hP,h2,?_⟩
  intro hmem
  have h3 : (3:O)∈P :=
    ((Ideal.span_singleton_le_iff_mem _).mpr hmem) three_mem_ramifiedIdeal
  have h1 : (1:O)∈P := by
    convert P.sub_mem h3 h2 using 1; ring
  exact hP.ne_top ((Ideal.eq_top_iff_one P).mpr h1)

/-- The actual ramified prime cannot have the primary-generator normalization lambda² | p-1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Cyclotomic/ThirdCyclotomicReduction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Cyclotomic/ThirdCyclotomicReduction.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5584866341f069a616c24df73eaa7b0854d33f04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
