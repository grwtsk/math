# MulRingNorm_nat_le_nat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cfc3772f-ebc5-a046-5a15-bd8aa0480086",
  "kind": "lemma",
  "lexical_name": "MulRingNorm_nat_le_nat",
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
  "slug": "mulringnorm-nat-le-nat--2f0b842b2e10870423c429ba",
  "source": {
    "blob": "de8cfe152a7a5fd6b9a16a22c181323831adc692",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 487,
    "line": 474,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RingSeminorm/Variantc9ee30800d1bae61708dcd32df8cedca61d786d8039aeb4c34e8a04b922fc6bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f0b842b2e10870423c429ba60c109408ade2e5111b882f8bc2d502ac9d67f8d",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RingSeminorm/Variantc9ee30800d1bae61708dcd32df8cedca61d786d8039aeb4c34e8a04b922fc6bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cfc3772f-ebc5-a046-5a15-bd8aa0480086`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 474–487.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma MulRingNorm_nat_le_nat {R : Type*} [Ring R] (n : ℕ) (f : MulRingNorm R) : f n ≤ n := by
  induction n with
  | zero => simp only [Nat.cast_zero, map_zero, le_refl]
  | succ n hn =>
    simp only [Nat.cast_succ]
    calc
      f (n + 1) ≤ f (n) + f 1 := f.add_le' ↑n 1
      _ = f (n) + 1 := by rw [map_one]
      _ ≤ n + 1 := add_le_add_right hn 1

open Int

/-- A multiplicative norm composed with the absolute value on integers equals the norm itself. -/
@[deprecated "Use AbsoluteValue.apply_natAbs_eq instead" (since := "2025-01-07")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RingSeminorm/Variantc9ee30800d1bae61708dcd32df8cedca61d786d8039aeb4c34e8a04b922fc6bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RingSeminorm/Variantc9ee30800d1bae61708dcd32df8cedca61d786d8039aeb4c34e8a04b922fc6bb.lean#L474).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de8cfe152a7a5fd6b9a16a22c181323831adc692` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
