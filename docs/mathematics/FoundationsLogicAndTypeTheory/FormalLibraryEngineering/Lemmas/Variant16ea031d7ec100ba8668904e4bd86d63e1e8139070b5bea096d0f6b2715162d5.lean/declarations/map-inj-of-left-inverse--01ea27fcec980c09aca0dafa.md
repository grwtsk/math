# map_inj_of_left_inverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:de880512-0ee2-49a8-05c0-c13e3e665b51",
  "kind": "theorem",
  "lexical_name": "map_inj_of_left_inverse",
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
  "slug": "map-inj-of-left-inverse--01ea27fcec980c09aca0dafa",
  "source": {
    "blob": "fd4134f0947767d6ea0e630bc0bfcdd7578d82d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 25,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant16ea031d7ec100ba8668904e4bd86d63e1e8139070b5bea096d0f6b2715162d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01ea27fcec980c09aca0dafa3a38e191b9b2c8813193ae87df16e7bfdfcf34bd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant16ea031d7ec100ba8668904e4bd86d63e1e8139070b5bea096d0f6b2715162d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de880512-0ee2-49a8-05c0-c13e3e665b51`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_inj_of_left_inverse [Functor m] [LawfulFunctor m] {f : α → β}
    (w : ∃ g : β → α, ∀ x, g (f x) = x) {x y : m α} :
    f <$> x = f <$> y ↔ x = y := by
  constructor
  · intro h
    rcases w with ⟨g, w⟩
    replace h := congrArg (g <$> ·) h
    simpa [w] using h
  · rintro rfl
    rfl

-- Mapping by an injective function is injective, as long as the domain is nonempty.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant16ea031d7ec100ba8668904e4bd86d63e1e8139070b5bea096d0f6b2715162d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant16ea031d7ec100ba8668904e4bd86d63e1e8139070b5bea096d0f6b2715162d5.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd4134f0947767d6ea0e630bc0bfcdd7578d82d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
