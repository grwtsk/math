# span_singleton_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b818afd5-634a-ce95-c591-ae3d7193b326",
  "kind": "theorem",
  "lexical_name": "span_singleton_eq_top",
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
  "slug": "span-singleton-eq-top--30c0669d69976f4d900ab694",
  "source": {
    "blob": "90f481d3934327f882eb7fe9f4db9d4008738109",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 128,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant1960ceea8cde9bccb3f6ef84e1b78829abb31bc112921b9c14e3ef77b801b776.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30c0669d69976f4d900ab694d0a9cf0cd2f115e7a8f57d918d1ab0ad5a97d65b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant1960ceea8cde9bccb3f6ef84e1b78829abb31bc112921b9c14e3ef77b801b776.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b818afd5-634a-ce95-c591-ae3d7193b326`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem span_singleton_eq_top {m : M} (hm : m ≠ 0) : Submodule.span R {m} = ⊤ :=
  (eq_bot_or_eq_top _).resolve_left fun h ↦ hm (h.le <| Submodule.mem_span_singleton_self m)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant1960ceea8cde9bccb3f6ef84e1b78829abb31bc112921b9c14e3ef77b801b776.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant1960ceea8cde9bccb3f6ef84e1b78829abb31bc112921b9c14e3ef77b801b776.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90f481d3934327f882eb7fe9f4db9d4008738109` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
