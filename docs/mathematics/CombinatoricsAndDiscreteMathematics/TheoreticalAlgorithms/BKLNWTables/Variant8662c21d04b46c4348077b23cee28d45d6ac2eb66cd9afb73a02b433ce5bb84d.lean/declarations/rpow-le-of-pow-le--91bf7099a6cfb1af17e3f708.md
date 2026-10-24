# rpow_le_of_pow_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:28beea85-64cd-8a1b-c419-dd481ee54846",
  "kind": "lemma",
  "lexical_name": "rpow_le_of_pow_le",
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
  "slug": "rpow-le-of-pow-le--91bf7099a6cfb1af17e3f708",
  "source": {
    "blob": "be7f02109c11b29282a87bb98e199242d2cf0b03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 91,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWTables/Variant8662c21d04b46c4348077b23cee28d45d6ac2eb66cd9afb73a02b433ce5bb84d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91bf7099a6cfb1af17e3f708c66374d5c756e88bf806a5e6a889be7cb8659841",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWTables/Variant8662c21d04b46c4348077b23cee28d45d6ac2eb66cd9afb73a02b433ce5bb84d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28beea85-64cd-8a1b-c419-dd481ee54846`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rpow_le_of_pow_le {a c : ℝ} (ha : 0 ≤ a) (hc : 0 ≤ c) {p q : ℕ} (hq : q ≠ 0)
    (h : a ^ p ≤ c ^ q) : a ^ (p / (q : ℝ)) ≤ c := by
  have hpow : (a ^ (p / (q : ℝ))) ^ q = a ^ p := by
    have hq' : (q : ℝ) ≠ 0 := by exact_mod_cast hq
    calc
      (a ^ (p / (q : ℝ))) ^ q = a ^ ((p / (q : ℝ)) * q) := by
        symm
        exact Real.rpow_mul_natCast ha (p / (q : ℝ)) q
      _ = a ^ (p : ℝ) := by
        field_simp [hq']
      _ = a ^ p := by
        simp [Real.rpow_natCast]
  have h' : (a ^ (p / (q : ℝ))) ^ q ≤ c ^ q := by
    simpa [hpow] using h
  exact (pow_le_pow_iff_left₀ (by positivity) hc hq).1 h'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWTables/Variant8662c21d04b46c4348077b23cee28d45d6ac2eb66cd9afb73a02b433ce5bb84d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWTables/Variant8662c21d04b46c4348077b23cee28d45d6ac2eb66cd9afb73a02b433ce5bb84d.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be7f02109c11b29282a87bb98e199242d2cf0b03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
