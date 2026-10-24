# pushforward_union

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df72dfe2-643e-9e1a-d0cc-956529873de1",
  "kind": "theorem",
  "lexical_name": "pushforward_union",
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
  "slug": "pushforward-union--ec8d1bbc786402ece5d34c11",
  "source": {
    "blob": "38a65be3fab9dc6ea5073d1d12f1ebb953f9950c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 463,
    "line": 459,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant65af240408c94176329dd214d2294a911d8e210137085a4d04f2750f957f41eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec8d1bbc786402ece5d34c11eb8c57f1682a5399b57a0f9161ade52f3c0a9238",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant65af240408c94176329dd214d2294a911d8e210137085a4d04f2750f957f41eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df72dfe2-643e-9e1a-d0cc-956529873de1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 459–463.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pushforward_union {f : Y ⟶ X} (S R : Sieve Y) :
    (S ⊔ R).pushforward f = S.pushforward f ⊔ R.pushforward f :=
  (galoisConnection f).l_sup

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant65af240408c94176329dd214d2294a911d8e210137085a4d04f2750f957f41eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant65af240408c94176329dd214d2294a911d8e210137085a4d04f2750f957f41eb.lean#L459).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38a65be3fab9dc6ea5073d1d12f1ebb953f9950c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
