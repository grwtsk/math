# commRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a869c4a07b19612f65e1771351f0a8cf0ff25132e723dfc305f6c91bc2b85776",
  "kind": "instance",
  "lexical_name": "commRing",
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
  "slug": "commring--c23b0a481b361b75dab059da",
  "source": {
    "blob": "e6c89a97f272686cbeaeb51cc006a1c728a3fa65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 140,
    "path": "GRWTSK/Algebra/ULift/Variant862bc9882cf0778774a23e839c8d4f3df45482f7f2d9f5b40ada725b4954357d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c23b0a481b361b75dab059dad5ab4207d58cc60e6d7d442e2244da3d9fd245c0",
  "verification": {
    "reference": "docs/verification/Algebra/ULift/Variant862bc9882cf0778774a23e839c8d4f3df45482f7f2d9f5b40ada725b4954357d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a869c4a07b19612f65e1771351f0a8cf0ff25132e723dfc305f6c91bc2b85776`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance commRing [CommRing R] : CommRing (ULift R) :=
  { ULift.ring with mul_comm }

end ULift
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ULift/Variant862bc9882cf0778774a23e839c8d4f3df45482f7f2d9f5b40ada725b4954357d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ULift/Variant862bc9882cf0778774a23e839c8d4f3df45482f7f2d9f5b40ada725b4954357d.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6c89a97f272686cbeaeb51cc006a1c728a3fa65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
