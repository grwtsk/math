# eval_prec_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "95d5c55f26b17c9c406904ac60a0b4aa61f8ee85",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 646,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ee/eec83f4ed1045a7dca9d567bab4d3ea6846fd893e8ccc19081cf1b3af0b0ddc6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:275d24b5-9b05-7de7-a1a1-c41ed38c68a0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e5112447-4c5c-3375-6a53-61f629109645",
  "kind": "theorem",
  "lexical_name": "eval_prec_succ",
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
  "slug": "eval-prec-succ--10228423911b99a14cf4ffb8",
  "source": {
    "blob": "95d5c55f26b17c9c406904ac60a0b4aa61f8ee85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 652,
    "line": 646,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Varianteec83f4ed1045a7dca9d567bab4d3ea6846fd893e8ccc19081cf1b3af0b0ddc6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10228423911b99a14cf4ffb8567afede3551a7a834e8a137eea691efa16be0be",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Varianteec83f4ed1045a7dca9d567bab4d3ea6846fd893e8ccc19081cf1b3af0b0ddc6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5112447-4c5c-3375-6a53-61f629109645`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 646–652.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eval_prec_succ (cf cg : Code) (a k : ℕ) :
    eval (prec cf cg) (Nat.pair a (Nat.succ k)) =
      do {let ih ← eval (prec cf cg) (Nat.pair a k); eval cg (Nat.pair a (Nat.pair k ih))} := by
  rw [eval, Nat.unpaired, Part.bind_eq_bind, Nat.unpair_pair]
  simp
#align nat.partrec.code.eval_prec_succ Nat.Partrec.Code.eval_prec_succ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Varianteec83f4ed1045a7dca9d567bab4d3ea6846fd893e8ccc19081cf1b3af0b0ddc6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Varianteec83f4ed1045a7dca9d567bab4d3ea6846fd893e8ccc19081cf1b3af0b0ddc6.lean#L646).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95d5c55f26b17c9c406904ac60a0b4aa61f8ee85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
