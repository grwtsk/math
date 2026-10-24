# absNorm_eq_pow_inertiaDeg'_of_liesOver

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e5feb27-f109-55cc-2fa7-6498bc458b2c",
  "kind": "lemma",
  "lexical_name": "absNorm_eq_pow_inertiaDeg'_of_liesOver",
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
  "slug": "absnorm-eq-pow-inertiadeg-of-liesover--e3c6725d117d951ec9de8e19",
  "source": {
    "blob": "af930d3c87d4b1a9bd8ab37a133629e090009e03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 182,
    "path": "GRWTSK/Algebra/Inertia/Variantc25136e125b4e59a819e7fed3fe43e9a974bdf49331fb30b2f28a0b0bdaa9bbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3c6725d117d951ec9de8e196ab0e4be12a6b27cf8b3bc786919f95fa94d78a9",
  "verification": {
    "reference": "docs/verification/Algebra/Inertia/Variantc25136e125b4e59a819e7fed3fe43e9a974bdf49331fb30b2f28a0b0bdaa9bbe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e5feb27-f109-55cc-2fa7-6498bc458b2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma absNorm_eq_pow_inertiaDeg'_of_liesOver {S : Type*} [CommRing S] [IsDedekindDomain S]
    [Infinite S] [IsDedekindDomain R] [Infinite R] [Algebra S R] [Module.Finite S R]
    (P : Ideal R) (p : Ideal S) [P.LiesOver p] (hp : p.IsPrime) (hp_ne_bot : p ≠ ⊥) :
    absNorm P = absNorm p ^ (p.inertiaDeg' P) := by
  have : p.IsMaximal := hp.isMaximal hp_ne_bot
  simpa [absNorm_apply, Submodule.cardQuot_apply] using Module.natCard_eq_pow_finrank (K := S ⧸ p)

@[deprecated (since := "2026-07-03")] alias absNorm_eq_pow_inertiaDeg_of_liesOver :=
  absNorm_eq_pow_inertiaDeg'_of_liesOver

/-- The absolute norm of an ideal `P` above a rational prime `p` is
`|p| ^ ((span {p}).inertiaDeg' P)`.
See `absNorm_eq_pow_inertiaDeg'` for a version with `p` of type `ℕ`. -/
-- The assumption `Module.Free ℤ` has been replaced by `Infinite`: it should hold
-- automatically in all cases; if not, the corresponding instance should be added.
@[deprecated "Use `Ideal.natAbs_pow_inertiaDeg` instead." (since := "2026-08-14")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Inertia/Variantc25136e125b4e59a819e7fed3fe43e9a974bdf49331fb30b2f28a0b0bdaa9bbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Inertia/Variantc25136e125b4e59a819e7fed3fe43e9a974bdf49331fb30b2f28a0b0bdaa9bbe.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af930d3c87d4b1a9bd8ab37a133629e090009e03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
