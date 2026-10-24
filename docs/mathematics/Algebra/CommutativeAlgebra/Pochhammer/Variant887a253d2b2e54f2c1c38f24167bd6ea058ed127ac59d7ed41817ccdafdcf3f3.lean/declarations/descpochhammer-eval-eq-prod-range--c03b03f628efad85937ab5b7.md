# descPochhammer_eval_eq_prod_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b40d6ba03337af3d8bc06974ed560d7c629dcb73",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 426,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/88/887a253d2b2e54f2c1c38f24167bd6ea058ed127ac59d7ed41817ccdafdcf3f3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:caf4041a-1157-5833-f2ce-8b57b0bb306a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8d34eda0-db98-194e-5639-87667aae73c8",
  "kind": "lemma",
  "lexical_name": "descPochhammer_eval_eq_prod_range",
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
  "slug": "descpochhammer-eval-eq-prod-range--c03b03f628efad85937ab5b7",
  "source": {
    "blob": "b40d6ba03337af3d8bc06974ed560d7c629dcb73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 438,
    "line": 426,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Pochhammer/Variant887a253d2b2e54f2c1c38f24167bd6ea058ed127ac59d7ed41817ccdafdcf3f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c03b03f628efad85937ab5b7fdcdc4588a81dc134fdda7d3443988eb4a0e4b37",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Pochhammer/Variant887a253d2b2e54f2c1c38f24167bd6ea058ed127ac59d7ed41817ccdafdcf3f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d34eda0-db98-194e-5639-87667aae73c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 426–438.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma descPochhammer_eval_eq_prod_range {R : Type*} [CommRing R] (n : ℕ) (r : R) :
    (descPochhammer R n).eval r = ∏ j ∈ Finset.range n, (r - j) := by
  induction n with
  | zero => simp
  | succ n ih => simp [descPochhammer_succ_right, ih, ← Finset.prod_range_succ]

end Ring

section StrictOrderedRing

variable {S : Type*} [Ring S] [PartialOrder S] [IsStrictOrderedRing S]

/-- `descPochhammer S n` is positive on `(n-1, ∞)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Pochhammer/Variant887a253d2b2e54f2c1c38f24167bd6ea058ed127ac59d7ed41817ccdafdcf3f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Pochhammer/Variant887a253d2b2e54f2c1c38f24167bd6ea058ed127ac59d7ed41817ccdafdcf3f3.lean#L426).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b40d6ba03337af3d8bc06974ed560d7c629dcb73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
