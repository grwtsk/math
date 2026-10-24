# mapDomainAddEquiv_trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12b88912-b10a-1314-45f4-3bab5484232d",
  "kind": "lemma",
  "lexical_name": "mapDomainAddEquiv_trans",
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
  "slug": "mapdomainaddequiv-trans--5526747dd127041058041362",
  "source": {
    "blob": "b7440d7740f2bd4bdd004051074fccd2042c92f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 228,
    "path": "GRWTSK/Algebra/GroupTheory/MapDomain/Variant62f1ceff9046d257493223d13460e80bfd6c9dae1d9de9738f797f3e4fb0319d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5526747dd1270410580413622570835fcb60f138f48dbdb4fb5a514aee4ad853",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/MapDomain/Variant62f1ceff9046d257493223d13460e80bfd6c9dae1d9de9738f797f3e4fb0319d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12b88912-b10a-1314-45f4-3bab5484232d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mapDomainAddEquiv_trans (e₁ : M ≃ N) (e₂ : N ≃ O) :
    mapDomainAddEquiv R (e₁.trans e₂) =
      (mapDomainAddEquiv R e₁).trans (mapDomainAddEquiv R e₂) := by ext; simp

variable (M) in
/-- Additively isomorphic rings have additively isomorphic monoid algebras.

`MonoidAlgebra.map` as an `AddEquiv`. -/
@[to_additive (dont_translate := R S)
/-- Additively isomorphic rings have additively isomorphic additive monoid algebras.

`AddMonoidAlgebra.map` as an `AddEquiv`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/MapDomain/Variant62f1ceff9046d257493223d13460e80bfd6c9dae1d9de9738f797f3e4fb0319d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/MapDomain/Variant62f1ceff9046d257493223d13460e80bfd6c9dae1d9de9738f797f3e4fb0319d.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7440d7740f2bd4bdd004051074fccd2042c92f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
