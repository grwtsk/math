# units_smul_resolvent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "948c9394049b2ae9d67e1fcdf2a25c878ff6c4cf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 151,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/66/6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d8109daf-6a69-b706-5bac-26bccb3fffa2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5957e71f-5a45-2dd6-9edb-dbaef32bfaf3",
  "kind": "theorem",
  "lexical_name": "units_smul_resolvent",
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
  "slug": "units-smul-resolvent--9dba49b658f5bf5728627a62",
  "source": {
    "blob": "948c9394049b2ae9d67e1fcdf2a25c878ff6c4cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 151,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9dba49b658f5bf5728627a6255979436f34e8110e9cc5d7e2ffddbab0ad40422",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5957e71f-5a45-2dd6-9edb-dbaef32bfaf3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem units_smul_resolvent {r : Rˣ} {s : R} {a : A} :
    r • resolvent a (s : R) = resolvent (r⁻¹ • a) (r⁻¹ • s : R) := by
  by_cases h : s ∈ spectrum R a
  · rw [mem_iff] at h
    simp only [resolvent, Algebra.algebraMap_eq_smul_one] at *
    rw [smul_assoc, ← smul_sub]
    have h' : ¬IsUnit (r⁻¹ • (s • (1 : A) - a)) := fun hu =>
      h (by simpa only [smul_inv_smul] using IsUnit.smul r hu)
    simp only [Ring.inverse_non_unit _ h, Ring.inverse_non_unit _ h', smul_zero]
  · simp only [resolvent]
    have h' : IsUnit (r • algebraMap R A (r⁻¹ • s) - a) := by
      simpa [Algebra.algebraMap_eq_smul_one, smul_assoc] using not_mem_iff.mp h
    rw [← h'.val_subInvSMul, ← (not_mem_iff.mp h).unit_spec, Ring.inverse_unit, Ring.inverse_unit,
      h'.val_inv_subInvSMul]
    simp only [Algebra.algebraMap_eq_smul_one, smul_assoc, smul_inv_smul]
#align spectrum.units_smul_resolvent spectrum.units_smul_resolvent

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `948c9394049b2ae9d67e1fcdf2a25c878ff6c4cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
