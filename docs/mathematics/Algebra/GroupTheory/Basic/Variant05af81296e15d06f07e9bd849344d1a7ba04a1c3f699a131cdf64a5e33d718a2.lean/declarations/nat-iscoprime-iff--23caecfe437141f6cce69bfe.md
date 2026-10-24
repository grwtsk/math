# Nat.isCoprime_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2efdace89745b6adeafbad57fa60c5236fcc3069",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 409,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/05af81296e15d06f07e9bd849344d1a7ba04a1c3f699a131cdf64a5e33d718a2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:942061d2-dc78-be51-ac58-f090dbb90159",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2854d6b8-40e4-7d17-fb60-ae0c3fb302ee",
  "kind": "lemma",
  "lexical_name": "Nat.isCoprime_iff",
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
  "slug": "nat-iscoprime-iff--23caecfe437141f6cce69bfe",
  "source": {
    "blob": "2efdace89745b6adeafbad57fa60c5236fcc3069",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 417,
    "line": 409,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant05af81296e15d06f07e9bd849344d1a7ba04a1c3f699a131cdf64a5e33d718a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23caecfe437141f6cce69bfe2d8154a7a2717deec0a00c2fd6bdb46a308e09bb",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant05af81296e15d06f07e9bd849344d1a7ba04a1c3f699a131cdf64a5e33d718a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2854d6b8-40e4-7d17-fb60-ae0c3fb302ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 409–417.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Nat.isCoprime_iff {m n : ℕ} : IsCoprime m n ↔ m = 1 ∨ n = 1 := by
  refine ⟨fun ⟨a, b, H⟩ => ?_, fun h => ?_⟩
  · simp_rw [Nat.add_eq_one_iff, mul_eq_one, mul_eq_zero] at H
    exact H.symm.imp (·.1.2) (·.2.2)
  · obtain rfl | rfl := h
    · exact isCoprime_one_left
    · exact isCoprime_one_right

/-- `IsCoprime` is not a useful definition for `PNat`; consider using `Nat.Coprime` instead. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant05af81296e15d06f07e9bd849344d1a7ba04a1c3f699a131cdf64a5e33d718a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant05af81296e15d06f07e9bd849344d1a7ba04a1c3f699a131cdf64a5e33d718a2.lean#L409).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2efdace89745b6adeafbad57fa60c5236fcc3069` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
