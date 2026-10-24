# reflection_reflection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:45a23326-d2fc-27ec-741a-244ab16535ab",
  "kind": "theorem",
  "lexical_name": "reflection_reflection",
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
  "slug": "reflection-reflection--7950a3af9f4d061f4cbe8fa0",
  "source": {
    "blob": "9e0bb95bd0e70c01a34341ae30299a7a56af087e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 729,
    "line": 725,
    "path": "GRWTSK/Algebra/LinearAlgebra/Projection/Variant08c81accbde45fec64d74161be521996a64bbc44f120e66c4e1f5f4a2801ba63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7950a3af9f4d061f4cbe8fa09b139955b910e708397fbf7d740eafea45cca734",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Projection/Variant08c81accbde45fec64d74161be521996a64bbc44f120e66c4e1f5f4a2801ba63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45a23326-d2fc-27ec-741a-244ab16535ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 725–729.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reflection_reflection (p : E) : reflection K (reflection K p) = p :=
  (reflection K).left_inv p
#align reflection_reflection reflection_reflection

/-- Reflection is involutive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Projection/Variant08c81accbde45fec64d74161be521996a64bbc44f120e66c4e1f5f4a2801ba63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Projection/Variant08c81accbde45fec64d74161be521996a64bbc44f120e66c4e1f5f4a2801ba63.lean#L725).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e0bb95bd0e70c01a34341ae30299a7a56af087e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
