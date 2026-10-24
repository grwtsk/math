# hasSum_pow_pentagonal_sub_pentagonalSeries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f78a7f58-40d1-d581-3dd4-8818eadd324e",
  "kind": "theorem",
  "lexical_name": "hasSum_pow_pentagonal_sub_pentagonalSeries",
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
  "slug": "hassum-pow-pentagonal-sub-pentagonalseries--646aab8b90d9a24d084a564b",
  "source": {
    "blob": "af148b1723747ac2c0787b31519c296b1f3ce7e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 137,
    "path": "GRWTSK/Topology/GeneralTopology/PowerSeries/Variant11310320ceebb0eea330fdcb7789489adfeec7836c84675cd55d2b8d0e739abd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:646aab8b90d9a24d084a564b51b23f983c654b22fcb904fb0654dd2e933d4994",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PowerSeries/Variant11310320ceebb0eea330fdcb7789489adfeec7836c84675cd55d2b8d0e739abd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f78a7f58-40d1-d581-3dd4-8818eadd324e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasSum_pow_pentagonal_sub_pentagonalSeries :
    HasSum (fun k : ℕ ↦ (-1) ^ k * (X ^ pentagonal (-k) - X ^ pentagonal (k + 1)))
      (pentagonalSeries R) := by
  have h := hasSum_pentagonalSeries R
  rw [← neg_injective.hasSum_iff (fun x hx ↦ by absurd hx; use -x; simp)] at h
  convert h.nat_add_neg_add_one using 2 with k
  simp_rw [Function.comp_apply, neg_neg, Int.negOnePow_add]
  simp
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PowerSeries/Variant11310320ceebb0eea330fdcb7789489adfeec7836c84675cd55d2b8d0e739abd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PowerSeries/Variant11310320ceebb0eea330fdcb7789489adfeec7836c84675cd55d2b8d0e739abd.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af148b1723747ac2c0787b31519c296b1f3ce7e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
