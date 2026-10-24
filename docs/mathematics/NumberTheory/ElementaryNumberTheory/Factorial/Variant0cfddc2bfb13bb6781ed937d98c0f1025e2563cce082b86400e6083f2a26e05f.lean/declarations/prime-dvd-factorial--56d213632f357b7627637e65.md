# Prime.dvd_factorial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6c0f69036ade81c16f3c2bbac4c8b6910805d7e2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 19,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0cfddc2bfb13bb6781ed937d98c0f1025e2563cce082b86400e6083f2a26e05f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:491e992e-92a4-988a-a60d-37e5e2eb20af",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fffd852e-14e0-be1b-dddf-360659ac1313",
  "kind": "theorem",
  "lexical_name": "Prime.dvd_factorial",
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
  "slug": "prime-dvd-factorial--56d213632f357b7627637e65",
  "source": {
    "blob": "6c0f69036ade81c16f3c2bbac4c8b6910805d7e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26,
    "line": 19,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Factorial/Variant0cfddc2bfb13bb6781ed937d98c0f1025e2563cce082b86400e6083f2a26e05f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56d213632f357b7627637e65107fdb3f300d8b20edd662eda420e9c20abcf81c",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Factorial/Variant0cfddc2bfb13bb6781ed937d98c0f1025e2563cce082b86400e6083f2a26e05f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fffd852e-14e0-be1b-dddf-360659ac1313`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–26.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Prime.dvd_factorial : ∀ {n p : ℕ} (_ : Prime p), p ∣ n ! ↔ p ≤ n
  | 0, _, hp => iff_of_false hp.not_dvd_one (not_le_of_lt hp.pos)
  | n + 1, p, hp => by
    rw [factorial_succ, hp.dvd_mul, Prime.dvd_factorial hp]
    exact
      ⟨fun h => h.elim (le_of_dvd (succ_pos _)) le_succ_of_le, fun h =>
        (_root_.lt_or_eq_of_le h).elim (Or.inr ∘ le_of_lt_succ) fun h => Or.inl <| by rw [h]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Factorial/Variant0cfddc2bfb13bb6781ed937d98c0f1025e2563cce082b86400e6083f2a26e05f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Factorial/Variant0cfddc2bfb13bb6781ed937d98c0f1025e2563cce082b86400e6083f2a26e05f.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c0f69036ade81c16f3c2bbac4c8b6910805d7e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
