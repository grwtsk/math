# exists_signed_sum_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:92c82a6d-1441-c757-ce80-808d9a26e8d3",
  "kind": "theorem",
  "lexical_name": "exists_signed_sum_aux",
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
  "slug": "exists-signed-sum-aux--80624b439d5cf24378cab54d",
  "source": {
    "blob": "b407bf7ac166d05fa7418d794561d49699caf6cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 504,
    "line": 491,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sign/Variant820d653144f097f75ee6f568bf7529dda5a35579e82b31e553406ae08d6f284d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80624b439d5cf24378cab54d18906984466d50c696f6b301fd31c38e1cace173",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Sign/Variant820d653144f097f75ee6f568bf7529dda5a35579e82b31e553406ae08d6f284d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92c82a6d-1441-c757-ce80-808d9a26e8d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 491–504.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem exists_signed_sum_aux [DecidableEq α] (s : Finset α) (f : α → ℤ) :
    ∃ (β : Type u) (t : Finset β) (sgn : β → SignType) (g : β → α),
      (∀ b, g b ∈ s) ∧
        (#t = ∑ a ∈ s, (f a).natAbs) ∧
          ∀ a ∈ s, (∑ b ∈ t, if g b = a then (sgn b : ℤ) else 0) = f a := by
  refine
    ⟨(Σ _ : { x // x ∈ s }, ℕ), Finset.univ.sigma fun a => range (f a).natAbs,
      fun a => sign (f a.1), fun a => a.1, fun a => a.1.2, ?_, ?_⟩
  · simp [sum_attach (f := fun a => (f a).natAbs)]
  · intro x hx
    simp [sum_sigma, hx, ← Int.sign_eq_sign, Int.sign_mul_abs, mul_comm |f _|,
      sum_attach (s := s) (f := fun y => if y = x then f y else 0)]

/-- We can decompose a sum of absolute value `n` into a sum of `n` signs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sign/Variant820d653144f097f75ee6f568bf7529dda5a35579e82b31e553406ae08d6f284d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Sign/Variant820d653144f097f75ee6f568bf7529dda5a35579e82b31e553406ae08d6f284d.lean#L491).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b407bf7ac166d05fa7418d794561d49699caf6cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
