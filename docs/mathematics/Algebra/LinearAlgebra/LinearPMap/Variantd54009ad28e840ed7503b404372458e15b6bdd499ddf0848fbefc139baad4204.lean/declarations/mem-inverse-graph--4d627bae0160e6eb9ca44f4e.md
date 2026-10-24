# mem_inverse_graph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e5fbebd-382b-621d-0554-45e0135b99d7",
  "kind": "theorem",
  "lexical_name": "mem_inverse_graph",
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
  "slug": "mem-inverse-graph--4d627bae0160e6eb9ca44f4e",
  "source": {
    "blob": "921f976728691f37149f3c20eaccdd145dab4a72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1096,
    "line": 1094,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearPMap/Variantd54009ad28e840ed7503b404372458e15b6bdd499ddf0848fbefc139baad4204.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d627bae0160e6eb9ca44f4eb81a08ee1144a98c31005456b4845a2c66816090",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearPMap/Variantd54009ad28e840ed7503b404372458e15b6bdd499ddf0848fbefc139baad4204.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e5fbebd-382b-621d-0554-45e0135b99d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1094–1096.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_inverse_graph (hf : f.ker = ⊥) (x : f.domain) : (f x, (x : E)) ∈ f.inverse.graph := by
  simp [inverse_graph hf]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearPMap/Variantd54009ad28e840ed7503b404372458e15b6bdd499ddf0848fbefc139baad4204.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearPMap/Variantd54009ad28e840ed7503b404372458e15b6bdd499ddf0848fbefc139baad4204.lean#L1094).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `921f976728691f37149f3c20eaccdd145dab4a72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
