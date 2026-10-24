# _root_.GRWTSK.Algebra.LinearAlgebra.LinearIndependentSingle.Variant458544de100f697cee6f208b0dbfa61fe962bf7184098077d417ab9c1d59ca0a.Module.Free.function

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:73dfad98661b2b3bfec02ad7f883ad0517adedf1de735fb1814d05b9026d8590",
  "kind": "instance",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.LinearIndependentSingle.Variant458544de100f697cee6f208b0dbfa61fe962bf7184098077d417ab9c1d59ca0a.Module.Free.function",
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
  "slug": "root-grwtsk-algebra-linearalgebra-linearindependentsingle-variant458544d--4db4e68e7fc22b5d742d7224",
  "source": {
    "blob": "6df0b372418e27fa701420f7e78ae47940dede3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 219,
    "path": "GRWTSK/Algebra/LinearAlgebra/StdBasis/Variantdf8dcfaf56c87835e6c271549d70038f14cba05902e88a4913d3430bd3a383d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4db4e68e7fc22b5d742d722406db676a37f81976d069e55032cfe4fd24fc0b53",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/StdBasis/Variantdf8dcfaf56c87835e6c271549d70038f14cba05902e88a4913d3430bd3a383d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:73dfad98661b2b3bfec02ad7f883ad0517adedf1de735fb1814d05b9026d8590`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance _root_.GRWTSK.Algebra.LinearAlgebra.LinearIndependentSingle.Variant458544de100f697cee6f208b0dbfa61fe962bf7184098077d417ab9c1d59ca0a.Module.Free.function [Finite ι] [Module.Free R M] : Module.Free R (ι → M) :=
  Free.pi _ _

end Module.Free
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/StdBasis/Variantdf8dcfaf56c87835e6c271549d70038f14cba05902e88a4913d3430bd3a383d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/StdBasis/Variantdf8dcfaf56c87835e6c271549d70038f14cba05902e88a4913d3430bd3a383d3.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6df0b372418e27fa701420f7e78ae47940dede3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
