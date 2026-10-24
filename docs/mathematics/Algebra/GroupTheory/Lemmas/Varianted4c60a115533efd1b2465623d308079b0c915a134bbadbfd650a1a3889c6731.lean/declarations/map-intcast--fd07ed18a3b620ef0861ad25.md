# map_intCast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:16fa9a55-bbd9-ea97-fa28-848867f260dc",
  "kind": "theorem",
  "lexical_name": "map_intCast",
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
  "slug": "map-intcast--fd07ed18a3b620ef0861ad25",
  "source": {
    "blob": "6e91b7bd2c4f7c44d8f0023df4d50839f0d3c674",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 328,
    "line": 323,
    "path": "GRWTSK/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd07ed18a3b620ef0861ad2543a1daea6e6181ab00d46f759d435d9d0770b6ca",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16fa9a55-bbd9-ea97-fa28-848867f260dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–328.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_intCast [RingHomClass F α β] (f : F) (n : ℤ) : f n = n :=
  eq_intCast ((f : α →+* β).comp (Int.castRingHom α)) n
#align map_int_cast map_intCast

namespace RingHom

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e91b7bd2c4f7c44d8f0023df4d50839f0d3c674` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
