# sourceProduct_continuousAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2f8129eb559713bfa1f9e0eccb089442bbfcb3e0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fd700af4a70468c35c4e2e8aade21689f2dbe541f018e30b80e6a76eb1d59c8a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:335d3ad5-f043-5243-e80d-0b3e1349c3a4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:93526516-48aa-0936-2b69-50ff8c443282",
  "kind": "theorem",
  "lexical_name": "sourceProduct_continuousAt",
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
  "slug": "sourceproduct-continuousat--e507029a984ae002d8804901",
  "source": {
    "blob": "2f8129eb559713bfa1f9e0eccb089442bbfcb3e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 47,
    "path": "GRWTSK/Topology/GeneralTopology/FixedLaplaceBoundaryFragment/Variantfd700af4a70468c35c4e2e8aade21689f2dbe541f018e30b80e6a76eb1d59c8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e507029a984ae002d88049017697e875999c75e7cea4d57a27af1785f6887703",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FixedLaplaceBoundaryFragment/Variantfd700af4a70468c35c4e2e8aade21689f2dbe541f018e30b80e6a76eb1d59c8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93526516-48aa-0936-2b69-50ff8c443282`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceProduct_continuousAt (z : ℂ) (hz : z ≠ 1 / 2) :
    ContinuousAt (fun w : ℂ => W w * riemannZeta (1 / 2 + w)) z := by
  have hp : (1 / 2 : ℂ) + z ≠ 1 := by
    intro h
    apply hz
    linear_combination h
  have hW : Continuous W := by
    exact (Complex.continuous_exp.comp continuous_neg).mul V_continuous
  exact hW.continuousAt.mul
    ((differentiableAt_riemannZeta hp).continuousAt.comp
      (continuous_const.add continuous_id).continuousAt)

/-- DCT extends the actual open-half-plane identity to the closed half-plane away from the pole. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FixedLaplaceBoundaryFragment/Variantfd700af4a70468c35c4e2e8aade21689f2dbe541f018e30b80e6a76eb1d59c8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FixedLaplaceBoundaryFragment/Variantfd700af4a70468c35c4e2e8aade21689f2dbe541f018e30b80e6a76eb1d59c8a.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f8129eb559713bfa1f9e0eccb089442bbfcb3e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
