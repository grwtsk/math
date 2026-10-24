# gramPlus_energy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d75ff4b1-2541-7dc4-c81a-d4f1ac22a58f",
  "kind": "theorem",
  "lexical_name": "gramPlus_energy",
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
  "slug": "gramplus-energy--21e0f09b0c95b7f638406109",
  "source": {
    "blob": "4c8cbfe4c57c1ac114ff696cc989fce205e27efa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 35,
    "path": "GRWTSK/Algebra/LinearAlgebra/Attempt02/Variant04d7a20b902094a5ee838a73c8af513c99a2552413c75c6e1d1b71924a376b8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21e0f09b0c95b7f6384061098a2a97fe5bc93f1c8f73d9a0693983bd943b0047",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Attempt02/Variant04d7a20b902094a5ee838a73c8af513c99a2552413c75c6e1d1b71924a376b8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d75ff4b1-2541-7dc4-c81a-d4f1ac22a58f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gramPlus_energy (x : Fin 3 → ℝ) :
    star x ⬝ᵥ (gramPlus*ᵥx) =
      3/4*(x 0^2+x 1^2+x 2^2)+1/4*(x 0+x 1+x 2)^2 := by
  simp [gramPlus, dotProduct, Matrix.mulVec, Fin.sum_univ_succ]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Attempt02/Variant04d7a20b902094a5ee838a73c8af513c99a2552413c75c6e1d1b71924a376b8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Attempt02/Variant04d7a20b902094a5ee838a73c8af513c99a2552413c75c6e1d1b71924a376b8f.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c8cbfe4c57c1ac114ff696cc989fce205e27efa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
