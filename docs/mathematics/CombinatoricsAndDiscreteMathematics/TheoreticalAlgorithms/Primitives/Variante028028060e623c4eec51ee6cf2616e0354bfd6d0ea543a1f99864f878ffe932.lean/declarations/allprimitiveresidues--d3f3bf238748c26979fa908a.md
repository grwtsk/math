# allPrimitiveResidues

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:21a0bf7ea072c537415b8061cc4b8ff509f94b269f903f28b760096ce4195afe",
  "kind": "def",
  "lexical_name": "allPrimitiveResidues",
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
  "slug": "allprimitiveresidues--d3f3bf238748c26979fa908a",
  "source": {
    "blob": "653e1e12e043fb7081d00abf1ae5ef059c918544",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1533,
    "line": 1531,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Primitives/Variante028028060e623c4eec51ee6cf2616e0354bfd6d0ea543a1f99864f878ffe932.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d3f3bf238748c26979fa908ac9534390cb51c86655165ca24a1d1349990ca957",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Primitives/Variante028028060e623c4eec51ee6cf2616e0354bfd6d0ea543a1f99864f878ffe932.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:21a0bf7ea072c537415b8061cc4b8ff509f94b269f903f28b760096ce4195afe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1531–1533.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def allPrimitiveResidues : List Think.Residue :=
  allPrimitives.map primitiveResidue

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Primitives/Variante028028060e623c4eec51ee6cf2616e0354bfd6d0ea543a1f99864f878ffe932.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Primitives/Variante028028060e623c4eec51ee6cf2616e0354bfd6d0ea543a1f99864f878ffe932.lean#L1531).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `653e1e12e043fb7081d00abf1ae5ef059c918544` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
