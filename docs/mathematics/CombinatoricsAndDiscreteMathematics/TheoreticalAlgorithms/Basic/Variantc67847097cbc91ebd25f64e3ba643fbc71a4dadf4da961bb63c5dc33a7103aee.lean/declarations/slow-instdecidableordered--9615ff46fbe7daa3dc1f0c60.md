# Slow.instDecidableOrdered

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f66d38bcaced76010c41affc160c9cdee3c9997398159c8e2612b5da4025c121",
  "kind": "instance",
  "lexical_name": "Slow.instDecidableOrdered",
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
  "slug": "slow-instdecidableordered--9615ff46fbe7daa3dc1f0c60",
  "source": {
    "blob": "53490f4923eca935dc8ef3861e81e800a0ee0e38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 594,
    "line": 582,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc67847097cbc91ebd25f64e3ba643fbc71a4dadf4da961bb63c5dc33a7103aee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9615ff46fbe7daa3dc1f0c601934eb740a58df3e4c3cbf0985e55f2c2476cc68",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc67847097cbc91ebd25f64e3ba643fbc71a4dadf4da961bb63c5dc33a7103aee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f66d38bcaced76010c41affc160c9cdee3c9997398159c8e2612b5da4025c121`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 582–594.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[nolint docBlame] scoped instance Slow.instDecidableOrdered (cmp) [Std.TransCmp cmp] :
    ∀ t : RBNode α, Decidable (Ordered cmp t)
  | nil => inferInstanceAs (Decidable True)
  | node _ a _ b =>
    haveI := instDecidableOrdered cmp a
    haveI := instDecidableOrdered cmp b
    inferInstanceAs (Decidable (And ..))

/--
The red-black balance invariant. `Balanced t c n` says that the color of the root node is `c`,
and the black-height (the number of black nodes on any path from the root) of the tree is `n`.
Additionally, every red node must have black children.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc67847097cbc91ebd25f64e3ba643fbc71a4dadf4da961bb63c5dc33a7103aee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc67847097cbc91ebd25f64e3ba643fbc71a4dadf4da961bb63c5dc33a7103aee.lean#L582).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53490f4923eca935dc8ef3861e81e800a0ee0e38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
