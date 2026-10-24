# mul_sup_eq_of_coprime_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2b1e8e612d6bede3ee2e3605c3ce71c6af73fc63",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 467,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/fef4e2fcb531222bc815fedab32b607a689bc4c72633554a97d4b0da01db8163.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2e5574a6-992f-9a05-b1c7-a54afb8a8f7b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eba8c421-c34a-8b65-1169-91e6668e8408",
  "kind": "theorem",
  "lexical_name": "mul_sup_eq_of_coprime_right",
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
  "slug": "mul-sup-eq-of-coprime-right--d3053867f1e739d0bbc2615a",
  "source": {
    "blob": "2b1e8e612d6bede3ee2e3605c3ce71c6af73fc63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 472,
    "line": 467,
    "path": "GRWTSK/Algebra/Operations/Variantfef4e2fcb531222bc815fedab32b607a689bc4c72633554a97d4b0da01db8163.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3053867f1e739d0bbc2615af5e1c5a4fe9d1a2b3bcb6d75c47fbe8989f8e538",
  "verification": {
    "reference": "docs/verification/Algebra/Operations/Variantfef4e2fcb531222bc815fedab32b607a689bc4c72633554a97d4b0da01db8163.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eba8c421-c34a-8b65-1169-91e6668e8408`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 467–472.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_sup_eq_of_coprime_right [I.IsTwoSided] (h : K ⊔ J = ⊤) : I * K ⊔ J = I ⊔ J := by
  rw [sup_comm] at h
  rw [sup_comm, sup_mul_eq_of_coprime_right h, sup_comm]

variable {ι : Type*}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Operations/Variantfef4e2fcb531222bc815fedab32b607a689bc4c72633554a97d4b0da01db8163.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Operations/Variantfef4e2fcb531222bc815fedab32b607a689bc4c72633554a97d4b0da01db8163.lean#L467).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b1e8e612d6bede3ee2e3605c3ce71c6af73fc63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
