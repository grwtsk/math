# sourceAtomFintype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:31a024b3d7ee0f2fc3a2a0eb06c2234ee9405beca7ac075f0fab75552310f044",
  "kind": "instance",
  "lexical_name": "sourceAtomFintype",
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
  "slug": "sourceatomfintype--2272c54029433e083f842fc8",
  "source": {
    "blob": "57e21e72770a08a8b34e7633d3ccb21cb0820114",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 115,
    "path": "GRWTSK/Algebra/LinearAlgebra/C018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1MangoldtMobiusJa/Variant46d32f14f1eb265476b46a84704b3cd1c7522055bcc1170dea27c7feb1233d36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2272c54029433e083f842fc8cd943528aab923a2ded0e6beed103e539234a363",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/C018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1MangoldtMobiusJa/Variant46d32f14f1eb265476b46a84704b3cd1c7522055bcc1170dea27c7feb1233d36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:31a024b3d7ee0f2fc3a2a0eb06c2234ee9405beca7ac075f0fab75552310f044`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance sourceAtomFintype (A : ℝ) : Fintype (SourceAtom A) := by
  unfold SourceAtom
  infer_instance

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/C018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1MangoldtMobiusJa/Variant46d32f14f1eb265476b46a84704b3cd1c7522055bcc1170dea27c7feb1233d36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/C018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1MangoldtMobiusJa/Variant46d32f14f1eb265476b46a84704b3cd1c7522055bcc1170dea27c7feb1233d36.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57e21e72770a08a8b34e7633d3ccb21cb0820114` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
