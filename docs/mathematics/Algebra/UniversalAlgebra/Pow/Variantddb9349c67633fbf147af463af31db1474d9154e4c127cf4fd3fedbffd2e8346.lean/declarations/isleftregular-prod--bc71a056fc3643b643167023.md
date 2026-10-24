# IsLeftRegular.prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b69267cf-2f46-363a-9fdd-5aadf8103190",
  "kind": "lemma",
  "lexical_name": "IsLeftRegular.prod",
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
  "slug": "isleftregular-prod--bc71a056fc3643b643167023",
  "source": {
    "blob": "6ebd27cf45c9d623b5c997885a0e0f393554c448",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 36,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Pow/Variantddb9349c67633fbf147af463af31db1474d9154e4c127cf4fd3fedbffd2e8346.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc71a056fc3643b643167023716f43c92aec292c0642b8dd123376caeeede4fa",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Pow/Variantddb9349c67633fbf147af463af31db1474d9154e4c127cf4fd3fedbffd2e8346.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b69267cf-2f46-363a-9fdd-5aadf8103190`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsLeftRegular.prod (h : ∀ i ∈ s, IsLeftRegular (f i)) :
    IsLeftRegular (∏ i ∈ s, f i) :=
  s.prod_induction _ _ (@IsLeftRegular.mul R _) isRegular_one.left h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Pow/Variantddb9349c67633fbf147af463af31db1474d9154e4c127cf4fd3fedbffd2e8346.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Pow/Variantddb9349c67633fbf147af463af31db1474d9154e4c127cf4fd3fedbffd2e8346.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ebd27cf45c9d623b5c997885a0e0f393554c448` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
