# lex_le_iff_of_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc08304f-30c2-2f9c-48c2-4b67f0e74de8",
  "kind": "theorem",
  "lexical_name": "lex_le_iff_of_unique",
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
  "slug": "lex-le-iff-of-unique--839e732bb0576f4cbb6dd562",
  "source": {
    "blob": "e772e3179746e9dc8c3485e903ad0bfd148982c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 123,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantd807bc179a204096f604c4863d4c49a201250c085067f739c71968810f6b25ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:839e732bb0576f4cbb6dd56257afaefa13c0972aca6c2c42c31ad1f457d87ea9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantd807bc179a204096f604c4863d4c49a201250c085067f739c71968810f6b25ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc08304f-30c2-2f9c-48c2-4b67f0e74de8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lex_le_iff_of_unique [Unique α] {a b : Lex (α →₀ N)} :
    a ≤ b ↔ ofLex a default ≤ ofLex b default := by
  simp only [le_iff_eq_or_lt, EmbeddingLike.apply_eq_iff_eq]
  apply or_congr _ lex_lt_iff_of_unique
  conv_lhs => rw [← toLex_ofLex a, ← toLex_ofLex b, toLex_inj]
  simp only [Finsupp.ext_iff, Unique.forall_iff]

end NHasZero

section Covariants

variable [LinearOrder α] [AddMonoid N] [LinearOrder N]

/-!  We are about to sneak in a hypothesis that might appear to be too strong.
We assume `AddLeftStrictMono` (covariant with *strict* inequality `<`) also when proving the one
with the *weak* inequality `≤`.  This is actually necessary: addition on `Lex (α →₀ N)` may fail to
be monotone, when it is "just" monotone on `N`.

See `Counterexamples/ZeroDivisorsInAddMonoidAlgebras.lean` for a counterexample. -/


section Left

variable [AddLeftStrictMono N]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantd807bc179a204096f604c4863d4c49a201250c085067f739c71968810f6b25ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantd807bc179a204096f604c4863d4c49a201250c085067f739c71968810f6b25ad.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e772e3179746e9dc8c3485e903ad0bfd148982c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
