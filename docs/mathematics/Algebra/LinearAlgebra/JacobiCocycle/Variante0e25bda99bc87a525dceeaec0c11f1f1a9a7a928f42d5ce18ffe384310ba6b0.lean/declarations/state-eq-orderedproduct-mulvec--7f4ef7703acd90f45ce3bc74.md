# state_eq_orderedProduct_mulVec

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
      "line": 57,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e0e25bda99bc87a525dceeaec0c11f1f1a9a7a928f42d5ce18ffe384310ba6b0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3d727e66-f269-8806-894c-9fd31ca50cd3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:304591b4-19a0-9094-245c-a09ebe40c677",
  "kind": "theorem",
  "lexical_name": "state_eq_orderedProduct_mulVec",
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
  "slug": "state-eq-orderedproduct-mulvec--7f4ef7703acd90f45ce3bc74",
  "source": {
    "blob": "590a501ee2b0e31bbcab69b9738eeb19ce98486f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 57,
    "path": "GRWTSK/Algebra/LinearAlgebra/JacobiCocycle/Variante0e25bda99bc87a525dceeaec0c11f1f1a9a7a928f42d5ce18ffe384310ba6b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f4ef7703acd90f45ce3bc748bf8f3a05f4e591470446b1df6e8285095be9b46",
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

Occurrence: `result:304591b4-19a0-9094-245c-a09ebe40c677`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem state_eq_orderedProduct_mulVec {R : Type u} [CommSemiring R]
    (A : ℕ → Matrix (Fin 2) (Fin 2) R) (X : ℕ → Fin 2 → R)
    (hstep : ∀ n, X (n + 1) = (A n).mulVec (X n)) (n k : ℕ) :
    X (n + k) = (orderedProduct A n k).mulVec (X n) := by
  induction k with
  | zero => simp
  | succ k ih =>
    rw [Nat.add_succ, ← Nat.add_one, hstep, ih, orderedProduct_succ]
    exact Matrix.mulVec_mulVec (X n) (A (n + k)) (orderedProduct A n k)

/-- For `m ≥ n`, the endpoint product maps the state at `n` to the state at `m`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/JacobiCocycle/Variante0e25bda99bc87a525dceeaec0c11f1f1a9a7a928f42d5ce18ffe384310ba6b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/JacobiCocycle/Variante0e25bda99bc87a525dceeaec0c11f1f1a9a7a928f42d5ce18ffe384310ba6b0.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `590a501ee2b0e31bbcab69b9738eeb19ce98486f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
