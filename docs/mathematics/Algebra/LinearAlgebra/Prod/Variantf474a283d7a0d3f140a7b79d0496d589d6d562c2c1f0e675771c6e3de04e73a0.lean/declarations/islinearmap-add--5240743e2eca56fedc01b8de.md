# isLinearMap_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c14e0b0-2448-6e11-9475-f916fea9c5a3",
  "kind": "theorem",
  "lexical_name": "isLinearMap_add",
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
  "slug": "islinearmap-add--5240743e2eca56fedc01b8de",
  "source": {
    "blob": "edc0b7eb836c37fb043149234e8c84c89d5deeab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 33,
    "path": "GRWTSK/Algebra/LinearAlgebra/Prod/Variantf474a283d7a0d3f140a7b79d0496d589d6d562c2c1f0e675771c6e3de04e73a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5240743e2eca56fedc01b8defb9bb8d979fb72a24b77b72645a570a5a0f25322",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Prod/Variantf474a283d7a0d3f140a7b79d0496d589d6d562c2c1f0e675771c6e3de04e73a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c14e0b0-2448-6e11-9475-f916fea9c5a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLinearMap_add [AddCommMonoid M] [Module R M] :
    IsLinearMap R fun x : M × M => x.1 + x.2 := by
  apply IsLinearMap.mk
  · intro x y
    simp only [Prod.fst_add, Prod.snd_add]
    abel
  · intro x y
    simp [smul_add]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Prod/Variantf474a283d7a0d3f140a7b79d0496d589d6d562c2c1f0e675771c6e3de04e73a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Prod/Variantf474a283d7a0d3f140a7b79d0496d589d6d562c2c1f0e675771c6e3de04e73a0.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edc0b7eb836c37fb043149234e8c84c89d5deeab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
