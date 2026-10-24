# monomial_mem_nonzeroDivisors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7860dae3b1a908537403e2589de369fe1ebd3143",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/aa/aadb439259cac95db225003189dae5d72e4723057dfc81f4f2e54812fac6af57.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:250cbcef-c29b-5691-47ff-25f860ef2ca6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6ca1599f-91a5-31c0-e246-6013c4959a2f",
  "kind": "lemma",
  "lexical_name": "monomial_mem_nonzeroDivisors",
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
  "slug": "monomial-mem-nonzerodivisors--401ad03078355fa1fce03dba",
  "source": {
    "blob": "7860dae3b1a908537403e2589de369fe1ebd3143",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 73,
    "path": "GRWTSK/Algebra/NoZeroDivisors/Variantaadb439259cac95db225003189dae5d72e4723057dfc81f4f2e54812fac6af57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:401ad03078355fa1fce03dba49414f61c3d73f065f3b2084ecaec886d5f3354b",
  "verification": {
    "reference": "docs/verification/Algebra/NoZeroDivisors/Variantaadb439259cac95db225003189dae5d72e4723057dfc81f4f2e54812fac6af57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ca1599f-91a5-31c0-e246-6013c4959a2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma monomial_mem_nonzeroDivisors {n : σ →₀ ℕ} {r} :
    monomial R n r ∈ (MvPowerSeries σ R)⁰ ↔ r ∈ R⁰ := by
  simp only [mem_nonZeroDivisors_iff]
  constructor
  · intro H s hrs
    have := H (C _ _ s) (by rw [← monomial_zero_eq_C, monomial_mul_monomial]; ext; simp [hrs])
    simpa using congr(coeff _ 0 $(this))
  · intro H p hrp
    ext i
    have := congr(coeff _ (i + n) $hrp)
    rw [coeff_mul_monomial, if_pos le_add_self, add_tsub_cancel_right] at this
    simpa using H _ this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/NoZeroDivisors/Variantaadb439259cac95db225003189dae5d72e4723057dfc81f4f2e54812fac6af57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/NoZeroDivisors/Variantaadb439259cac95db225003189dae5d72e4723057dfc81f4f2e54812fac6af57.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7860dae3b1a908537403e2589de369fe1ebd3143` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
