# blockCumulantValue_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3a315c4-84c4-93f9-6592-ff4ab7cfb773",
  "kind": "theorem",
  "lexical_name": "blockCumulantValue_singleton",
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
  "slug": "blockcumulantvalue-singleton--2af438be98d637928967c058",
  "source": {
    "blob": "4d58a37b3c6a03217ba20fd7d1bc0bf7994634d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 92,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderTwoRecursiveCumulant/Variant04d74d6ecc8b89290821811cae7c621309bd5fee06544c7e7cc536e6af40ea38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2af438be98d637928967c0589112f2d36e8c5f33c20ba51041854329dea44acd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderTwoRecursiveCumulant/Variant04d74d6ecc8b89290821811cae7c621309bd5fee06544c7e7cc536e6af40ea38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3a315c4-84c4-93f9-6592-ff4ab7cfb773`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem blockCumulantValue_singleton
    {n : ℕ}
    (κ : DirectionCumulantFamily E R)
    (directions : Fin n → E)
    (i : Fin n) :
    blockCumulantValue κ directions ({i} : Finset (Fin n)) =
      κ 1 (fun _ : Fin 1 => directions i) := by
  unfold blockCumulantValue
  simp only [Finset.card_singleton]
  apply congrArg (κ 1)
  funext j
  unfold blockDirections
  apply congrArg directions
  simpa using
    blockOrderIso_mem ({i} : Finset (Fin n)) j

/-- The discrete partition of two directions consists of the two singleton
blocks. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderTwoRecursiveCumulant/Variant04d74d6ecc8b89290821811cae7c621309bd5fee06544c7e7cc536e6af40ea38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderTwoRecursiveCumulant/Variant04d74d6ecc8b89290821811cae7c621309bd5fee06544c7e7cc536e6af40ea38.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d58a37b3c6a03217ba20fd7d1bc0bf7994634d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
