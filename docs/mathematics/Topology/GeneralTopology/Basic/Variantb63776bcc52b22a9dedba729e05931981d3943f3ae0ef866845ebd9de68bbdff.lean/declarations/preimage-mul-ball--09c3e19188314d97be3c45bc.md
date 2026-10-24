# preimage_mul_ball

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dbe33c4c-1e3a-2915-e167-7bff058876d0",
  "kind": "theorem",
  "lexical_name": "preimage_mul_ball",
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
  "slug": "preimage-mul-ball--09c3e19188314d97be3c45bc",
  "source": {
    "blob": "fc7e567424b3e3f8e5965592a4b464df71d87ca2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1168,
    "line": 1163,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantb63776bcc52b22a9dedba729e05931981d3943f3ae0ef866845ebd9de68bbdff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09c3e19188314d97be3c45bc17e33957820be36c2ab813cb3f72825e3037c376",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantb63776bcc52b22a9dedba729e05931981d3943f3ae0ef866845ebd9de68bbdff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dbe33c4c-1e3a-2915-e167-7bff058876d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1163–1168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem preimage_mul_ball (a b : E) (r : ℝ) : (b * ·) ⁻¹' ball a r = ball (a / b) r := by
  ext c
  simp only [dist_eq_norm_div, Set.mem_preimage, mem_ball, div_div_eq_mul_div, mul_comm]

@[to_additive (attr := simp 1001)]
-- Porting note: increase priority so that the left-hand side doesn't simplify
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantb63776bcc52b22a9dedba729e05931981d3943f3ae0ef866845ebd9de68bbdff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantb63776bcc52b22a9dedba729e05931981d3943f3ae0ef866845ebd9de68bbdff.lean#L1163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc7e567424b3e3f8e5965592a4b464df71d87ca2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
