# spanNorm_mul_of_bot_or_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e661559d-244c-6a8b-88ff-aeb8aa21e738",
  "kind": "theorem",
  "lexical_name": "spanNorm_mul_of_bot_or_top",
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
  "slug": "spannorm-mul-of-bot-or-top--8976da4f77ee8c35ffc35958",
  "source": {
    "blob": "117d689eb4f609ae648664333824bcc5b33e5350",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 176,
    "path": "GRWTSK/Algebra/RelNorm/Variant22b32d89ba36ac476c587b650d900986a6524cc101e37f323586c481d270af71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8976da4f77ee8c35ffc35958d11ad9871a25473000d17db7bfd7c05931f7c74b",
  "verification": {
    "reference": "docs/verification/Algebra/RelNorm/Variant22b32d89ba36ac476c587b650d900986a6524cc101e37f323586c481d270af71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e661559d-244c-6a8b-88ff-aeb8aa21e738`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem spanNorm_mul_of_bot_or_top (eq_bot_or_top : ∀ I : Ideal R, I = ⊥ ∨ I = ⊤) (I J : Ideal S) :
    spanNorm R (I * J) = spanNorm R I * spanNorm R J := by
  refine le_antisymm ?_ (spanNorm_mul_spanNorm_le R _ _)
  rcases eq_bot_or_top (spanNorm R I) with hI | hI
  · rw [hI, spanNorm_eq_bot_iff.mp hI, bot_mul, spanNorm_bot]
    exact bot_le
  rw [hI, Ideal.top_mul]
  rcases eq_bot_or_top (spanNorm R J) with hJ | hJ
  · rw [hJ, spanNorm_eq_bot_iff.mp hJ, mul_bot, spanNorm_bot]
  rw [hJ]
  exact le_top

variable [IsDedekindDomain R] [IsDedekindDomain S]

/-- Multiplicativity of `Ideal.spanNorm`. simp-normal form is `map_mul (Ideal.relNorm R)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RelNorm/Variant22b32d89ba36ac476c587b650d900986a6524cc101e37f323586c481d270af71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RelNorm/Variant22b32d89ba36ac476c587b650d900986a6524cc101e37f323586c481d270af71.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `117d689eb4f609ae648664333824bcc5b33e5350` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
