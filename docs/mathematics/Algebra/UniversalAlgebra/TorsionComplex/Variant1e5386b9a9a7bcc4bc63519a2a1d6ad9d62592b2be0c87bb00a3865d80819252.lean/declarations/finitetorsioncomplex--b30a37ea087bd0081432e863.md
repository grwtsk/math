# FiniteTorsionComplex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6fb3575732245f38e44b691a8b0ce9581703821d77fa18d389f5469508cbc4e8",
  "kind": "structure",
  "lexical_name": "FiniteTorsionComplex",
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
  "slug": "finitetorsioncomplex--b30a37ea087bd0081432e863",
  "source": {
    "blob": "88a5295ea5459d0703861b2983e87cd695546ba1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 21,
    "line": 15,
    "path": "GRWTSK/Algebra/UniversalAlgebra/TorsionComplex/Variant1e5386b9a9a7bcc4bc63519a2a1d6ad9d62592b2be0c87bb00a3865d80819252.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b30a37ea087bd0081432e8633dd72da36733113987981b3ec3aaef207bb467c9",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/TorsionComplex/Variant1e5386b9a9a7bcc4bc63519a2a1d6ad9d62592b2be0c87bb00a3865d80819252.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6fb3575732245f38e44b691a8b0ce9581703821d77fa18d389f5469508cbc4e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–21.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FiniteTorsionComplex where
  degreeBound : Nat
  C : Fin degreeBound → Type
  zero : ∀ i, C i
  torsionRank : Fin degreeBound → Nat
  differentialRank : Fin degreeBound → Nat

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/TorsionComplex/Variant1e5386b9a9a7bcc4bc63519a2a1d6ad9d62592b2be0c87bb00a3865d80819252.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/TorsionComplex/Variant1e5386b9a9a7bcc4bc63519a2a1d6ad9d62592b2be0c87bb00a3865d80819252.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88a5295ea5459d0703861b2983e87cd695546ba1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
