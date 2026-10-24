# algebraMap_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d83268dbd3e17ce9b5c05b7197de6b8be092df00",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 180,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/03a377df616c255996fcb73d3139deb38b969b306badb17a1dbc6e7903e2ee69.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3b209cd6-dde6-3a08-d75a-7ac89b0ce369",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d1f5f0a1-bb1a-137f-01b7-f617c2d12101",
  "kind": "lemma",
  "lexical_name": "algebraMap_apply",
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
  "slug": "algebramap-apply--2eda6fea2c8a1badcf2e7fed",
  "source": {
    "blob": "d83268dbd3e17ce9b5c05b7197de6b8be092df00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 180,
    "path": "GRWTSK/Algebra/LinearAlgebra/PiTensorProduct/Variant03a377df616c255996fcb73d3139deb38b969b306badb17a1dbc6e7903e2ee69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2eda6fea2c8a1badcf2e7fed3e5acd5719bbc580b8d3906bf561dc48bcd54979",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PiTensorProduct/Variant03a377df616c255996fcb73d3139deb38b969b306badb17a1dbc6e7903e2ee69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1f5f0a1-bb1a-137f-01b7-f617c2d12101`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma algebraMap_apply (r : R') (i : ι) [DecidableEq ι] :
    algebraMap R' (⨂[R] i, A i) r = tprod R (Pi.mulSingle i (algebraMap R' (A i) r)) := by
  change r • tprod R 1 = _
  have : Pi.mulSingle i (algebraMap R' (A i) r) = update (fun i ↦ 1) i (r • 1) := by
    rw [Algebra.algebraMap_eq_smul_one]; rfl
  rw [this, ← smul_one_smul R r (1 : A i), MultilinearMap.map_update_smul, update_eq_self,
    smul_one_smul, Pi.one_def]

/--
The map `Aᵢ ⟶ ⨂ᵢ Aᵢ` given by `a ↦ 1 ⊗ ... ⊗ a ⊗ 1 ⊗ ...`
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PiTensorProduct/Variant03a377df616c255996fcb73d3139deb38b969b306badb17a1dbc6e7903e2ee69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PiTensorProduct/Variant03a377df616c255996fcb73d3139deb38b969b306badb17a1dbc6e7903e2ee69.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d83268dbd3e17ce9b5c05b7197de6b8be092df00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
