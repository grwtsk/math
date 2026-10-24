# mono_of_mono_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:06342000-952f-e987-fe9a-5a7ccba0796e",
  "kind": "theorem",
  "lexical_name": "mono_of_mono_right",
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
  "slug": "mono-of-mono-right--d2381a10c984ba464793f165",
  "source": {
    "blob": "23f10e5b89c71e92c7397ded8f9ec69cea66af85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 695,
    "line": 686,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant95cf3b65866bd9c47cb068af642517acbe2f603179d7de2d17265a87f13ed7f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2381a10c984ba464793f16537f8bc20f15a55ae988fc46147308b4f1b0fc1a9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant95cf3b65866bd9c47cb068af642517acbe2f603179d7de2d17265a87f13ed7f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06342000-952f-e987-fe9a-5a7ccba0796e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 686–695.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mono_of_mono_right {f g : Under X} (k : f ⟶ g) [hk : Mono k.right] : Mono k :=
  (forget X).mono_of_mono_map hk

/--
If `k.right` is an epimorphism, then `k` is an epimorphism. In other words, `Under.forget X`
reflects epimorphisms.
The converse of `CategoryTheory.Under.epi_right_of_epi`.

This lemma is not an instance, to avoid loops in type class inference.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant95cf3b65866bd9c47cb068af642517acbe2f603179d7de2d17265a87f13ed7f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant95cf3b65866bd9c47cb068af642517acbe2f603179d7de2d17265a87f13ed7f1.lean#L686).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23f10e5b89c71e92c7397ded8f9ec69cea66af85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
