# height_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a33ea859-4c76-797a-9338-d362a005d22b",
  "kind": "lemma",
  "lexical_name": "height_ne_zero",
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
  "slug": "height-ne-zero--69a53bf3458562c52a3e22bb",
  "source": {
    "blob": "457696b067384e7226aa4439d9e82f3e848249f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 503,
    "line": 484,
    "path": "GRWTSK/Algebra/LinearAlgebra/Base/Variant67c7cc27d56673c1078cf6aaff141548a8091c9ec1d97c97bb3a73a0dbe1642f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69a53bf3458562c52a3e22bbb86df493a4e522687fee7862535d81a6b51c3d4e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Base/Variant67c7cc27d56673c1078cf6aaff141548a8091c9ec1d97c97bb3a73a0dbe1642f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a33ea859-4c76-797a-9338-d362a005d22b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 484–503.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma height_ne_zero (i : ι) :
    b.height i ≠ 0 := by
  obtain ⟨f, hf₀, hf₁, hf₂⟩ := b.exists_root_eq_sum_int i
  rw [height_eq_sum hf₂]
  rcases hf₁ with pos | neg
  · refine (Finset.sum_pos' (fun i _ ↦ pos.le i) ?_).ne'
    by_contra! contra
    replace contra (j : ι) : f j = 0 := by
      by_cases hj : j ∈ f.support
      · exact le_antisymm (contra j (hf₀ hj)) (pos.le j)
      · simpa using hj
    exact P.ne_zero i <| by simp [hf₂, contra]
  · refine (Finset.sum_neg' (fun i _ ↦ neg.le i) ?_).ne
    by_contra! contra
    replace contra (j : ι) : f j = 0 := by
      by_cases hj : j ∈ f.support
      · exact le_antisymm (neg.le j) (contra j (hf₀ hj))
      · simpa using hj
    exact P.ne_zero i <| by simp [hf₂, contra]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Base/Variant67c7cc27d56673c1078cf6aaff141548a8091c9ec1d97c97bb3a73a0dbe1642f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Base/Variant67c7cc27d56673c1078cf6aaff141548a8091c9ec1d97c97bb3a73a0dbe1642f.lean#L484).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `457696b067384e7226aa4439d9e82f3e848249f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
