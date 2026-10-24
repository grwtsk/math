# leOnePart_min

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b1ea01d-f139-7f8a-b156-eb4b88d0324e",
  "kind": "lemma",
  "lexical_name": "leOnePart_min",
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
  "slug": "leonepart-min--18ccc69165aec4ce34c69889",
  "source": {
    "blob": "860c272ea57fd377d654c77c59686b41c440d69b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 193,
    "path": "GRWTSK/Algebra/UniversalAlgebra/PosPart/Variante544301b2675a6ee2d51cd2924751390ee6bd7c6e260df38365d75cc0ff3b42b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18ccc69165aec4ce34c69889159e97dd83fecd2824619dc81257f574efc114fc",
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

Occurrence: `result:4b1ea01d-f139-7f8a-b156-eb4b88d0324e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[to_additive] lemma leOnePart_min (a b : α) : (min a b)⁻ᵐ = max a⁻ᵐ b⁻ᵐ := by
  simp [leOnePart, inv_inf, sup_sup_distrib_right]

end MulRightMono

end MulLeftMono

end Group

section CommGroup
variable [CommGroup α] [MulLeftMono α]

-- Bourbaki A.VI.12 (with a and b swapped)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/PosPart/Variante544301b2675a6ee2d51cd2924751390ee6bd7c6e260df38365d75cc0ff3b42b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/PosPart/Variante544301b2675a6ee2d51cd2924751390ee6bd7c6e260df38365d75cc0ff3b42b.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `860c272ea57fd377d654c77c59686b41c440d69b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
