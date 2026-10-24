# finrank_finsupp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4356ac7963502d732cd41f5f77d20f93fc3f396b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 246,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e0dd07b46c214c5098de9767526349a5eff80d864619c774d0a3962a4147eb13.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7b64a9d5-76b0-f0d1-ba75-33ba3fa6ff81",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e293287a-ab9e-bcf7-1aa2-4ff981121090",
  "kind": "theorem",
  "lexical_name": "finrank_finsupp",
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
  "slug": "finrank-finsupp--2119da3cd725b5d6e173d6cc",
  "source": {
    "blob": "4356ac7963502d732cd41f5f77d20f93fc3f396b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 246,
    "path": "GRWTSK/Algebra/LinearAlgebra/Constructions/Variante0dd07b46c214c5098de9767526349a5eff80d864619c774d0a3962a4147eb13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2119da3cd725b5d6e173d6cc1074ed5dc4489700229c32bac08acb2a4c28d986",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Constructions/Variante0dd07b46c214c5098de9767526349a5eff80d864619c774d0a3962a4147eb13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e293287a-ab9e-bcf7-1aa2-4ff981121090`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finrank_finsupp {ι : Type v} [Fintype ι] : finrank R (ι →₀ M) = card ι * finrank R M := by
  rw [finrank, finrank, rank_finsupp, ← mk_toNat_eq_card, toNat_mul, toNat_lift, toNat_lift]

/-- The finrank of `(ι →₀ R)` is `Fintype.card ι`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Constructions/Variante0dd07b46c214c5098de9767526349a5eff80d864619c774d0a3962a4147eb13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Constructions/Variante0dd07b46c214c5098de9767526349a5eff80d864619c774d0a3962a4147eb13.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4356ac7963502d732cd41f5f77d20f93fc3f396b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
