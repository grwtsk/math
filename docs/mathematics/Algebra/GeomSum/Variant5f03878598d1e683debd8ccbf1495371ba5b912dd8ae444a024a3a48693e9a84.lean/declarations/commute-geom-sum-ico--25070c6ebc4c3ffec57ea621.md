# Commute.geom_sum₂_Ico

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:772d9d14-cfa4-877f-51de-c72d96548921",
  "kind": "theorem",
  "lexical_name": "Commute.geom_sum₂_Ico",
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
  "slug": "commute-geom-sum-ico--25070c6ebc4c3ffec57ea621",
  "source": {
    "blob": "2c62e82eda46dedac04da5d4c51dc3f9c4d1a197",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 55,
    "path": "GRWTSK/Algebra/GeomSum/Variant5f03878598d1e683debd8ccbf1495371ba5b912dd8ae444a024a3a48693e9a84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25070c6ebc4c3ffec57ea621883808c8719cd7e7ce21dc68ad30208e00a2446b",
  "verification": {
    "reference": "docs/verification/Algebra/GeomSum/Variant5f03878598d1e683debd8ccbf1495371ba5b912dd8ae444a024a3a48693e9a84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:772d9d14-cfa4-877f-51de-c72d96548921`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Commute.geom_sum₂_Ico (h : Commute x y) (hxy : x ≠ y) {m n : ℕ} (hmn : m ≤ n) :
    ∑ i ∈ Finset.Ico m n, x ^ i * y ^ (n - 1 - i) = (x ^ n - y ^ (n - m) * x ^ m) / (x - y) := by
  have : x - y ≠ 0 := by simp_all [sub_eq_iff_eq_add]
  rw [← h.geom_sum₂_Ico_mul hmn, mul_div_cancel_right₀ _ this]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GeomSum/Variant5f03878598d1e683debd8ccbf1495371ba5b912dd8ae444a024a3a48693e9a84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GeomSum/Variant5f03878598d1e683debd8ccbf1495371ba5b912dd8ae444a024a3a48693e9a84.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c62e82eda46dedac04da5d4c51dc3f9c4d1a197` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
