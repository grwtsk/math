# psi_le_of_psiUB_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d95bc5988826c1d4a98059a095c5e2aa03954cdd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 72,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1e/1e06a10e95fd48cca0a48abad6311232464db05274465d73b4e53b712af392b6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3ec82c2d-9fd0-0e58-e135-ce533c8e7912",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b61e2cbe-e3ff-0a42-2e76-842bd8a1ba95",
  "kind": "theorem",
  "lexical_name": "psi_le_of_psiUB_le",
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
  "slug": "psi-le-of-psiub-le--10cf40df805386cbe7891608",
  "source": {
    "blob": "d95bc5988826c1d4a98059a095c5e2aa03954cdd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 72,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Psi/Variant1e06a10e95fd48cca0a48abad6311232464db05274465d73b4e53b712af392b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10cf40df805386cbe7891608c57ebd0028948279558814941ebb1e46354c408a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Psi/Variant1e06a10e95fd48cca0a48abad6311232464db05274465d73b4e53b712af392b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b61e2cbe-e3ff-0a42-2e76-842bd8a1ba95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem psi_le_of_psiUB_le (N : Nat) (depth : Nat) (slope : Rat)
    (h : decide (psiUB N depth <= slope) = true) :
    psi (N : Real) <= (slope : Real) := by
  have hub := psi_le_psiUB N depth
  have hle : psiUB N depth <= slope := by rwa [decide_eq_true_eq] at h
  exact le_trans hub (by exact_mod_cast hle)

/-! ### Generic slope checker: psi(N) <= slope * N -/

/-- Computable check: does `psiUB(N) <= slope * N` hold? -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Psi/Variant1e06a10e95fd48cca0a48abad6311232464db05274465d73b4e53b712af392b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Psi/Variant1e06a10e95fd48cca0a48abad6311232464db05274465d73b4e53b712af392b6.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d95bc5988826c1d4a98059a095c5e2aa03954cdd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
