# cons_swap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc7fa263-ddec-fc9e-ed59-e537b27d5759",
  "kind": "theorem",
  "lexical_name": "cons_swap",
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
  "slug": "cons-swap--d95646bdd05244113da1cde6",
  "source": {
    "blob": "eea5704f1de59a3a35fe222c6d7f85420a7e0695",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 61,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant0b0d4e33b085dec7c7fe107f4adabdfd5c793e8f213d43323295591667e37665.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d95646bdd05244113da1cde69fbd37d7324799b7535ee797d95340d157b4a5af",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Pi/Variant0b0d4e33b085dec7c7fe107f4adabdfd5c793e8f213d43323295591667e37665.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc7fa263-ddec-fc9e-ed59-e537b27d5759`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cons_swap {a a' : α} {b : δ a} {b' : δ a'} {m : Multiset α} {f : ∀ a ∈ m, δ a}
    (h : a ≠ a') : Pi.cons (a' ::ₘ m) a b (Pi.cons m a' b' f) ≍
      Pi.cons (a ::ₘ m) a' b' (Pi.cons m a b f) := by
  apply hfunext rfl
  simp only [heq_iff_eq]
  rintro a'' _ rfl
  refine hfunext (by rw [Multiset.cons_swap]) fun ha₁ ha₂ _ => ?_
  rcases Decidable.ne_or_eq a'' a with (h₁ | rfl)
  on_goal 1 => rcases Decidable.eq_or_ne a'' a' with (rfl | h₂)
  all_goals simp [*, Pi.cons_same, Pi.cons_ne]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Pi/Variant0b0d4e33b085dec7c7fe107f4adabdfd5c793e8f213d43323295591667e37665.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant0b0d4e33b085dec7c7fe107f4adabdfd5c793e8f213d43323295591667e37665.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eea5704f1de59a3a35fe222c6d7f85420a7e0695` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
