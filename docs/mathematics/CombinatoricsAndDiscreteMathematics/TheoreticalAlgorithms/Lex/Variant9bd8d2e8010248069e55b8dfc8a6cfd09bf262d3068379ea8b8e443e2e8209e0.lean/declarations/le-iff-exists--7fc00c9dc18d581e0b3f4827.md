# le_iff_exists

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ea3b93b183826fc3bdee6dbbc7d2fab42d61f344",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 493,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9bd8d2e8010248069e55b8dfc8a6cfd09bf262d3068379ea8b8e443e2e8209e0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4a6cc73c-2997-1f0a-dcf8-8fcced535214",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f272dd87-0f9e-f2f9-d424-a687ed0d798e",
  "kind": "theorem",
  "lexical_name": "le_iff_exists",
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
  "slug": "le-iff-exists--7fc00c9dc18d581e0b3f4827",
  "source": {
    "blob": "ea3b93b183826fc3bdee6dbbc7d2fab42d61f344",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 509,
    "line": 493,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant9bd8d2e8010248069e55b8dfc8a6cfd09bf262d3068379ea8b8e443e2e8209e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7fc00c9dc18d581e0b3f4827939f5a77e77fb65b9549d01f54736be66cce665c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant9bd8d2e8010248069e55b8dfc8a6cfd09bf262d3068379ea8b8e443e2e8209e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f272dd87-0f9e-f2f9-d424-a687ed0d798e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 493–509.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem le_iff_exists [LT α]
    [Std.Asymm (· < · : α → α → Prop)]
    [Std.Trichotomous (· < · : α → α → Prop)] {l₁ l₂ : List α} :
    l₁ ≤ l₂ ↔
      (l₁ = l₂.take l₁.length) ∨
        (∃ (i : Nat) (h₁ : i < l₁.length) (h₂ : i < l₂.length),
          (∀ j, (hj : j < i) →
            l₁[j]'(Nat.lt_trans hj h₁) = l₂[j]'(Nat.lt_trans hj h₂)) ∧ l₁[i] < l₂[i]) := by
  open Classical in
  rw [← lex_eq_false_iff_ge, lex_eq_false_iff_exists]
  · simp only [isEqv_eq, beq_iff_eq, decide_eq_true_eq]
    simp only [eq_comm]
    conv => lhs; simp +singlePass [exists_comm]
  · simpa using Std.Irrefl.irrefl
  · simpa using Std.Asymm.asymm
  · simpa using Std.Trichotomous.trichotomous

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant9bd8d2e8010248069e55b8dfc8a6cfd09bf262d3068379ea8b8e443e2e8209e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant9bd8d2e8010248069e55b8dfc8a6cfd09bf262d3068379ea8b8e443e2e8209e0.lean#L493).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea3b93b183826fc3bdee6dbbc7d2fab42d61f344` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
