# StandardSubspace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b22d3e7da88b063e37dc911b3557be0fc6b920fe576cbfb03b713e63a0f06348",
  "kind": "structure",
  "lexical_name": "StandardSubspace",
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
  "slug": "standardsubspace--b6347947ffd2fd1b449fb334",
  "source": {
    "blob": "2b703a3df30fcb7f1c7cd51a0285136e10b9ac1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 178,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/StandardSubspace/Variant093a501d69d952a596c8cdbf7bc0535c6dcd44bce811970ec84d12794978aab2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b6347947ffd2fd1b449fb3340d672633c0e062d4a5a131adefdad4c817b32945",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/StandardSubspace/Variant093a501d69d952a596c8cdbf7bc0535c6dcd44bce811970ec84d12794978aab2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b22d3e7da88b063e37dc911b3557be0fc6b920fe576cbfb03b713e63a0f06348`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure StandardSubspace where
  /-- A real closed subspace `S`. -/
  toClosedSubmodule : ClosedSubmodule ℝ H
  /-- `S` is separating, that is, `S ⊓ i S` is the trivial subspace. -/
  IsSeparating : toClosedSubmodule ⊓ toClosedSubmodule.mulI = ⊥
  /-- `S` is cyclic, that is, `S ⊔ i S` is the whole space. -/
  IsCyclic : toClosedSubmodule ⊔ toClosedSubmodule.mulI = ⊤

end Def

namespace StandardSubspace

open ClosedSubmodule

variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/StandardSubspace/Variant093a501d69d952a596c8cdbf7bc0535c6dcd44bce811970ec84d12794978aab2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/StandardSubspace/Variant093a501d69d952a596c8cdbf7bc0535c6dcd44bce811970ec84d12794978aab2.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b703a3df30fcb7f1c7cd51a0285136e10b9ac1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
