# det_of_mem_unitary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd8ea43e-a522-6096-4f40-a76905c16deb",
  "kind": "theorem",
  "lexical_name": "det_of_mem_unitary",
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
  "slug": "det-of-mem-unitary--a8271d4e4e5a50169a0e6f88",
  "source": {
    "blob": "6ef947b4246a5bf0e0f587ce002a77156e8cf70a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 79,
    "path": "GRWTSK/Algebra/LinearAlgebra/UnitaryGroup/Variant822fe2da1c257d36501e2d0c3654fbcbfd626859c6da6a97a5fcdb4449b94ac2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8271d4e4e5a50169a0e6f885dce61844c939edfb04de048cc946b0a1c74f301",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/UnitaryGroup/Variant822fe2da1c257d36501e2d0c3654fbcbfd626859c6da6a97a5fcdb4449b94ac2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd8ea43e-a522-6096-4f40-a76905c16deb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_of_mem_unitary {A : Matrix n n α} (hA : A ∈ Matrix.unitaryGroup n α) :
    A.det ∈ unitary α := by
  constructor
  · simpa [star, det_transpose] using congr_arg det hA.1
  · simpa [star, det_transpose] using congr_arg det hA.2

namespace UnitaryGroup

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/UnitaryGroup/Variant822fe2da1c257d36501e2d0c3654fbcbfd626859c6da6a97a5fcdb4449b94ac2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/UnitaryGroup/Variant822fe2da1c257d36501e2d0c3654fbcbfd626859c6da6a97a5fcdb4449b94ac2.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ef947b4246a5bf0e0f587ce002a77156e8cf70a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
