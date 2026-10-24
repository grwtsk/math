# coverage_entry_lo_ge_domain_lo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "335e39587dbaa85521f4e8fc941808c68eeeb679",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 526,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6a4574cf8c5d7f698236040192b508d4a77a48272f733eb6c1eb36a76d539e14.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:690b5d7d-1259-d077-239b-b4dab4ade1b4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e7cf7581-57b9-04f6-6641-2de448d54ec5",
  "kind": "theorem",
  "lexical_name": "coverage_entry_lo_ge_domain_lo",
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
  "slug": "coverage-entry-lo-ge-domain-lo--c9e1a9b04e1e918ed25a79ac",
  "source": {
    "blob": "335e39587dbaa85521f4e8fc941808c68eeeb679",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 576,
    "line": 526,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CertificateIntegration/Variant6a4574cf8c5d7f698236040192b508d4a77a48272f733eb6c1eb36a76d539e14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9e1a9b04e1e918ed25a79ac7ad155ea40b83239cfb0786a546a9a60da69d220",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CertificateIntegration/Variant6a4574cf8c5d7f698236040192b508d4a77a48272f733eb6c1eb36a76d539e14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7cf7581-57b9-04f6-6641-2de448d54ec5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 526–576.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem coverage_entry_lo_ge_domain_lo (entries : List PartitionEntry)
    (domain : IntervalRat) (hcov : checkCoverage entries domain = true)
    (i : ℕ) (hi : i < entries.length) :
    domain.lo ≤ (entries[i]'hi).domain.lo := by
  cases i with
  | zero =>
    cases entries with
    | nil => simp at hi
    | cons e es =>
      simp only [List.getElem_cons_zero]
      have hfirst := coverage_first_starts (e :: es) domain hcov (by simp)
      simp only [List.head_cons] at hfirst
      exact le_of_eq hfirst.symm
  | succ j =>
    cases entries with
    | nil => simp at hi
    | cons e es =>
      simp only [List.getElem_cons_succ]
      have hfirst := coverage_first_starts (e :: es) domain hcov (by simp)
      simp only [List.head_cons] at hfirst
      -- entry[j+1].lo = entry[j].hi by adjacency, and entry[j].hi ≥ domain.lo
      -- by induction on j
      have hadj : ∀ k (hk : k + 1 < (e :: es).length),
          (e :: es)[k].domain.hi = (e :: es)[k + 1].domain.lo :=
        coverage_adjacent (e :: es) domain hcov
      have hentry_lo : domain.lo ≤ e.domain.lo := le_of_eq hfirst.symm
      -- Show by induction: domain.lo ≤ entry[k].lo for all k
      have hrec : ∀ k (hk : k < es.length), domain.lo ≤ es[k].domain.lo := by
        intro k hk
        induction k with
        | zero =>
          cases es with
          | nil => simp at hk
          | cons e' es' =>
            simp only [List.getElem_cons_zero]
            have h01 := hadj 0 (by simp)
            simp only [List.getElem_cons_zero, List.getElem_cons_succ] at h01
            calc domain.lo ≤ e.domain.lo := hentry_lo
              _ ≤ e.domain.hi := e.domain.le
              _ = e'.domain.lo := h01
        | succ m ih =>
          have hm : m < es.length := by omega
          have hm1 : m + 1 < (e :: es).length := by simp; omega
          have hk1 := hadj (m + 1) (by simp; omega)
          simp only [List.getElem_cons_succ] at hk1
          calc domain.lo ≤ es[m].domain.lo := ih hm
            _ ≤ es[m].domain.hi := es[m].domain.le
            _ = es[m + 1].domain.lo := hk1
      exact hrec j (by simp at hi; omega)

/-- Helper: checkContiguous only depends on domain.hi -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CertificateIntegration/Variant6a4574cf8c5d7f698236040192b508d4a77a48272f733eb6c1eb36a76d539e14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CertificateIntegration/Variant6a4574cf8c5d7f698236040192b508d4a77a48272f733eb6c1eb36a76d539e14.lean#L526).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `335e39587dbaa85521f4e8fc941808c68eeeb679` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
