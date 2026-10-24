# cast_inv_lcm_eq_gcd_ratio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2555ee4232fc512e8ded72e74fedf561bc53a98f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 129,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d4e8c34c16185bbd37377a8dd691722b66d3e3f3b1b1ef3938c3783af37a43ca.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8ddd8f01-b1d9-eb05-9337-483bc517311d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:994d0258-db80-21b0-68ed-0bc6893b96a8",
  "kind": "theorem",
  "lexical_name": "cast_inv_lcm_eq_gcd_ratio",
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
  "slug": "cast-inv-lcm-eq-gcd-ratio--101929a75117b75660bde140",
  "source": {
    "blob": "2555ee4232fc512e8ded72e74fedf561bc53a98f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 129,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanRightHarmonicCube/Variantd4e8c34c16185bbd37377a8dd691722b66d3e3f3b1b1ef3938c3783af37a43ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:101929a75117b75660bde14051d1def1ad851ba783a5d5660f596a20caa1d860",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanRightHarmonicCube/Variantd4e8c34c16185bbd37377a8dd691722b66d3e3f3b1b1ef3938c3783af37a43ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:994d0258-db80-21b0-68ed-0bc6893b96a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem cast_inv_lcm_eq_gcd_ratio
    (d e : ℕ) (hd : 0 < d) (he : 0 < e) :
    ((Nat.lcm d e : ℕ) : ℝ)⁻¹ =
      (Nat.gcd d e : ℝ) * (d : ℝ)⁻¹ * (e : ℝ)⁻¹ := by
  have hgcd : 0 < Nat.gcd d e :=
    Nat.pos_of_dvd_of_pos (Nat.gcd_dvd_left d e) hd
  have hlcm : 0 < Nat.lcm d e := Nat.lcm_pos hd he
  field_simp [hgcd.ne', hlcm.ne', hd.ne', he.ne']
  have hnat : d * e = Nat.lcm d e * Nat.gcd d e := by
    calc
      d * e = Nat.gcd d e * Nat.lcm d e := (Nat.gcd_mul_lcm d e).symm
      _ = Nat.lcm d e * Nat.gcd d e := Nat.mul_comm _ _
  exact_mod_cast hnat

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanRightHarmonicCube/Variantd4e8c34c16185bbd37377a8dd691722b66d3e3f3b1b1ef3938c3783af37a43ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanRightHarmonicCube/Variantd4e8c34c16185bbd37377a8dd691722b66d3e3f3b1b1ef3938c3783af37a43ca.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2555ee4232fc512e8ded72e74fedf561bc53a98f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
