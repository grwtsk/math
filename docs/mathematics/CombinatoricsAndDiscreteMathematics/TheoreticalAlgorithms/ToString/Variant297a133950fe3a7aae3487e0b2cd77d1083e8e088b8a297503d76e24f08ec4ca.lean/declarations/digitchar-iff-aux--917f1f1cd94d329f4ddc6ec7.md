# digitChar_iff_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c8264d0a2a4924cec9d595d44831ad4db006999b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 42,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/297a133950fe3a7aae3487e0b2cd77d1083e8e088b8a297503d76e24f08ec4ca.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4088ef0b-28f5-7ba8-9bc5-c082915f8539",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f7cb3393-5226-e528-399d-c99431bf58b2",
  "kind": "theorem",
  "lexical_name": "digitChar_iff_aux",
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
  "slug": "digitchar-iff-aux--917f1f1cd94d329f4ddc6ec7",
  "source": {
    "blob": "c8264d0a2a4924cec9d595d44831ad4db006999b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 42,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToString/Variant297a133950fe3a7aae3487e0b2cd77d1083e8e088b8a297503d76e24f08ec4ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:917f1f1cd94d329f4ddc6ec7e5969b46cb1b57cab8fe5f5b9c02d31449b87f24",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToString/Variant297a133950fe3a7aae3487e0b2cd77d1083e8e088b8a297503d76e24f08ec4ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7cb3393-5226-e528-399d-c99431bf58b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem digitChar_iff_aux :
    ∀ n, (n.digitChar = '0' ↔ n = 0) ∧ (n.digitChar = '1' ↔ n = 1) ∧
         (n.digitChar = '2' ↔ n = 2) ∧ (n.digitChar = '3' ↔ n = 3) ∧
         (n.digitChar = '4' ↔ n = 4) ∧ (n.digitChar = '5' ↔ n = 5) ∧
         (n.digitChar = '6' ↔ n = 6) ∧ (n.digitChar = '7' ↔ n = 7) ∧
         (n.digitChar = '8' ↔ n = 8) ∧ (n.digitChar = '9' ↔ n = 9) ∧
         (n.digitChar = 'a' ↔ n = 10) ∧ (n.digitChar = 'b' ↔ n = 11) ∧
         (n.digitChar = 'c' ↔ n = 12) ∧ (n.digitChar = 'd' ↔ n = 13) ∧
         (n.digitChar = 'e' ↔ n = 14) ∧ (n.digitChar = 'f' ↔ n = 15) ∧
         (n.digitChar = '*' ↔ 16 ≤ n)
  | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 | _ + 16 => by simp [digitChar]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToString/Variant297a133950fe3a7aae3487e0b2cd77d1083e8e088b8a297503d76e24f08ec4ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToString/Variant297a133950fe3a7aae3487e0b2cd77d1083e8e088b8a297503d76e24f08ec4ca.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8264d0a2a4924cec9d595d44831ad4db006999b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
