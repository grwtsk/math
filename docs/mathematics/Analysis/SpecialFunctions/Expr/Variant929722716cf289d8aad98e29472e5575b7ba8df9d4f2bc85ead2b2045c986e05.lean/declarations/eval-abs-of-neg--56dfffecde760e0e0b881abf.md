# eval_abs_of_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "138486839d71214f386f94d3481e400319a9b832",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 494,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/92/929722716cf289d8aad98e29472e5575b7ba8df9d4f2bc85ead2b2045c986e05.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:52d7a006-cc52-f512-2341-c0387af5b5c3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8dcad19b-6d22-679a-b338-cbf0e53ec27d",
  "kind": "theorem",
  "lexical_name": "eval_abs_of_neg",
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
  "slug": "eval-abs-of-neg--56dfffecde760e0e0b881abf",
  "source": {
    "blob": "138486839d71214f386f94d3481e400319a9b832",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 499,
    "line": 494,
    "path": "GRWTSK/Analysis/SpecialFunctions/Expr/Variant929722716cf289d8aad98e29472e5575b7ba8df9d4f2bc85ead2b2045c986e05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56dfffecde760e0e0b881abf942070a18bd9597755bf1eb3dbd77d5e4cd9457d",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Expr/Variant929722716cf289d8aad98e29472e5575b7ba8df9d4f2bc85ead2b2045c986e05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8dcad19b-6d22-679a-b338-cbf0e53ec27d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 494–499.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eval_abs_of_neg (ρ : Nat → ℝ) (e : Expr) (hneg : eval ρ e < 0) :
    eval ρ (abs e) = -(eval ρ e) := by
  rw [eval_abs, abs_of_neg hneg]

-- Lemmas about evalAlong

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Expr/Variant929722716cf289d8aad98e29472e5575b7ba8df9d4f2bc85ead2b2045c986e05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Expr/Variant929722716cf289d8aad98e29472e5575b7ba8df9d4f2bc85ead2b2045c986e05.lean#L494).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `138486839d71214f386f94d3481e400319a9b832` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
