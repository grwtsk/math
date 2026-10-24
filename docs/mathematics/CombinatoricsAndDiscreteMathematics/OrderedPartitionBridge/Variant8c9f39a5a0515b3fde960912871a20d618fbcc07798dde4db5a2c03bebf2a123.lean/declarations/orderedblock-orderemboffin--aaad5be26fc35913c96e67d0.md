# orderedBlock_orderEmbOfFin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f20b922a-a467-0d38-a140-a4dbae796a83",
  "kind": "theorem",
  "lexical_name": "orderedBlock_orderEmbOfFin",
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
  "slug": "orderedblock-orderemboffin--aaad5be26fc35913c96e67d0",
  "source": {
    "blob": "9027d69328dd06690383248c2a1b21c462589295",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 211,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant8c9f39a5a0515b3fde960912871a20d618fbcc07798dde4db5a2c03bebf2a123.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aaad5be26fc35913c96e67d0a4217204e87eb29629f087fa719a3908aa1d5844",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant8c9f39a5a0515b3fde960912871a20d618fbcc07798dde4db5a2c03bebf2a123.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f20b922a-a467-0d38-a140-a4dbae796a83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orderedBlock_orderEmbOfFin
    {n : ℕ}
    (c : OrderedFinpartition n)
    (m : Fin c.length) :
    (fun j : Fin (orderedBlock c m).card =>
      c.emb m (Fin.cast (orderedBlock_card c m) j))
      =
    (orderedBlock c m).orderEmbOfFin rfl := by
  apply Finset.orderEmbOfFin_unique rfl
  · intro j
    apply (mem_orderedBlock_iff c m _).2
    exact ⟨Fin.cast (orderedBlock_card c m) j, rfl⟩
  · exact
      (c.emb_strictMono m).comp
        (Fin.castOrderIso (orderedBlock_card c m)).strictMono

/-- Consequently the atlas canonical block-direction reindexing agrees with the
Faa di Bruno block embedding, modulo the cardinality cast. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant8c9f39a5a0515b3fde960912871a20d618fbcc07798dde4db5a2c03bebf2a123.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant8c9f39a5a0515b3fde960912871a20d618fbcc07798dde4db5a2c03bebf2a123.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9027d69328dd06690383248c2a1b21c462589295` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
