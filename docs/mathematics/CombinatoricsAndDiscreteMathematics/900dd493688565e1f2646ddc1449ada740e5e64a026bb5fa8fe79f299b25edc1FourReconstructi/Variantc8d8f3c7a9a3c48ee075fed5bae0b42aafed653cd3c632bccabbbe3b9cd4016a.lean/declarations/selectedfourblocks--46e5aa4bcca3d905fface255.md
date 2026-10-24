# selectedFourBlocks

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:59775467cbb658ba5e2d0f1329f5971e455bbad4ed4516fe96e1d02df51fe200",
  "kind": "def",
  "lexical_name": "selectedFourBlocks",
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
  "slug": "selectedfourblocks--46e5aa4bcca3d905fface255",
  "source": {
    "blob": "f8944e31ff677ad28e2defc642161d2c40fcf084",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 181,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/900dd493688565e1f2646ddc1449ada740e5e64a026bb5fa8fe79f299b25edc1FourReconstructi/Variantc8d8f3c7a9a3c48ee075fed5bae0b42aafed653cd3c632bccabbbe3b9cd4016a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:46e5aa4bcca3d905fface255117be5a2ec3bfd93bb3993ab3f44f0e6122cf484",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/900dd493688565e1f2646ddc1449ada740e5e64a026bb5fa8fe79f299b25edc1FourReconstructi/Variantc8d8f3c7a9a3c48ee075fed5bae0b42aafed653cd3c632bccabbbe3b9cd4016a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:59775467cbb658ba5e2d0f1329f5971e455bbad4ed4516fe96e1d02df51fe200`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def selectedFourBlocks (b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 : Bool) : Finset (Finset (Fin 4)) :=
  let s13 : Finset (Finset (Fin 4)) := if b13 then insert ({1, 2, 3} : Finset (Fin 4)) ∅ else ∅
  let s12 : Finset (Finset (Fin 4)) := if b12 then insert ({0, 2, 3} : Finset (Fin 4)) s13 else s13
  let s11 : Finset (Finset (Fin 4)) := if b11 then insert ({0, 1, 3} : Finset (Fin 4)) s12 else s12
  let s10 : Finset (Finset (Fin 4)) := if b10 then insert ({0, 1, 2} : Finset (Fin 4)) s11 else s11
  let s9 : Finset (Finset (Fin 4)) := if b9 then insert ({2, 3} : Finset (Fin 4)) s10 else s10
  let s8 : Finset (Finset (Fin 4)) := if b8 then insert ({1, 3} : Finset (Fin 4)) s9 else s9
  let s7 : Finset (Finset (Fin 4)) := if b7 then insert ({1, 2} : Finset (Fin 4)) s8 else s8
  let s6 : Finset (Finset (Fin 4)) := if b6 then insert ({0, 3} : Finset (Fin 4)) s7 else s7
  let s5 : Finset (Finset (Fin 4)) := if b5 then insert ({0, 2} : Finset (Fin 4)) s6 else s6
  let s4 : Finset (Finset (Fin 4)) := if b4 then insert ({0, 1} : Finset (Fin 4)) s5 else s5
  let s3 : Finset (Finset (Fin 4)) := if b3 then insert ({3} : Finset (Fin 4)) s4 else s4
  let s2 : Finset (Finset (Fin 4)) := if b2 then insert ({2} : Finset (Fin 4)) s3 else s3
  let s1 : Finset (Finset (Fin 4)) := if b1 then insert ({1} : Finset (Fin 4)) s2 else s2
  let s0 : Finset (Finset (Fin 4)) := if b0 then insert ({0} : Finset (Fin 4)) s1 else s1
  s0

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/900dd493688565e1f2646ddc1449ada740e5e64a026bb5fa8fe79f299b25edc1FourReconstructi/Variantc8d8f3c7a9a3c48ee075fed5bae0b42aafed653cd3c632bccabbbe3b9cd4016a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/900dd493688565e1f2646ddc1449ada740e5e64a026bb5fa8fe79f299b25edc1FourReconstructi/Variantc8d8f3c7a9a3c48ee075fed5bae0b42aafed653cd3c632bccabbbe3b9cd4016a.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8944e31ff677ad28e2defc642161d2c40fcf084` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
