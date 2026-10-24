# control

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1456ebc99b757f6026cfa5e49e59566753980cdfa0640af5632238a4d8697bdf",
  "kind": "def",
  "lexical_name": "control",
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
  "slug": "control--c683653dafb8fd68962cab53",
  "source": {
    "blob": "0086ae6fc157d38e8c76d36224bbd352c692cdc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 413,
    "line": 400,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantca90daf1426a8f446d2dc103d8e5bc18450fc95dc019d4f414549998a77ddfca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c683653dafb8fd68962cab5384c9deb081e7a10a517886f3382100a2cb24dc01",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantca90daf1426a8f446d2dc103d8e5bc18450fc95dc019d4f414549998a77ddfca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1456ebc99b757f6026cfa5e49e59566753980cdfa0640af5632238a4d8697bdf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 400–413.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def control {m : Type u → Type v} {n : Type u → Type w} [MonadControlT m n] [Bind n] {α : Type u}
    (f : ({β : Type u} → n β → m (stM m n β)) → m (stM m n α)) : n α :=
  controlAt m f

/--
Overloaded monadic iteration over some container type.

An instance of `ForM m γ α` describes how to iterate a monadic operator over a container of type `γ`
with elements of type `α` in the monad `m`. The element type should be uniquely determined by the
monad and the container.

Use `ForM.forIn` to construct a `ForIn` instance from a `ForM` instance, thus enabling the use of
the `for` operator in `do`-notation.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantca90daf1426a8f446d2dc103d8e5bc18450fc95dc019d4f414549998a77ddfca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantca90daf1426a8f446d2dc103d8e5bc18450fc95dc019d4f414549998a77ddfca.lean#L400).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0086ae6fc157d38e8c76d36224bbd352c692cdc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
