# exists_signed_sum'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:45fae761-2021-bb1f-d7f3-694224b529ba",
  "kind": "theorem",
  "lexical_name": "exists_signed_sum'",
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
  "slug": "exists-signed-sum--4a2906aab09a76eac30bf6bd",
  "source": {
    "blob": "367fc0db8609c1a5022a3e374c84b5b1e65b20d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 193,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant74ced494f681745c0363e3b9817cd01ded22318547672c8d8dbe9fdea0ce3485.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a2906aab09a76eac30bf6bd904822a8d0adfcae1e8ebfb3142a5fd3987a08f7",
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

Occurrence: `result:45fae761-2021-bb1f-d7f3-694224b529ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_signed_sum' [Nonempty α] [DecidableEq α] (s : Finset α) (f : α → ℤ)
    (n : ℕ) (h : (∑ i ∈ s, (f i).natAbs) ≤ n) :
    ∃ (β : Type u) (_ : Fintype β) (sgn : β → SignType) (g : β → α),
      (∀ b, g b ∉ s → sgn b = 0) ∧
        Fintype.card β = n ∧ ∀ a ∈ s, (∑ i, if g i = a then (sgn i : ℤ) else 0) = f a := by
  obtain ⟨β, _, sgn, g, hg, hβ, hf⟩ := exists_signed_sum s f
  refine
    ⟨β ⊕ (Fin (n - ∑ i ∈ s, (f i).natAbs)), inferInstance, Sum.elim sgn 0,
      Sum.elim g (Classical.arbitrary (Fin (n - Finset.sum s fun i => Int.natAbs (f i)) → α)),
        ?_, by simp [hβ, h], fun a ha => by simp [hf _ ha]⟩
  rintro (b | b) hb
  · cases hb (hg _)
  · rfl

end exists_signed_sum
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant74ced494f681745c0363e3b9817cd01ded22318547672c8d8dbe9fdea0ce3485.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant74ced494f681745c0363e3b9817cd01ded22318547672c8d8dbe9fdea0ce3485.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `367fc0db8609c1a5022a3e374c84b5b1e65b20d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
