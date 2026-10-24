# MulSubshift.languageOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a5f145311778ebb9c9c183dd42cddd40e616cbe73b25a0a355209cea97c350e4",
  "kind": "def",
  "lexical_name": "MulSubshift.languageOn",
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
  "slug": "mulsubshift-languageon--37e111981ab03eeec3730536",
  "source": {
    "blob": "31bbc053051c9712a6ce08dac692522a01c3a5b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 665,
    "line": 657,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant95f6a5dadfcadb5e45912b2fd8d0851f3e8dcdf2f18c72fcc055084317ede27d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:37e111981ab03eeec3730536c3f6516985b6b77780bb9fa98dd067639540c60e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant95f6a5dadfcadb5e45912b2fd8d0851f3e8dcdf2f18c72fcc055084317ede27d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a5f145311778ebb9c9c183dd42cddd40e616cbe73b25a0a355209cea97c350e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 657–665.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MulSubshift.languageOn {A G} [TopologicalSpace A] [Inhabited A] [Monoid G]
    (Y : MulSubshift A G) (U : Finset G) : Set (Pattern A G) :=
  SymbolicDynamics.FullShift.LanguageOn (A := A) (G := G) Y.carrier U

end Language

end FullShift

end SymbolicDynamics
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant95f6a5dadfcadb5e45912b2fd8d0851f3e8dcdf2f18c72fcc055084317ede27d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant95f6a5dadfcadb5e45912b2fd8d0851f3e8dcdf2f18c72fcc055084317ede27d.lean#L657).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31bbc053051c9712a6ce08dac692522a01c3a5b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
