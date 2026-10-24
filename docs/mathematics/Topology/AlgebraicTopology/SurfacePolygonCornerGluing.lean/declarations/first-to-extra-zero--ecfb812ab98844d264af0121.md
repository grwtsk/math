# first_to_extra_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e0b6e660-3aaf-f675-68b1-0c992a8fa5a3",
  "kind": "theorem",
  "lexical_name": "first_to_extra_zero",
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
  "slug": "first-to-extra-zero--ecfb812ab98844d264af0121",
  "source": {
    "blob": "ecf3035394ca12b16ba2f8622643608ac1c62789",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 320,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCornerGluing.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ecfb812ab98844d264af01214b176d27bcdf64ea397f897cb86ad14cf822d9f1",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SurfacePolygonCornerGluing.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0b6e660-3aaf-f675-68b1-0c992a8fa5a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 320–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem first_to_extra_zero (k : ℕ) (j : Fin k) :
    CornerConnected k (firstHandle k, 0) (Sum.inr j, 0) := by
  have aux : ∀ n : ℕ, ∀ hn : n < k,
      CornerConnected k (firstHandle k, 0)
        (Sum.inr (⟨n, hn⟩ : Fin k), 0) := by
    intro n
    induction n with
    | zero =>
        intro hn
        exact Relation.EqvGen.trans _ _ _ (first_to_second_zero k)
          (second_to_extra_zero k hn)
    | succ n ih =>
        intro hn
        have hp : n < k := by omega
        have hstep : CornerConnected k
            (Sum.inr (⟨n, hp⟩ : Fin k), 0)
            (Sum.inr (⟨n + 1, hn⟩ : Fin k), 0) := by
          simpa [nextHandle_extra_step k (⟨n, hp⟩ : Fin k) hn] using
            (handle_zero_to_next_zero k
              (Sum.inr (⟨n, hp⟩ : Fin k)))
        exact Relation.EqvGen.trans _ _ _ (ih hp) hstep
  simpa using aux j.val j.isLt

/-- Every handle zero corner is connected to the first base handle.
The two base cases and the entire extra-handle induction are explicit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonCornerGluing.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCornerGluing.lean#L320).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecf3035394ca12b16ba2f8622643608ac1c62789` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
