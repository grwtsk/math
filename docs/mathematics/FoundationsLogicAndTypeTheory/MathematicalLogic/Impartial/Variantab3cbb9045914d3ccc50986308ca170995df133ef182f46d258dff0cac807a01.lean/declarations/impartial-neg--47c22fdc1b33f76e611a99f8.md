# impartial_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:efeae0ac2ab5b8d770b01ad5433ceb645f7a4b2249140f43929ddf1c6faf8c3e",
  "kind": "instance",
  "lexical_name": "impartial_neg",
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
  "slug": "impartial-neg--47c22fdc1b33f76e611a99f8",
  "source": {
    "blob": "906c8e7d4f47e6da33446b703c90089f34b6e255",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 96,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variantab3cbb9045914d3ccc50986308ca170995df133ef182f46d258dff0cac807a01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:47c22fdc1b33f76e611a99f8ce7151b009c8d97b8e75607d43ff4909044208a6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variantab3cbb9045914d3ccc50986308ca170995df133ef182f46d258dff0cac807a01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:efeae0ac2ab5b8d770b01ad5433ceb645f7a4b2249140f43929ddf1c6faf8c3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance impartial_neg (G : PGame) [G.Impartial] : (-G).Impartial := by
  rw [impartial_def]
  refine ⟨?_, fun i => ?_, fun i => ?_⟩
  · rw [neg_neg]
    exact Equiv.symm (neg_equiv_self G)
  · rw [moveLeft_neg]
    exact impartial_neg _
  · rw [moveRight_neg]
    exact impartial_neg _
termination_by G

variable (G : PGame) [Impartial G]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variantab3cbb9045914d3ccc50986308ca170995df133ef182f46d258dff0cac807a01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variantab3cbb9045914d3ccc50986308ca170995df133ef182f46d258dff0cac807a01.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `906c8e7d4f47e6da33446b703c90089f34b6e255` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
