# summable_coefficient_radius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "52481c1e88935e5b39ff5cd5afac1f5318579c3e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 48,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/68ad0c3be458742a1640b6f74b5674587c3b5a203dbb7fe5db0e35a5b2ca24b2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:80048d95-3870-9934-36db-6d63ab425c65",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6ceaf097-84e8-c180-2f93-46b9957004a3",
  "kind": "theorem",
  "lexical_name": "summable_coefficient_radius",
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
  "slug": "summable-coefficient-radius--e67e09b5b6730b58912e318b",
  "source": {
    "blob": "52481c1e88935e5b39ff5cd5afac1f5318579c3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 48,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/XiJensenReconstruction/Variant68ad0c3be458742a1640b6f74b5674587c3b5a203dbb7fe5db0e35a5b2ca24b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e67e09b5b6730b58912e318b9f22d740b47333153d3079103cd312e2ce8ac520",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/XiJensenReconstruction/Variant68ad0c3be458742a1640b6f74b5674587c3b5a203dbb7fe5db0e35a5b2ca24b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ceaf097-84e8-c180-2f93-46b9957004a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem summable_coefficient_radius (R : ℝ) (hR : 0 ≤ R) :
    Summable (fun k => coefficient k * R ^ (2 * k)) := by
  have h := (summable_centered ((R : ℂ) ^ 2)).norm
  simpa only [norm_mul, norm_pow, Complex.norm_real,
    Real.norm_of_nonneg hR, Real.norm_of_nonneg
      (coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula _).le,
    ← pow_mul] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/XiJensenReconstruction/Variant68ad0c3be458742a1640b6f74b5674587c3b5a203dbb7fe5db0e35a5b2ca24b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/XiJensenReconstruction/Variant68ad0c3be458742a1640b6f74b5674587c3b5a203dbb7fe5db0e35a5b2ca24b2.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52481c1e88935e5b39ff5cd5afac1f5318579c3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
