# IsCompatible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ac5469f14206dea20040bab932371eabc834adbcb7a6749259d3a16e2add0a40",
  "kind": "def",
  "lexical_name": "IsCompatible",
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
  "slug": "iscompatible--2c6a2a829444193bce75572e",
  "source": {
    "blob": "e9acaa429e2253790b6b92d991b07e74ea0d316a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 168,
    "path": "GRWTSK/Topology/AlgebraicTopology/HornColimits/Variant8169ba80a49586b4c8b59f9b8aed08709cb71ad77bb6a04f325ef2ccd3119b94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2c6a2a829444193bce75572e5c9e84b783bb1155422b9c9829fe79b1fdde82c1",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/HornColimits/Variant8169ba80a49586b4c8b59f9b8aed08709cb71ad77bb6a04f325ef2ccd3119b94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ac5469f14206dea20040bab932371eabc834adbcb7a6749259d3a16e2add0a40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def IsCompatible
    {i : Fin (n + 2)} (f : ∀ (j : Fin (n + 2)) (_ : j ≠ i), Δ[n] ⟶ X) : Prop :=
  match n with
  | 0 => True
  | n + 1 => ∀ (j k : Fin (n + 3)) (hj : j ≠ i) (hk : k ≠ i) (hjk : j < k),
      stdSimplex.δ (k.pred (Fin.ne_zero_of_lt hjk)) ≫ f j hj =
      stdSimplex.δ (j.castPred (Fin.ne_last_of_lt hjk)) ≫ f k hk

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/HornColimits/Variant8169ba80a49586b4c8b59f9b8aed08709cb71ad77bb6a04f325ef2ccd3119b94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/HornColimits/Variant8169ba80a49586b4c8b59f9b8aed08709cb71ad77bb6a04f325ef2ccd3119b94.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9acaa429e2253790b6b92d991b07e74ea0d316a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
