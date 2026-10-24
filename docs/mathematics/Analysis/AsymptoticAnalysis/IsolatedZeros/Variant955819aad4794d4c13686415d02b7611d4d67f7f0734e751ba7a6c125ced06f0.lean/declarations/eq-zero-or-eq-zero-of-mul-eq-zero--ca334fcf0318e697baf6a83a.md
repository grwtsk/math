# eq_zero_or_eq_zero_of_mul_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ccf500a2-ab44-e8f4-135c-a722305e75b3",
  "kind": "lemma",
  "lexical_name": "eq_zero_or_eq_zero_of_mul_eq_zero",
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
  "slug": "eq-zero-or-eq-zero-of-mul-eq-zero--ca334fcf0318e697baf6a83a",
  "source": {
    "blob": "d16050821aedfcb0aae8d954d325f0233bd19f99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 324,
    "line": 308,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant955819aad4794d4c13686415d02b7611d4d67f7f0734e751ba7a6c125ced06f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca334fcf0318e697baf6a83a7da3c53b616e300ecb2b8c061ae9c38b31222e96",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant955819aad4794d4c13686415d02b7611d4d67f7f0734e751ba7a6c125ced06f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ccf500a2-ab44-e8f4-135c-a722305e75b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 308–324.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_zero_or_eq_zero_of_mul_eq_zero [NoZeroDivisors A]
    {f g : 𝕜 → A} (hf : AnalyticOnNhd 𝕜 f U) (hg : AnalyticOnNhd 𝕜 g U)
    (hfg : ∀ z ∈ U, f z * g z = 0) (hU : IsPreconnected U) :
    (∀ z ∈ U, f z = 0) ∨ (∀ z ∈ U, g z = 0) :=
  eq_zero_or_eq_zero_of_smul_eq_zero hf hg hfg hU

end Mul
end AnalyticOnNhd

/-!
### Preimages of codiscrete sets
-/

section PreimgCodiscrete

/-- Preimages of codiscrete sets, local version: if `f` is analytic at `x` and not locally constant,
then the preimage of any punctured neighbourhood of `f x` is a punctured neighbourhood of `x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant955819aad4794d4c13686415d02b7611d4d67f7f0734e751ba7a6c125ced06f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant955819aad4794d4c13686415d02b7611d4d67f7f0734e751ba7a6c125ced06f0.lean#L308).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d16050821aedfcb0aae8d954d325f0233bd19f99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
