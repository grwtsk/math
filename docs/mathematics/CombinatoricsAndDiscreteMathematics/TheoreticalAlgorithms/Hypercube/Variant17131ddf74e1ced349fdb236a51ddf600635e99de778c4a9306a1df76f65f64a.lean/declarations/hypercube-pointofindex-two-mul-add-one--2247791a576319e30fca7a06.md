# Hypercube.pointOfIndex_two_mul_add_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8c3ea41f605e630f110291ca996c991b60d54bdd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 151,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/17/17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8168fd08-0693-8aec-f49b-33d047fa0618",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b55b86f0-38c5-61d0-f757-2595834adf85",
  "kind": "theorem",
  "lexical_name": "Hypercube.pointOfIndex_two_mul_add_one",
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
  "slug": "hypercube-pointofindex-two-mul-add-one--2247791a576319e30fca7a06",
  "source": {
    "blob": "8c3ea41f605e630f110291ca996c991b60d54bdd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 151,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2247791a576319e30fca7a06b7472e0d247f50f8dec89d385d931ad416b6f700",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b55b86f0-38c5-61d0-f757-2595834adf85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Hypercube.pointOfIndex_two_mul_add_one (n k : Nat) :
    Hypercube.pointOfIndex (n + 1) (2 * k + 1) =
      Hypercube.extend (Hypercube.pointOfIndex n k) true := by
  funext i
  by_cases h : i.val < n
  · simp only [Hypercube.pointOfIndex, Hypercube.extend, h, dite_true]
    rw [show Hypercube.tableBit (n + 1) i =
        Hypercube.tableBit n ⟨i.val, h⟩ + 1 by
          simp [Hypercube.tableBit]
          omega]
    exact Hypercube.bitAtNat_two_mul_add_one_succ k _
  · have hi : i.val = n := by omega
    simp [Hypercube.pointOfIndex, Hypercube.extend, Hypercube.tableBit,
      hi, Hypercube.bitAtNat_two_mul_add_one_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c3ea41f605e630f110291ca996c991b60d54bdd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
