# sum_eq_coprime_classes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "34d4f4f159ea1e60c3206c2f8dd6850030546af6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 83,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d11a1211a96883b49a06b0b823c24bccb86fb684568fc97bf3da6cdb786d7dec.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:59810937-0dcc-5f77-b594-794d08c26d21",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:75be3d3c-6a39-94fe-690d-2852c35c0d29",
  "kind": "theorem",
  "lexical_name": "sum_eq_coprime_classes",
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
  "slug": "sum-eq-coprime-classes--09aa8b118e394b242b99a489",
  "source": {
    "blob": "34d4f4f159ea1e60c3206c2f8dd6850030546af6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 83,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantd11a1211a96883b49a06b0b823c24bccb86fb684568fc97bf3da6cdb786d7dec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09aa8b118e394b242b99a489e679667d1a8361e03cd573fd3449f659c936510a",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantd11a1211a96883b49a06b0b823c24bccb86fb684568fc97bf3da6cdb786d7dec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75be3d3c-6a39-94fe-690d-2852c35c0d29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_eq_coprime_classes (N : ℕ) (H : ℕ → ℕ → ℝ) :
    (∑ d ∈ Icc 1 N, ∑ e ∈ Icc 1 N, H d e) =
      ∑ p ∈ coprimePairs N, ∑ g ∈ Icc 1 (N / max p.1 p.2), H (g * p.1) (g * p.2) := by
  calc
    _ = ∑ p ∈ (Icc 1 N) ×ˢ (Icc 1 N), H p.1 p.2 := (sum_product _ _ _).symm
    _ = ∑ s ∈ gcdClasses N, H (joinClass s).1 (joinClass s).2 := by
      apply sum_bij' (fun p _ ↦ splitPair p) (fun s _ ↦ joinClass s)
      · exact splitPair_mem N
      · exact joinClass_mem N
      · intro p _
        exact joinClass_splitPair p
      · exact splitPair_joinClass N
      · intro p _
        rw [joinClass_splitPair]
    _ = _ := sum_sigma _ _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantd11a1211a96883b49a06b0b823c24bccb86fb684568fc97bf3da6cdb786d7dec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantd11a1211a96883b49a06b0b823c24bccb86fb684568fc97bf3da6cdb786d7dec.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34d4f4f159ea1e60c3206c2f8dd6850030546af6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
