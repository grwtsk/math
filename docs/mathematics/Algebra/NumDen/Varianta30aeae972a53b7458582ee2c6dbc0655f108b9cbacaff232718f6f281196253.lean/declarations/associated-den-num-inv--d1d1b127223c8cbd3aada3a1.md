# associated_den_num_inv

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
      "line": 125,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a30aeae972a53b7458582ee2c6dbc0655f108b9cbacaff232718f6f281196253.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aae7d8b4-1b3a-c742-c823-332f47ed9f37",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3aceb885-e8c1-389b-9410-0bb9a9cd91f3",
  "kind": "lemma",
  "lexical_name": "associated_den_num_inv",
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
  "slug": "associated-den-num-inv--d1d1b127223c8cbd3aada3a1",
  "source": {
    "blob": "4b75dae1ed651cb639d45055b6c760a7f93fac50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 125,
    "path": "GRWTSK/Algebra/NumDen/Varianta30aeae972a53b7458582ee2c6dbc0655f108b9cbacaff232718f6f281196253.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1d1b127223c8cbd3aada3a1f0d74174e5bdd74e2485c77dbdf8eee81b946670",
  "verification": {
    "reference": "docs/verification/Algebra/NumDen/Varianta30aeae972a53b7458582ee2c6dbc0655f108b9cbacaff232718f6f281196253.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3aceb885-e8c1-389b-9410-0bb9a9cd91f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma associated_den_num_inv (x : K) (hx : x ≠ 0) : Associated (den A x : A) (num A x⁻¹) :=
  associated_of_dvd_dvd
    (IsRelPrime.dvd_of_dvd_mul_right (IsFractionRing.num_den_reduced A x).symm <|
      dvd_of_mul_left_dvd (a := (den A x⁻¹ : A)) <| dvd_of_eq <|
      FaithfulSMul.algebraMap_injective A K <| Eq.symm <| eq_of_div_eq_one
      (by simp [mul_div_mul_comm, hx]))
    (IsRelPrime.dvd_of_dvd_mul_right (IsFractionRing.num_den_reduced A x⁻¹) <|
      dvd_of_mul_left_dvd (a := (num A x : A)) <| dvd_of_eq <|
      FaithfulSMul.algebraMap_injective A K <| eq_of_div_eq_one
      (by simp [mul_div_mul_comm, hx]))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/NumDen/Varianta30aeae972a53b7458582ee2c6dbc0655f108b9cbacaff232718f6f281196253.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/NumDen/Varianta30aeae972a53b7458582ee2c6dbc0655f108b9cbacaff232718f6f281196253.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b75dae1ed651cb639d45055b6c760a7f93fac50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
