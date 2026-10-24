# isUnit_den_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4b75dae1ed651cb639d45055b6c760a7f93fac50",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 107,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a30aeae972a53b7458582ee2c6dbc0655f108b9cbacaff232718f6f281196253.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fa5988d9-0f47-d7d3-a560-0e38de385b04",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:622d9d49-5ec8-c5ae-6989-15cb90375403",
  "kind": "theorem",
  "lexical_name": "isUnit_den_iff",
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
  "slug": "isunit-den-iff--a85fc88aba1eb90e9b50fd60",
  "source": {
    "blob": "4b75dae1ed651cb639d45055b6c760a7f93fac50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 107,
    "path": "GRWTSK/Algebra/NumDen/Varianta30aeae972a53b7458582ee2c6dbc0655f108b9cbacaff232718f6f281196253.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a85fc88aba1eb90e9b50fd60a0a66122dbdc88e0fd3f716ac6b957cf00a39690",
  "verification": {
    "reference": "docs/verification/Algebra/NumDen/Varianta30aeae972a53b7458582ee2c6dbc0655f108b9cbacaff232718f6f281196253.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:622d9d49-5ec8-c5ae-6989-15cb90375403`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUnit_den_iff (x : K) : IsUnit (den A x : A) ↔ IsLocalization.IsInteger A x where
  mp := isInteger_of_isUnit_den
  mpr h := by
    have ⟨v, h⟩ := h
    apply IsRelPrime.isUnit_of_dvd (num_den_reduced A x).symm
    use v
    apply_fun algebraMap A K
    · simp only [map_mul, h]
      rw [mul_comm, ← div_eq_iff]
      · simp only [mk'_num_den']
      intro h
      replace h : algebraMap A K (den A x : A) = algebraMap A K 0 := by convert h; simp
      exact nonZeroDivisors.coe_ne_zero _ <| FaithfulSMul.algebraMap_injective A K h
    exact FaithfulSMul.algebraMap_injective A K

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/NumDen/Varianta30aeae972a53b7458582ee2c6dbc0655f108b9cbacaff232718f6f281196253.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/NumDen/Varianta30aeae972a53b7458582ee2c6dbc0655f108b9cbacaff232718f6f281196253.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b75dae1ed651cb639d45055b6c760a7f93fac50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
