# ideal_in_normalizer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db732176-0d37-24c3-4da0-3e09180e8ddf",
  "kind": "theorem",
  "lexical_name": "ideal_in_normalizer",
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
  "slug": "ideal-in-normalizer--67c80d82df3fbc0bcf3a2de4",
  "source": {
    "blob": "bb4bd498d00c450f264188c1edda229a4b102bdd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 161,
    "path": "GRWTSK/Algebra/Normalizer/Variant4e5baba6704638e2ce8189365497b9b4583e51a56e523673391e09ef8cc1d249.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67c80d82df3fbc0bcf3a2de449f167e4fb29bc653a4c48338d63a9788beba1a5",
  "verification": {
    "reference": "docs/verification/Algebra/Normalizer/Variant4e5baba6704638e2ce8189365497b9b4583e51a56e523673391e09ef8cc1d249.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db732176-0d37-24c3-4da0-3e09180e8ddf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ideal_in_normalizer {x y : L} (hx : x ∈ H.normalizer) (hy : y ∈ H) : ⁅x, y⁆ ∈ H := by
  rw [← lie_skew, neg_mem_iff (G := L)]
  exact hx ⟨y, hy⟩
#align lie_subalgebra.ideal_in_normalizer LieSubalgebra.ideal_in_normalizer

/-- A Lie subalgebra `H` is an ideal of any Lie subalgebra `K` containing `H` and contained in the
normalizer of `H`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Normalizer/Variant4e5baba6704638e2ce8189365497b9b4583e51a56e523673391e09ef8cc1d249.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Normalizer/Variant4e5baba6704638e2ce8189365497b9b4583e51a56e523673391e09ef8cc1d249.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb4bd498d00c450f264188c1edda229a4b102bdd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
