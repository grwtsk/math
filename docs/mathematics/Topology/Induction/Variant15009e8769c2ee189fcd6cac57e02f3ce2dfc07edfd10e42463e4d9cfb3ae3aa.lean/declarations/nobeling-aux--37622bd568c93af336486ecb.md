# Nobeling_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fd7d373be90bdf0c079f7b05790fade4feb266b1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 109,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/15/15009e8769c2ee189fcd6cac57e02f3ce2dfc07edfd10e42463e4d9cfb3ae3aa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9226323c-9fd8-5712-1a51-0909e315b736",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:929a676d-4dc8-343a-57eb-6e831fd7b048",
  "kind": "theorem",
  "lexical_name": "Nobeling_aux",
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
  "slug": "nobeling-aux--37622bd568c93af336486ecb",
  "source": {
    "blob": "fd7d373be90bdf0c079f7b05790fade4feb266b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 109,
    "path": "GRWTSK/Topology/Induction/Variant15009e8769c2ee189fcd6cac57e02f3ce2dfc07edfd10e42463e4d9cfb3ae3aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37622bd568c93af336486ecba41266e1b1e2cdd1106dc483fdba1fa60cd3f544",
  "verification": {
    "reference": "docs/verification/Topology/Induction/Variant15009e8769c2ee189fcd6cac57e02f3ce2dfc07edfd10e42463e4d9cfb3ae3aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:929a676d-4dc8-343a-57eb-6e831fd7b048`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Nobeling_aux : Module.Free ℤ (LocallyConstant S ℤ) := Module.Free.of_equiv'
  (Module.Free.of_basis <| GoodProducts.Basis _ hι.isClosed_range) (LocallyConstant.congrLeftₗ ℤ
    hι.isEmbedding.toHomeomorph).symm

end NobelingProof

variable (S : Profinite.{u})

open scoped Classical in
/-- The embedding `S → (I → Bool)` where `I` is the set of clopens of `S`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Induction/Variant15009e8769c2ee189fcd6cac57e02f3ce2dfc07edfd10e42463e4d9cfb3ae3aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Induction/Variant15009e8769c2ee189fcd6cac57e02f3ce2dfc07edfd10e42463e4d9cfb3ae3aa.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd7d373be90bdf0c079f7b05790fade4feb266b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
