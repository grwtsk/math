# instLawfulUpwardEnumerable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:24642daf4c68977cace90802b3ba09fdfabf4c3ff37146b746078e4573c991ed",
  "kind": "instance",
  "lexical_name": "instLawfulUpwardEnumerable",
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
  "slug": "instlawfulupwardenumerable--27e6a1f8be6525202527ab33",
  "source": {
    "blob": "b6a5aba53a79b4d3c907db3ecd8e528e32481fdf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 88,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant59bf15f161bd623a4a132d91a1925c891c3e72bcfcfb87506144e890c4c2c25c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:27e6a1f8be6525202527ab33e1f28fb985e943b980e792cdc7d82b475f2d27c2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant59bf15f161bd623a4a132d91a1925c891c3e72bcfcfb87506144e890c4c2c25c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:24642daf4c68977cace90802b3ba09fdfabf4c3ff37146b746078e4573c991ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
scoped instance instLawfulUpwardEnumerable [m : HasModel α β] :
    LawfulUpwardEnumerable α where
  ne_of_lt x y := by
    rw [m.lt_iff, ne_eq, ← m.encode_inj]
    apply LawfulUpwardEnumerable.ne_of_lt
  succMany?_zero x := by
    rw [← Option.map_inj_right eq_of_encode_eq, ← succMany?_encode, Option.map_some]
    apply LawfulUpwardEnumerable.succMany?_zero
  succMany?_add_one n x := by
    rw [← Option.map_inj_right eq_of_encode_eq, ← succMany?_encode, Option.map_bind,
      Function.comp_def]
    simp only [← succ?_encode]
    rw [← Function.comp_def, ← Option.bind_map, ← succMany?_encode (n' := n),
      LawfulUpwardEnumerable.succMany?_add_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant59bf15f161bd623a4a132d91a1925c891c3e72bcfcfb87506144e890c4c2c25c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant59bf15f161bd623a4a132d91a1925c891c3e72bcfcfb87506144e890c4c2c25c.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6a5aba53a79b4d3c907db3ecd8e528e32481fdf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
