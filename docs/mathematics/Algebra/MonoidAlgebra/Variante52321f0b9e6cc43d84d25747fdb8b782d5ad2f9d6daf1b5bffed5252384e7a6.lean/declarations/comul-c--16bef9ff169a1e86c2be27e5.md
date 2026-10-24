# comul_C

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:18ee68a5-da34-bbef-52dd-74fd27bd155a",
  "kind": "theorem",
  "lexical_name": "comul_C",
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
  "slug": "comul-c--16bef9ff169a1e86c2be27e5",
  "source": {
    "blob": "d067d0c2fe46b1a7524026b5deb86fc532294c6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 89,
    "path": "GRWTSK/Algebra/MonoidAlgebra/Variante52321f0b9e6cc43d84d25747fdb8b782d5ad2f9d6daf1b5bffed5252384e7a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16bef9ff169a1e86c2be27e5efa4729df9095c15e32ebb667739211a691b8d6c",
  "verification": {
    "reference": "docs/verification/Algebra/MonoidAlgebra/Variante52321f0b9e6cc43d84d25747fdb8b782d5ad2f9d6daf1b5bffed5252384e7a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18ee68a5-da34-bbef-52dd-74fd27bd155a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comul_C (a : A) :
    Coalgebra.comul (R := R) (C a) =
      TensorProduct.map (lsingle 0) (lsingle 0) (Coalgebra.comul (R := R) a) :=
  comul_single _ _

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/MonoidAlgebra/Variante52321f0b9e6cc43d84d25747fdb8b782d5ad2f9d6daf1b5bffed5252384e7a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/MonoidAlgebra/Variante52321f0b9e6cc43d84d25747fdb8b782d5ad2f9d6daf1b5bffed5252384e7a6.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d067d0c2fe46b1a7524026b5deb86fc532294c6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
