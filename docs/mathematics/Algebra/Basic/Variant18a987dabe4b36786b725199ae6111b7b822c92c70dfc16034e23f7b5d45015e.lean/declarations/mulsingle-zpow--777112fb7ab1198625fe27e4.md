# mulSingle_zpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:54a3bcd2-51b4-f4cc-1169-a267172e147d",
  "kind": "lemma",
  "lexical_name": "mulSingle_zpow",
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
  "slug": "mulsingle-zpow--777112fb7ab1198625fe27e4",
  "source": {
    "blob": "242e538eb4f3f637dcc30f899e6779f3a71a7d01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 583,
    "line": 575,
    "path": "GRWTSK/Algebra/Basic/Variant18a987dabe4b36786b725199ae6111b7b822c92c70dfc16034e23f7b5d45015e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:777112fb7ab1198625fe27e4be48bb0b34e8272d21d1b3140b904b2c3a8730a9",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant18a987dabe4b36786b725199ae6111b7b822c92c70dfc16034e23f7b5d45015e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54a3bcd2-51b4-f4cc-1169-a267172e147d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 575–583.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mulSingle_zpow [∀ i, Group (G i)] [∀ i, SubgroupClass (S i) (G i)]
    (i : ι) (r : G i) (n : ℤ) :
    mulSingle A i (r ^ n) = mulSingle A i r ^ n := by
  ext; simp [Pi.mulSingle_zpow, RestrictedProduct.zpow_apply]

/-- The map from a single factor to the restricted product given by setting the rest of the entries
to be 1. -/
@[to_additive (attr := simps) /-- The map from a single factor to the restricted product given by
setting the rest of the entries to be 0. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant18a987dabe4b36786b725199ae6111b7b822c92c70dfc16034e23f7b5d45015e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant18a987dabe4b36786b725199ae6111b7b822c92c70dfc16034e23f7b5d45015e.lean#L575).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `242e538eb4f3f637dcc30f899e6779f3a71a7d01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
