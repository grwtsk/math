# transformPolynomial_norm_le_one_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1adb9714b1806fb04c9e13dcf5d4aed46c27ca0b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 140,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4c74f0b02b2652315660db6797609b2e83e098f9724e8c073cca63a3137f3e4e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:02379a0a-b121-c75e-25a9-e3513fc2eb86",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:648426ce-b9a9-713a-07ba-578f9191f400",
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
  "slug": "transformpolynomial-norm-le-one-add--ee41364b02951eb4ee0f20f4",
  "source": {
    "blob": "1adb9714b1806fb04c9e13dcf5d4aed46c27ca0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 140,
    "path": "GRWTSK/Topology/GeneralTopology/Expansion/Variant4c74f0b02b2652315660db6797609b2e83e098f9724e8c073cca63a3137f3e4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee41364b02951eb4ee0f20f4163349f9ef5b3525bb0f335a0dfcd7383d075ef7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Expansion/Variant4c74f0b02b2652315660db6797609b2e83e098f9724e8c073cca63a3137f3e4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:648426ce-b9a9-713a-07ba-578f9191f400`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–179.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Expansion/Variant4c74f0b02b2652315660db6797609b2e83e098f9724e8c073cca63a3137f3e4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Expansion/Variant4c74f0b02b2652315660db6797609b2e83e098f9724e8c073cca63a3137f3e4e.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1adb9714b1806fb04c9e13dcf5d4aed46c27ca0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
