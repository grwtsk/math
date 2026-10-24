# cast_inv_lcm_eq_gcd_ratio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d7348743-8c28-2389-24b8-9299a200b5a8",
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
  "slug": "cast-inv-lcm-eq-gcd-ratio--4ec33ab187fc5930402e68c1",
  "source": {
    "blob": "dfafa925290e9527b552c1c136687bf7b082f0c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 137,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanRightHarmonicCube/Variant890664357325ed1523ba317b806093c29172bf5a1bff71531c1ab284b3fd45cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ec33ab187fc5930402e68c14b04be3905ec63f6a06dad9213ec66a3e2015fd8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanRightHarmonicCube/Variant890664357325ed1523ba317b806093c29172bf5a1bff71531c1ab284b3fd45cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7348743-8c28-2389-24b8-9299a200b5a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–150.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanRightHarmonicCube/Variant890664357325ed1523ba317b806093c29172bf5a1bff71531c1ab284b3fd45cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanRightHarmonicCube/Variant890664357325ed1523ba317b806093c29172bf5a1bff71531c1ab284b3fd45cb.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dfafa925290e9527b552c1c136687bf7b082f0c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
