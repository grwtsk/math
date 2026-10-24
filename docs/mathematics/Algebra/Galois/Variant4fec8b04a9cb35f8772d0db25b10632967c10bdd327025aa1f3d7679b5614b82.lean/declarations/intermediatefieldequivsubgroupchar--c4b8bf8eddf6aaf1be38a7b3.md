# intermediateFieldEquivSubgroupChar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a9163ddf51697d01810d812e1b822a997ce3b07751c9671f5b23e7c35865f6ce",
  "kind": "def",
  "lexical_name": "intermediateFieldEquivSubgroupChar",
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
  "slug": "intermediatefieldequivsubgroupchar--c4b8bf8eddf6aaf1be38a7b3",
  "source": {
    "blob": "4d44dfac65146ad625c990c79ed6841b297e1437",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 192,
    "path": "GRWTSK/Algebra/Galois/Variant4fec8b04a9cb35f8772d0db25b10632967c10bdd327025aa1f3d7679b5614b82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c4b8bf8eddf6aaf1be38a7b3266da571238e78cbd7169a8f6754f10f4ec9ceb2",
  "verification": {
    "reference": "docs/verification/Algebra/Galois/Variant4fec8b04a9cb35f8772d0db25b10632967c10bdd327025aa1f3d7679b5614b82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a9163ddf51697d01810d812e1b822a997ce3b07751c9671f5b23e7c35865f6ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def intermediateFieldEquivSubgroupChar :
    IntermediateField ℚ K ≃o Subgroup (DirichletCharacter R n) :=
  IsGalois.intermediateFieldEquivSubgroup.trans <|
      (subgroupGalEquivSubgroupChar n K R).dual.trans (OrderIso.dualDual _).symm

/-- The cardinality of the subgroup of Dirichlet characters of level `n` associated to an
intermediate field `F` of `ℚ(ζₙ)/ℚ` equals the degree `[F : ℚ]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Galois/Variant4fec8b04a9cb35f8772d0db25b10632967c10bdd327025aa1f3d7679b5614b82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Galois/Variant4fec8b04a9cb35f8772d0db25b10632967c10bdd327025aa1f3d7679b5614b82.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d44dfac65146ad625c990c79ed6841b297e1437` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
