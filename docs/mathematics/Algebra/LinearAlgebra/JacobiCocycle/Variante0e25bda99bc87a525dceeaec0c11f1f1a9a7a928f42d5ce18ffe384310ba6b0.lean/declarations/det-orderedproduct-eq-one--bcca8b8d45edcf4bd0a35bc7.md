# det_orderedProduct_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "590a501ee2b0e31bbcab69b9738eeb19ce98486f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 76,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e0e25bda99bc87a525dceeaec0c11f1f1a9a7a928f42d5ce18ffe384310ba6b0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6c529f25-698f-0848-aff9-133926f4b5b8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2d3abd6f-6bdb-53d4-b7b6-fea91c095e49",
  "kind": "theorem",
  "lexical_name": "det_orderedProduct_eq_one",
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
  "slug": "det-orderedproduct-eq-one--bcca8b8d45edcf4bd0a35bc7",
  "source": {
    "blob": "590a501ee2b0e31bbcab69b9738eeb19ce98486f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 76,
    "path": "GRWTSK/Algebra/LinearAlgebra/JacobiCocycle/Variante0e25bda99bc87a525dceeaec0c11f1f1a9a7a928f42d5ce18ffe384310ba6b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bcca8b8d45edcf4bd0a35bc7b0095e1a8febd55d9d8120593961eae5c5ced2e5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/JacobiCocycle/Variante0e25bda99bc87a525dceeaec0c11f1f1a9a7a928f42d5ce18ffe384310ba6b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d3abd6f-6bdb-53d4-b7b6-fea91c095e49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_orderedProduct_eq_one {R : Type u} [CommRing R]
    (A : ℕ → Matrix (Fin 2) (Fin 2) R) (hdet : ∀ n, (A n).det = 1) (n k : ℕ) :
    (orderedProduct A n k).det = 1 := by
  induction k with
  | zero => simp
  | succ k ih => simp [orderedProduct_succ, Matrix.det_mul, hdet, ih]

/-- Every step's nonzero hypothesis is retained in the weighted Jacobi product. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/JacobiCocycle/Variante0e25bda99bc87a525dceeaec0c11f1f1a9a7a928f42d5ce18ffe384310ba6b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/JacobiCocycle/Variante0e25bda99bc87a525dceeaec0c11f1f1a9a7a928f42d5ce18ffe384310ba6b0.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `590a501ee2b0e31bbcab69b9738eeb19ce98486f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
