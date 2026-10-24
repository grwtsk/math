# α

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1ae1eb86e577cb00d7ff3cf7b1aa3ce7ff34cd48d1d06f0359f817052b8e51d3",
  "kind": "def",
  "lexical_name": "α",
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
  "slug": "anonymous--aac1903ba44b319caaa84168",
  "source": {
    "blob": "ba170a2985400d9d1554ada3cc1904a074f7f9b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 335,
    "line": 329,
    "path": "GRWTSK/Topology/AlgebraicTopology/MulStruct/Variant020bf29526daa770ae10c05195f6a85d05e71d215c1ff05f76d346c918cefc23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aac1903ba44b319caaa841687e651674dca4a585a3ec4f18542279feee3394d6",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/MulStruct/Variant020bf29526daa770ae10c05195f6a85d05e71d215c1ff05f76d346c918cefc23.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1ae1eb86e577cb00d7ff3cf7b1aa3ce7ff34cd48d1d06f0359f817052b8e51d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–335.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def α (j : Fin (n + 3)) (_ : j ≠ i.castSucc.castSucc.succ := by grind) :
    Δ[n + 1] ⟶ X :=
  if j = i.castSucc.castSucc.castSucc then h₁₃.map else
    if j = i.castSucc.succ.succ then h.map else
      if j = i.succ.succ.succ then h₀₂.map else
        const x

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/MulStruct/Variant020bf29526daa770ae10c05195f6a85d05e71d215c1ff05f76d346c918cefc23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/MulStruct/Variant020bf29526daa770ae10c05195f6a85d05e71d215c1ff05f76d346c918cefc23.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba170a2985400d9d1554ada3cc1904a074f7f9b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
