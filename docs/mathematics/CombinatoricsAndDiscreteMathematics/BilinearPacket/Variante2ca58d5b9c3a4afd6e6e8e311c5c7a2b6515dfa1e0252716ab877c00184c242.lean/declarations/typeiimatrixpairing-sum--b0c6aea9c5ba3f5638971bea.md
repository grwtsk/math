# typeIIMatrixPairing_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0ab6ccf750f9699969862d4ba77528e65ca76069",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 90,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e2ca58d5b9c3a4afd6e6e8e311c5c7a2b6515dfa1e0252716ab877c00184c242.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:89caa937-ffb9-c811-4bc8-4a437ca9d8a6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:984f66b4-c50b-6b46-c9cc-1b2b1adec2de",
  "kind": "theorem",
  "lexical_name": "typeIIMatrixPairing_sum",
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
  "slug": "typeiimatrixpairing-sum--b0c6aea9c5ba3f5638971bea",
  "source": {
    "blob": "0ab6ccf750f9699969862d4ba77528e65ca76069",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 90,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BilinearPacket/Variante2ca58d5b9c3a4afd6e6e8e311c5c7a2b6515dfa1e0252716ab877c00184c242.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0c6aea9c5ba3f5638971beaaaf1513450ad01aac8b9b9d881dddb0fb7896128",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BilinearPacket/Variante2ca58d5b9c3a4afd6e6e8e311c5c7a2b6515dfa1e0252716ab877c00184c242.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:984f66b4-c50b-6b46-c9cc-1b2b1adec2de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem typeIIMatrixPairing_sum {Index Left Right : Type*}
    [Fintype Index] [Fintype Left] [Fintype Right]
    (left : EuclideanSpace ℂ Left) (matrices : Index → Matrix Left Right ℂ)
    (right : EuclideanSpace ℂ Right) :
    typeIIMatrixPairing left (∑ index, matrices index) right =
      ∑ index, typeIIMatrixPairing left (matrices index) right := by
  classical
  simp only [typeIIMatrixPairing, Matrix.sum_apply,
    Finset.mul_sum, Finset.sum_mul]
  calc
    (∑ l, ∑ r, ∑ index,
        conj (left l) * matrices index l r * right r) =
      ∑ l, ∑ index, ∑ r,
        conj (left l) * matrices index l r * right r := by
          apply Fintype.sum_congr
          intro l
          exact Finset.sum_comm
    _ = ∑ index, ∑ l, ∑ r,
        conj (left l) * matrices index l r * right r :=
      Finset.sum_comm

/-! ## Bilinear packet factorization -/

/-- An exact bipartite factorization of the fixed Type II cutoff matrix.

`Left` and `Right` are finite copies of the canonical scale index, recorded
by equivalences so that coefficient provenance is explicit.  The packet
spaces are complex Hilbert spaces.  `packetMatrix + residualMatrix` is
required to equal the literal cutoff matrix entry by entry.

The final field is the finite arithmetic reindexing from the already checked
Vaughan prefix to the cutoff pairing.  It is an equality and carries no
analytic estimate.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BilinearPacket/Variante2ca58d5b9c3a4afd6e6e8e311c5c7a2b6515dfa1e0252716ab877c00184c242.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BilinearPacket/Variante2ca58d5b9c3a4afd6e6e8e311c5c7a2b6515dfa1e0252716ab877c00184c242.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ab6ccf750f9699969862d4ba77528e65ca76069` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
