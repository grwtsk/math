# mabs_mul_eq_oneLePart_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7c5ffa7e-b139-3152-1438-2d9ed5171d92",
  "kind": "lemma",
  "lexical_name": "mabs_mul_eq_oneLePart_sq",
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
  "slug": "mabs-mul-eq-onelepart-sq--f704e5110f7fd342b912672b",
  "source": {
    "blob": "860c272ea57fd377d654c77c59686b41c440d69b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 220,
    "path": "GRWTSK/Algebra/UniversalAlgebra/PosPart/Variante544301b2675a6ee2d51cd2924751390ee6bd7c6e260df38365d75cc0ff3b42b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f704e5110f7fd342b912672bca423bb7a1d4d72c6768658e9773df786a1a1edb",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/PosPart/Variante544301b2675a6ee2d51cd2924751390ee6bd7c6e260df38365d75cc0ff3b42b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c5ffa7e-b139-3152-1438-2d9ed5171d92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mabs_mul_eq_oneLePart_sq (a : α) : |a|ₘ * a = a⁺ᵐ ^ 2 := by
  rw [sq, ← mul_mul_div_cancel a⁺ᵐ, oneLePart_mul_leOnePart, oneLePart_div_leOnePart]

@[to_additive add_abs_eq_two_nsmul_posPart]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/PosPart/Variante544301b2675a6ee2d51cd2924751390ee6bd7c6e260df38365d75cc0ff3b42b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/PosPart/Variante544301b2675a6ee2d51cd2924751390ee6bd7c6e260df38365d75cc0ff3b42b.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `860c272ea57fd377d654c77c59686b41c440d69b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
