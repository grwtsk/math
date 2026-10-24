# two_dvd_mul_sub_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:83e39288-54fc-6b97-80a7-f95889b4d236",
  "kind": "lemma",
  "lexical_name": "two_dvd_mul_sub_one",
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
  "slug": "two-dvd-mul-sub-one--a8aa2a86cb562f6987829ba9",
  "source": {
    "blob": "63a02240c3575c614824756044dd6adc5fe23dd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 350,
    "line": 347,
    "path": "GRWTSK/Algebra/Parity/Variantef6a4365daa20838d7036ce35b4d6912106e8c3ecd9f151dbedf87b5120a9e6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8aa2a86cb562f6987829ba987bb89166109a6eeda944f043cf31c2ae4b237bc",
  "verification": {
    "reference": "docs/verification/Algebra/Parity/Variantef6a4365daa20838d7036ce35b4d6912106e8c3ecd9f151dbedf87b5120a9e6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83e39288-54fc-6b97-80a7-f95889b4d236`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 347–350.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma two_dvd_mul_sub_one (k : ℕ) : 2 ∣ k * (k - 1) := by
  rcases k with rfl | k; · simp
  simpa [mul_comm (k + 1)] using k.two_dvd_mul_add_one

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Parity/Variantef6a4365daa20838d7036ce35b4d6912106e8c3ecd9f151dbedf87b5120a9e6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Parity/Variantef6a4365daa20838d7036ce35b4d6912106e8c3ecd9f151dbedf87b5120a9e6b.lean#L347).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63a02240c3575c614824756044dd6adc5fe23dd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
