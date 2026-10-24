# Int.natAbs_eq_of_chain_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d5288ef02212462cfe7068bcb4726d465be9d874",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 51,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3b/3b1fc1cc108bea3b0a9b2c748b635286336c272af0991e89a931718fe328a330.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c71454d8-7722-60cd-cf02-f047cac0c6f7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ef86720a-b720-003c-a8e6-65e4a67c7fdd",
  "kind": "theorem",
  "lexical_name": "Int.natAbs_eq_of_chain_dvd",
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
  "slug": "int-natabs-eq-of-chain-dvd--5b5727df8fada4459ee9dc20",
  "source": {
    "blob": "d5288ef02212462cfe7068bcb4726d465be9d874",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 51,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Imo2006Q5/Variant3b1fc1cc108bea3b0a9b2c748b635286336c272af0991e89a931718fe328a330.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b5727df8fada4459ee9dc20968006acc16a146c26615085191c54fd142f5d98",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Imo2006Q5/Variant3b1fc1cc108bea3b0a9b2c748b635286336c272af0991e89a931718fe328a330.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef86720a-b720-003c-a8e6-65e4a67c7fdd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Int.natAbs_eq_of_chain_dvd {l : Cycle ℤ} {x y : ℤ} (hl : l.Chain (· ∣ ·)) (hx : x ∈ l)
    (hy : y ∈ l) : x.natAbs = y.natAbs := by
  rw [Cycle.chain_iff_pairwise] at hl
  exact Int.natAbs_eq_of_dvd_dvd (hl x hx y hy) (hl y hy x hx)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Imo2006Q5/Variant3b1fc1cc108bea3b0a9b2c748b635286336c272af0991e89a931718fe328a330.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Imo2006Q5/Variant3b1fc1cc108bea3b0a9b2c748b635286336c272af0991e89a931718fe328a330.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5288ef02212462cfe7068bcb4726d465be9d874` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
