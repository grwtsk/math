# negOnePow_mul_leadingCoeffC_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d9cb82ea-8e3c-908c-64c9-a86ae24590bb",
  "kind": "theorem",
  "lexical_name": "negOnePow_mul_leadingCoeffC_pos",
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
  "slug": "negonepow-mul-leadingcoeffc-pos--b3b9a24d99dab8efb18a13b5",
  "source": {
    "blob": "73633197ac87904f77938b2e313c01efdb70acc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 197,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Extremal/Variant24fdcf24cb684a030a506c7279f7030dacd45da8470035a1b4dd9045e7ca7595.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3b9a24d99dab8efb18a13b511180fe9f9fdebe30cda9bd74e2f3f5383645e79",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Extremal/Variant24fdcf24cb684a030a506c7279f7030dacd45da8470035a1b4dd9045e7ca7595.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9cb82ea-8e3c-908c-64c9-a86ae24590bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem negOnePow_mul_leadingCoeffC_pos {n i : ℕ} (hi : i ≤ n) :
    0 < (-1) ^ i * leadingCoeffC n i := by
  have := inv_pos_of_pos <| zero_lt_prod_node_sub_node hi
  rwa [mul_inv, ← inv_pow, inv_neg_one] at this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Extremal/Variant24fdcf24cb684a030a506c7279f7030dacd45da8470035a1b4dd9045e7ca7595.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Extremal/Variant24fdcf24cb684a030a506c7279f7030dacd45da8470035a1b4dd9045e7ca7595.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73633197ac87904f77938b2e313c01efdb70acc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
