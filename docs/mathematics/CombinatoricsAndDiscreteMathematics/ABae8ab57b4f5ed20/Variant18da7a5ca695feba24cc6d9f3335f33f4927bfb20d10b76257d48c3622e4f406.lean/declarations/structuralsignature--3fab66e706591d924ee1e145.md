# StructuralSignature

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ed1f054750168accb5816e0f4b7d9dd3087a9d85f08f8f3fc177810b76ae4235",
  "kind": "structure",
  "lexical_name": "StructuralSignature",
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
  "slug": "structuralsignature--3fab66e706591d924ee1e145",
  "source": {
    "blob": "8a113fa6ef4aa92ab866f90877de434d11d94cb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 17,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ABae8ab57b4f5ed20/Variant18da7a5ca695feba24cc6d9f3335f33f4927bfb20d10b76257d48c3622e4f406.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3fab66e706591d924ee1e14512e54766520657a7205e3258bba551908e4c86dd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ABae8ab57b4f5ed20/Variant18da7a5ca695feba24cc6d9f3335f33f4927bfb20d10b76257d48c3622e4f406.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ed1f054750168accb5816e0f4b7d9dd3087a9d85f08f8f3fc177810b76ae4235`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure StructuralSignature where
  SortType : Type u
  Relation : Type v
  sortFintype : Fintype SortType
  sortDecidableEq : DecidableEq SortType
  relationFintype : Fintype Relation
  relationDecidableEq : DecidableEq Relation
  arity : Relation → Nat
  version : Nat

end Mathematics.Projection
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ABae8ab57b4f5ed20/Variant18da7a5ca695feba24cc6d9f3335f33f4927bfb20d10b76257d48c3622e4f406.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ABae8ab57b4f5ed20/Variant18da7a5ca695feba24cc6d9f3335f33f4927bfb20d10b76257d48c3622e4f406.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a113fa6ef4aa92ab866f90877de434d11d94cb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
