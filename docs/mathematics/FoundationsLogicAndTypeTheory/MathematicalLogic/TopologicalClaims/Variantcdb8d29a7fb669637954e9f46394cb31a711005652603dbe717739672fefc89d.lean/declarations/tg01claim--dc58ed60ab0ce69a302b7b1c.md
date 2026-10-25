# TG01Claim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dc4fd8ebefe756dd78d93d7e138850a973acc411c44ba971504d88f83dc03573",
  "kind": "structure",
  "lexical_name": "TG01Claim",
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
  "slug": "tg01claim--dc58ed60ab0ce69a302b7b1c",
  "source": {
    "blob": "f5355d375ad132bf672cfc2574aff36da3f70b82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 17,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TopologicalClaims/Variantcdb8d29a7fb669637954e9f46394cb31a711005652603dbe717739672fefc89d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dc58ed60ab0ce69a302b7b1cdad75b1e8c1579528fb57e3cfe997bdb8b310fdf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/TopologicalClaims/Variantcdb8d29a7fb669637954e9f46394cb31a711005652603dbe717739672fefc89d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dc4fd8ebefe756dd78d93d7e138850a973acc411c44ba971504d88f83dc03573`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TG01Claim
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {Morph : Type uMorph} {Factorization : Type uFactor}
    (G : DirectedGraph Vertex Edge)
    (sieve : FactoringSieve Morph Factorization)
    (occurs : Edge → Factorization → Prop) : Prop where
  everyEdgeAdmissible :
    ∀ e : AdmittedEdgeType sieve occurs,
      AdmissibleEdge sieve occurs e.1
  sourceInherited :
    ∀ e : AdmittedEdgeType sieve occurs,
      (AdmittedGraph G sieve occurs).source e = G.source e.1
  targetInherited :
    ∀ e : AdmittedEdgeType sieve occurs,
      (AdmittedGraph G sieve occurs).target e = G.target e.1
  sourceEdgeNotDuplicated :
    Function.Injective
      (fun e : AdmittedEdgeType sieve occurs => e.1)

/-- TG-02: quotient equality is exactly endpoint-generated equivalence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/TopologicalClaims/Variantcdb8d29a7fb669637954e9f46394cb31a711005652603dbe717739672fefc89d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TopologicalClaims/Variantcdb8d29a7fb669637954e9f46394cb31a711005652603dbe717739672fefc89d.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5355d375ad132bf672cfc2574aff36da3f70b82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
