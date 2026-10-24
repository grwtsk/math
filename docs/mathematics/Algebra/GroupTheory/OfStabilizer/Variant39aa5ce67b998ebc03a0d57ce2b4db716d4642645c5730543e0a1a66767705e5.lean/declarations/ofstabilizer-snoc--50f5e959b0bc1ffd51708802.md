# ofStabilizer.snoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:80c02e42fd3df1d111e631c6e1d48d4696f8b1c2dd5d1829338c7d54c768f555",
  "kind": "def",
  "lexical_name": "ofStabilizer.snoc",
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
  "slug": "ofstabilizer-snoc--50f5e959b0bc1ffd51708802",
  "source": {
    "blob": "526ccce0f2c837696f2f427dcc1d6c73498700c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 191,
    "path": "GRWTSK/Algebra/GroupTheory/OfStabilizer/Variant39aa5ce67b998ebc03a0d57ce2b4db716d4642645c5730543e0a1a66767705e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:50f5e959b0bc1ffd51708802b2c89d9d79ff28c78d116782af725c487373895b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/OfStabilizer/Variant39aa5ce67b998ebc03a0d57ce2b4db716d4642645c5730543e0a1a66767705e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:80c02e42fd3df1d111e631c6e1d48d4696f8b1c2dd5d1829338c7d54c768f555`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofStabilizer.snoc {n : ℕ} (x : Fin n ↪ ofStabilizer G a) :
    Fin n.succ ↪ α :=
  Fin.Embedding.snoc (x.trans (subtype _)) (a := a) (by
    simp [Set.mem_range, trans_apply, not_exists]
    exact fun i ↦ (x i).prop)

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/OfStabilizer/Variant39aa5ce67b998ebc03a0d57ce2b4db716d4642645c5730543e0a1a66767705e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/OfStabilizer/Variant39aa5ce67b998ebc03a0d57ce2b4db716d4642645c5730543e0a1a66767705e5.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `526ccce0f2c837696f2f427dcc1d6c73498700c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
