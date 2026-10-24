# conj_ZC

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dc2399d604cba333cc3cd93c2755c0a9960273fa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 100,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a3c8c3fb5f0bf7169a59699ee144eb9368b023d48f9bff05af1c214840074e9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3114d42f-6880-00a6-7864-213d3e7fd066",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b953f7eb-16f9-f0f8-ce8c-60606fa9c08f",
  "kind": "theorem",
  "lexical_name": "conj_ZC",
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
  "slug": "conj-zc--e7e5ed1bf0b9becddf9661c3",
  "source": {
    "blob": "dc2399d604cba333cc3cd93c2755c0a9960273fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 100,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZFunction/Variant4a3c8c3fb5f0bf7169a59699ee144eb9368b023d48f9bff05af1c214840074e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7e5ed1bf0b9becddf9661c3bd097eebdcca124354764971f474f0ad946b59db",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ZFunction/Variant4a3c8c3fb5f0bf7169a59699ee144eb9368b023d48f9bff05af1c214840074e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b953f7eb-16f9-f0f8-ce8c-60606fa9c08f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conj_ZC (t : ℝ) : conj (ZC t) = ZC t := by
  by_cases ht : t = 0
  · subst ht
    rw [ZC, map_mul, conj_ephase, neg_zero, ← Zeta23.riemannZeta_conj (sline_ne_one 0), conj_sline, neg_zero]
  have him : (sline t).im ≠ 0 := by simpa using ht
  rw [ZC, map_mul, ← Zeta23.riemannZeta_conj (sline_ne_one t), conj_sline, ← one_sub_sline]
  -- ζ(1−s) = ζ(s)/χ(s) = ζ(s)·e²
  have hχ := chiFE_ne_zero him
  have h1 : riemannZeta (1 - sline t) = riemannZeta (sline t) * ephase t ^ 2 := by
    have := zeta_eq_chiFE_mul him
    have e2 := ephase_sq t
    calc riemannZeta (1 - sline t) = riemannZeta (sline t) / chiFE (sline t) := by
          rw [this]; field_simp
      _ = riemannZeta (sline t) * ephase t ^ 2 := by
          rw [div_eq_iff hχ, mul_assoc, e2, mul_one]
  rw [h1]
  calc conj (ephase t) * (riemannZeta (sline t) * ephase t ^ 2)
      = (conj (ephase t) * ephase t) * ephase t * riemannZeta (sline t) := by ring
    _ = ephase t * riemannZeta (sline t) := by rw [conj_ephase_mul, one_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZFunction/Variant4a3c8c3fb5f0bf7169a59699ee144eb9368b023d48f9bff05af1c214840074e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZFunction/Variant4a3c8c3fb5f0bf7169a59699ee144eb9368b023d48f9bff05af1c214840074e9.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc2399d604cba333cc3cd93c2755c0a9960273fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
