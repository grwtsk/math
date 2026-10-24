# checkerboard_count_imbalance_abs_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ad96cb58cef14fa8687e0fdbd1c90a8d3e7f6d87",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 187,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e70264a1b259cd1aa5b47b4d0bcc9d816a9def05bbb5cf5aa4b682680df67e29.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1be3057e-cb16-ba96-c1ff-124a18dff2bc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6ca216ab-7af4-e89a-9d2c-bae6cfcdc5f7",
  "kind": "theorem",
  "lexical_name": "checkerboard_count_imbalance_abs_le_one",
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
  "slug": "checkerboard-count-imbalance-abs-le-one--b51ea5807a8bb7f4782ed9cb",
  "source": {
    "blob": "ad96cb58cef14fa8687e0fdbd1c90a8d3e7f6d87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 187,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Density/Variante70264a1b259cd1aa5b47b4d0bcc9d816a9def05bbb5cf5aa4b682680df67e29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b51ea5807a8bb7f4782ed9cbd0608250d4d2d8f006a761f59c660346d26e2116",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Density/Variante70264a1b259cd1aa5b47b4d0bcc9d816a9def05bbb5cf5aa4b682680df67e29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ca216ab-7af4-e89a-9d2c-bae6cfcdc5f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem checkerboard_count_imbalance_abs_le_one
    (m n : Nat) :
    Int.natAbs (imbalance (checkerboard m n)) ≤ 1 := by
  let N := BinaryMatrix.cellCount (checkerboard m n)
  have hones : BinaryMatrix.countOnes (checkerboard m n) = N / 2 := by
    simpa [N] using checkerboard_countOnes_eq m n
  have hzeros : BinaryMatrix.countZeros (checkerboard m n) = N - N / 2 := by
    simpa [N] using checkerboard_countZeros_eq m n
  have hN : N = 2 * (N / 2) + N % 2 := by
    simpa [Nat.mul_comm, Nat.add_comm] using (Nat.div_add_mod N 2).symm
  have hmod : N % 2 = 0 ∨ N % 2 = 1 := Nat.mod_two_eq_zero_or_one N
  rcases hmod with hmod | hmod
  · have hhalf : N - N / 2 = N / 2 := by omega
    simp [imbalance, hones, hzeros, hhalf]
  · have hhalf : (N : Int) - (N / 2 : Int) = (N / 2 : Int) + 1 := by
      have : N = 2 * (N / 2) + 1 := by omega
      omega
    have himb : imbalance (checkerboard m n) = -1 := by
      simp [imbalance, hones, hzeros]
      omega
    simp [himb]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Density/Variante70264a1b259cd1aa5b47b4d0bcc9d816a9def05bbb5cf5aa4b682680df67e29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Density/Variante70264a1b259cd1aa5b47b4d0bcc9d816a9def05bbb5cf5aa4b682680df67e29.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad96cb58cef14fa8687e0fdbd1c90a8d3e7f6d87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
