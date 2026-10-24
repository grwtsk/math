# certificate_check_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b78f858-92ea-f379-1ad7-88109b7e7717",
  "kind": "theorem",
  "lexical_name": "certificate_check_sound",
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
  "slug": "certificate-check-sound--71256006ddedde0a356a577c",
  "source": {
    "blob": "e4a8c9ba6c212f81b7a71c3e9c28507ca152fb6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 124,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Calculus/Variantcddcce930434d66e3cefe210674f4640349efbfede40c4fbfac9524969a1ed05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71256006ddedde0a356a577c5a3f416b554897d995fdc8cd25694d6c5fe1feea",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Calculus/Variantcddcce930434d66e3cefe210674f4640349efbfede40c4fbfac9524969a1ed05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b78f858-92ea-f379-1ad7-88109b7e7717`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem certificate_check_sound {n m : ℕ} (c : Certificate n m)
    (hc : c.check = true) :
    ∀ x, Reachable c.adjacency x ↔ ∃ s, c.states s = x := by
  have hv : c.Valid := of_decide_eq_true hc
  rcases hv with ⟨hseed, hstep, hword, _⟩
  intro x
  constructor
  · intro hx
    induction hx with
    | seed i => exact ⟨c.seeds i, hseed i⟩
    | @step x i hx ih =>
      rcases ih with ⟨s, hs⟩
      exact ⟨c.transition s i, (hstep s i).trans (congrArg (mutate c.adjacency i) hs)⟩
  · rintro ⟨s, rfl⟩
    rw [← hword s]
    exact play_reachable _ _ (Reachable.seed _)

/-- The checked distinctness fixes the unquotiented orbit cardinality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Calculus/Variantcddcce930434d66e3cefe210674f4640349efbfede40c4fbfac9524969a1ed05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Calculus/Variantcddcce930434d66e3cefe210674f4640349efbfede40c4fbfac9524969a1ed05.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4a8c9ba6c212f81b7a71c3e9c28507ca152fb6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
