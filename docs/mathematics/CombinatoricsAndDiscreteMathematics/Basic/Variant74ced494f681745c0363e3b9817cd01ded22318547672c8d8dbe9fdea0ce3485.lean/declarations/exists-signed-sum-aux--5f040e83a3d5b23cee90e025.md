# exists_signed_sum_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f982577-0a70-f1ea-fb8f-59510135b2a6",
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
  "slug": "exists-signed-sum-aux--5f040e83a3d5b23cee90e025",
  "source": {
    "blob": "367fc0db8609c1a5022a3e374c84b5b1e65b20d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 168,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant74ced494f681745c0363e3b9817cd01ded22318547672c8d8dbe9fdea0ce3485.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f040e83a3d5b23cee90e02551f315056cbe55cc2f0d33509a682c0db6c0f668",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant74ced494f681745c0363e3b9817cd01ded22318547672c8d8dbe9fdea0ce3485.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f982577-0a70-f1ea-fb8f-59510135b2a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–181.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant74ced494f681745c0363e3b9817cd01ded22318547672c8d8dbe9fdea0ce3485.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant74ced494f681745c0363e3b9817cd01ded22318547672c8d8dbe9fdea0ce3485.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `367fc0db8609c1a5022a3e374c84b5b1e65b20d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
