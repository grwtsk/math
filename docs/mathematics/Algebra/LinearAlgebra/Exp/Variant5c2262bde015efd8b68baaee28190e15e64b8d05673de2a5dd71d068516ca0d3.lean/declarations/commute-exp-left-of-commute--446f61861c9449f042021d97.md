# commute_exp_left_of_commute

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:77c8b28e-831d-7a87-ccb3-a36e7c62e580",
  "kind": "theorem",
  "lexical_name": "commute_exp_left_of_commute",
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
  "slug": "commute-exp-left-of-commute--446f61861c9449f042021d97",
  "source": {
    "blob": "175ac44866ac33810397d3fe5cbc8f0111e23ebe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 218,
    "path": "GRWTSK/Algebra/LinearAlgebra/Exp/Variant5c2262bde015efd8b68baaee28190e15e64b8d05673de2a5dd71d068516ca0d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:446f61861c9449f042021d9737209645f94a8bdcfb29f72471aa3a19f8296fea",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Exp/Variant5c2262bde015efd8b68baaee28190e15e64b8d05673de2a5dd71d068516ca0d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77c8b28e-831d-7a87-ccb3-a36e7c62e580`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem commute_exp_left_of_commute
    {fM : Module.End R M} {fN : Module.End R N} {g : M →ₗ[R] N}
    (hfM : IsNilpotent fM)
    (hfN : IsNilpotent fN)
    (h : fN ∘ₗ g = g ∘ₗ fM) :
    exp fN ∘ₗ g = g ∘ₗ exp fM := by
  ext m
  obtain ⟨k, hfM⟩ := hfM
  obtain ⟨l, hfN⟩ := hfN
  let kl := max k l
  replace hfM : fM ^ kl = 0 := pow_eq_zero_of_le (by omega) hfM
  replace hfN : fN ^ kl = 0 := pow_eq_zero_of_le (by omega) hfN
  have (i : ℕ) : (fN ^ i) (g m) = g ((fM ^ i) m) := by
    simpa using LinearMap.congr_fun (Module.End.commute_pow_left_of_commute h i) m
  simp [exp_eq_sum hfM, exp_eq_sum hfN, this, map_rat_smul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Exp/Variant5c2262bde015efd8b68baaee28190e15e64b8d05673de2a5dd71d068516ca0d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Exp/Variant5c2262bde015efd8b68baaee28190e15e64b8d05673de2a5dd71d068516ca0d3.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `175ac44866ac33810397d3fe5cbc8f0111e23ebe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
