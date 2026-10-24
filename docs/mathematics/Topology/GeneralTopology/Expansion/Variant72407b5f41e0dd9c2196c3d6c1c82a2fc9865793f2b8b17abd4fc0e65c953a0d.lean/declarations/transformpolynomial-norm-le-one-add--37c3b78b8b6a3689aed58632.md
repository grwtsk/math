# transformPolynomial_norm_le_one_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b70248e-4a3f-1c16-b962-ca9f9ebb3af3",
  "kind": "theorem",
  "lexical_name": "transformPolynomial_norm_le_one_add",
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
  "slug": "transformpolynomial-norm-le-one-add--37c3b78b8b6a3689aed58632",
  "source": {
    "blob": "5642226a22f8e4aed7932e83090b4a56b70167d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 148,
    "path": "GRWTSK/Topology/GeneralTopology/Expansion/Variant72407b5f41e0dd9c2196c3d6c1c82a2fc9865793f2b8b17abd4fc0e65c953a0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37c3b78b8b6a3689aed5863256976b240c3cf01a3d3956d378fd7ec19dfc65e4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Expansion/Variant72407b5f41e0dd9c2196c3d6c1c82a2fc9865793f2b8b17abd4fc0e65c953a0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b70248e-4a3f-1c16-b962-ca9f9ebb3af3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem transformPolynomial_norm_le_one_add
    (t : ℂ) :
    ‖transformPolynomial t‖ ≤
      266 * (1 + ‖t‖) ^ 4 := by
  have hb :
      ‖transformPolynomial t‖ ≤
        ‖t‖ ^ 4 + 10 * ‖t‖ ^ 3 + 45 * ‖t‖ ^ 2 +
          105 * ‖t‖ + 105 := by
    unfold transformPolynomial
    calc
      _ ≤ ‖t ^ 4 - 10 * t ^ 3 + 45 * t ^ 2 - 105 * t‖ +
          ‖(105 : ℂ)‖ := norm_add_le _ _
      _ ≤
          (‖t ^ 4 - 10 * t ^ 3 + 45 * t ^ 2‖ +
            ‖105 * t‖) + ‖(105 : ℂ)‖ := by
        gcongr
        exact norm_sub_le _ _
      _ ≤
          ((‖t ^ 4 - 10 * t ^ 3‖ + ‖45 * t ^ 2‖) +
            ‖105 * t‖) + ‖(105 : ℂ)‖ := by
        gcongr
        exact norm_add_le _ _
      _ ≤
          (((‖t ^ 4‖ + ‖10 * t ^ 3‖) +
            ‖45 * t ^ 2‖) + ‖105 * t‖) +
            ‖(105 : ℂ)‖ := by
        gcongr
        exact norm_sub_le _ _
      _ = _ := by
        norm_num [norm_mul, norm_pow]
  have hr : 0 ≤ ‖t‖ := norm_nonneg t
  have hpoly :
      ‖t‖ ^ 4 + 10 * ‖t‖ ^ 3 + 45 * ‖t‖ ^ 2 +
          105 * ‖t‖ + 105 ≤
        266 * (1 + ‖t‖) ^ 4 := by
    nlinarith [pow_nonneg hr 2, pow_nonneg hr 3, pow_nonneg hr 4]
  exact hb.trans hpoly

/-- On the source radius domain the polynomial factor has exactly the safe
`A^4 (1+‖z‖)^4` envelope needed for equation (18). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Expansion/Variant72407b5f41e0dd9c2196c3d6c1c82a2fc9865793f2b8b17abd4fc0e65c953a0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Expansion/Variant72407b5f41e0dd9c2196c3d6c1c82a2fc9865793f2b8b17abd4fc0e65c953a0d.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5642226a22f8e4aed7932e83090b4a56b70167d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
