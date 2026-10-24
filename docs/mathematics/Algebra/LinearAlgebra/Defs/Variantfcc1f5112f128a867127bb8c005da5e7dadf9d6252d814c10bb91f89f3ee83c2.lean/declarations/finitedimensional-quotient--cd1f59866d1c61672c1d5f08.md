# finiteDimensional_quotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a17ae822666325e214d00e71cf86dd1e4c4d349b502cc99e80320b831d42e9d4",
  "kind": "instance",
  "lexical_name": "finiteDimensional_quotient",
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
  "slug": "finitedimensional-quotient--cd1f59866d1c61672c1d5f08",
  "source": {
    "blob": "8e01b6c6253598a2125931ca8e9c5c979ba50fdf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 144,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variantfcc1f5112f128a867127bb8c005da5e7dadf9d6252d814c10bb91f89f3ee83c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cd1f59866d1c61672c1d5f089fec5817eb4b3939ee2c2e87d0af6a10efaec3e9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variantfcc1f5112f128a867127bb8c005da5e7dadf9d6252d814c10bb91f89f3ee83c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a17ae822666325e214d00e71cf86dd1e4c4d349b502cc99e80320b831d42e9d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance finiteDimensional_quotient [FiniteDimensional K V] (S : Submodule K V) :
    FiniteDimensional K (V ⧸ S) :=
  Module.Finite.quotient K S

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variantfcc1f5112f128a867127bb8c005da5e7dadf9d6252d814c10bb91f89f3ee83c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variantfcc1f5112f128a867127bb8c005da5e7dadf9d6252d814c10bb91f89f3ee83c2.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e01b6c6253598a2125931ca8e9c5c979ba50fdf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
