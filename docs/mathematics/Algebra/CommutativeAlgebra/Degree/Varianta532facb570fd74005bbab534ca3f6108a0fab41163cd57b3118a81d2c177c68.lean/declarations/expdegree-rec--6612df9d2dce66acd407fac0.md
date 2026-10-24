# expDegree_rec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6b08cc3443c80e96cb7937a4156abb816c5f01d9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 166,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1db7798f-f900-4879-6fb7-ba438ddd8f8e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:545afc31-b956-2b17-a85a-89fa37ccc928",
  "kind": "lemma",
  "lexical_name": "expDegree_rec",
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
  "slug": "expdegree-rec--6612df9d2dce66acd407fac0",
  "source": {
    "blob": "6b08cc3443c80e96cb7937a4156abb816c5f01d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 166,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6612df9d2dce66acd407fac0c49447181c407ea2cfa2311717c4f06ff389304f",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:545afc31-b956-2b17-a85a-89fa37ccc928`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma expDegree_rec (m : ℕ) :
    (expDegree (2 * (m + 3)) = 2 * expDegree (m + 2) + expDegree (m + 3) + expDegree (m + 5) ∧
    expDegree (2 * (m + 3)) = expDegree (m + 1) + expDegree (m + 3) + 2 * expDegree (m + 4)) ∧
    (expDegree (2 * (m + 2) + 1) =
      expDegree (m + 4) + 3 * expDegree (m + 2) + (if Even m then 2 * 3 else 0) ∧
    expDegree (2 * (m + 2) + 1) =
      expDegree (m + 1) + 3 * expDegree (m + 3) + (if Even m then 0 else 2 * 3)) := by
  push_cast [← @Nat.cast_inj ℤ, ← mul_left_cancel_iff_of_pos (b := (expDegree _ : ℤ)) two_pos,
    mul_add, mul_left_comm (2 : ℤ)]
  repeat rw [expDegree_cast <| by omega]
  push_cast [Nat.even_add_one, ite_not, even_two_mul]
  constructor <;> constructor <;> split_ifs <;> ring1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b08cc3443c80e96cb7937a4156abb816c5f01d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
