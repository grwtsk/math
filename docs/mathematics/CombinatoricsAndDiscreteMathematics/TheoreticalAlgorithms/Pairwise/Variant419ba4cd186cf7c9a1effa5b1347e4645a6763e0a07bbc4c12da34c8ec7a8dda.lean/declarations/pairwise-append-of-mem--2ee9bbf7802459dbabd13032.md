# pairwise_append_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb359aea-863a-bb1f-a7b4-51e0b0682e6b",
  "kind": "theorem",
  "lexical_name": "pairwise_append_of_mem",
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
  "slug": "pairwise-append-of-mem--2ee9bbf7802459dbabd13032",
  "source": {
    "blob": "8df88938af2e3658fcd6f38df2ae2861eca75906",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 83,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant419ba4cd186cf7c9a1effa5b1347e4645a6763e0a07bbc4c12da34c8ec7a8dda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ee9bbf7802459dbabd130327be7033b0edaeaca60c5942aae294d89de3c06ef",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant419ba4cd186cf7c9a1effa5b1347e4645a6763e0a07bbc4c12da34c8ec7a8dda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb359aea-863a-bb1f-a7b4-51e0b0682e6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pairwise_append_of_mem [Std.Symm R] [IsTrans α R] (ha : a ∈ l₁) (hb : b ∈ l₂) :
    (l₁ ++ l₂).Pairwise R ↔ R a b ∧ l₁.Pairwise R ∧ l₂.Pairwise R := by
  rw [pairwise_append, ← and_rotate, and_congr_left_iff, and_imp]
  refine fun h₁ h₂ ↦ ⟨fun h ↦ h a ha b hb, fun hab x hx y hy ↦ ?_⟩
  have : R a y := eq_or_ne b y |>.elim (· ▸ hab) (trans_of R hab <| h₂.forall hb hy ·)
  exact eq_or_ne x a |>.elim (· ▸ this) fun hne ↦ trans_of R (h₁.forall hx ha hne) this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant419ba4cd186cf7c9a1effa5b1347e4645a6763e0a07bbc4c12da34c8ec7a8dda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant419ba4cd186cf7c9a1effa5b1347e4645a6763e0a07bbc4c12da34c8ec7a8dda.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8df88938af2e3658fcd6f38df2ae2861eca75906` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
