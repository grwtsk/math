# concat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fde295016c1c85043c73bd4b72963dbc3f79041c98365816a60d183beb868508",
  "kind": "def",
  "lexical_name": "concat",
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
  "slug": "concat--2efcab42d0b3375970e9cb4c",
  "source": {
    "blob": "981761e87fb3cc62d77c0b450f2f348ed6183c16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 174,
    "path": "GRWTSK/Topology/AlgebraicTopology/Subpath/Variant6eedcb41bd21cc15156282afe283c5c0e2180d6c47bfe764f9cfe4c12d00a915.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2efcab42d0b3375970e9cb4cb9632960ca6cce570fea4b2dfbee0afaf5f6c131",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Subpath/Variant6eedcb41bd21cc15156282afe283c5c0e2180d6c47bfe764f9cfe4c12d00a915.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fde295016c1c85043c73bd4b72963dbc3f79041c98365816a60d183beb868508`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def concat (p : Fin (n + 1) → X) (F G : (k : Fin n) → Path (p k.castSucc) (p k.succ))
    (H : (k : Fin n) → (F k).Homotopy (G k)) : Homotopy (concat p F) (concat p G) := by
  induction n with
  | zero =>
    rw [concat_zero, concat_zero]
    exact refl (Path.refl _)
  | succ n ih =>
    rw [concat_succ, concat_succ]
    exact hcomp (ih _ _ _ (fun k ↦ H k.castSucc)) (H (last n))

/-- Given a path `γ` and a sequence `t` of `n + 1` points in `[0, 1]`, there is a natural homotopy
between the concatenation of paths `γ.subpath (t k) (t (k + 1))`, and `γ.subpath (t 0) (t n)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Subpath/Variant6eedcb41bd21cc15156282afe283c5c0e2180d6c47bfe764f9cfe4c12d00a915.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Subpath/Variant6eedcb41bd21cc15156282afe283c5c0e2180d6c47bfe764f9cfe4c12d00a915.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `981761e87fb3cc62d77c0b450f2f348ed6183c16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
