# corec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ad084787f61e76ec1ec19c5e44994f9a7af89fc2779a0ea9fb669d9bfbd30abd",
  "kind": "def",
  "lexical_name": "corec",
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
  "slug": "corec--d70fe7710f1b2ea1ab90df8f",
  "source": {
    "blob": "831ef166fc2d6e9bf7e7ddd5eb9ab320850f4478",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 266,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Seq/Variant7bc5353e7098aab4a99afdfbc7e19a6dd134159b389e7e00c0e4f21a3110cbcb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d70fe7710f1b2ea1ab90df8f1afac0a11a1352fcfd1661a139098fea3478719e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Seq/Variant7bc5353e7098aab4a99afdfbc7e19a6dd134159b389e7e00c0e4f21a3110cbcb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ad084787f61e76ec1ec19c5e44994f9a7af89fc2779a0ea9fb669d9bfbd30abd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def corec (f : β → Option (α × β)) (b : β) : Seq α := by
  refine ⟨Stream'.corec' (Corec.f f) (some b), fun {n} h => ?_⟩
  rw [Stream'.corec'_eq]
  change Stream'.corec' (Corec.f f) (Corec.f f (some b)).2 n = none
  revert h; generalize some b = o; revert o
  induction' n with n IH <;> intro o
  · change (Corec.f f o).1 = none → (Corec.f f (Corec.f f o).2).1 = none
    rcases o with - | b <;> intro h
    · rfl
    dsimp [Corec.f] at h
    dsimp [Corec.f]
    revert h; rcases h₁ : f b with - | s <;> intro h
    · rfl
    · obtain ⟨a, b'⟩ := s
      contradiction
  · rw [Stream'.corec'_eq (Corec.f f) (Corec.f f o).2, Stream'.corec'_eq (Corec.f f) o]
    exact IH (Corec.f f o).2

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Seq/Variant7bc5353e7098aab4a99afdfbc7e19a6dd134159b389e7e00c0e4f21a3110cbcb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Seq/Variant7bc5353e7098aab4a99afdfbc7e19a6dd134159b389e7e00c0e4f21a3110cbcb.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `831ef166fc2d6e9bf7e7ddd5eb9ab320850f4478` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
