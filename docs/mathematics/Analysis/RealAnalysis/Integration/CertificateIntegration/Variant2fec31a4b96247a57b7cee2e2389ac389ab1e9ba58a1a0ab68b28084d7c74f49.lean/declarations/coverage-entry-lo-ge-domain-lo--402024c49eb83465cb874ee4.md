# coverage_entry_lo_ge_domain_lo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b58662e-58be-4c7f-9750-e775412250b7",
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
  "slug": "coverage-entry-lo-ge-domain-lo--402024c49eb83465cb874ee4",
  "source": {
    "blob": "823024257f25d2ab06d8e4b433ae52ba395d781e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 584,
    "line": 534,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CertificateIntegration/Variant2fec31a4b96247a57b7cee2e2389ac389ab1e9ba58a1a0ab68b28084d7c74f49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:402024c49eb83465cb874ee49eb724b73a382f151c66dc43ec3c271ca6f3bc3c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CertificateIntegration/Variant2fec31a4b96247a57b7cee2e2389ac389ab1e9ba58a1a0ab68b28084d7c74f49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b58662e-58be-4c7f-9750-e775412250b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 534–584.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CertificateIntegration/Variant2fec31a4b96247a57b7cee2e2389ac389ab1e9ba58a1a0ab68b28084d7c74f49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CertificateIntegration/Variant2fec31a4b96247a57b7cee2e2389ac389ab1e9ba58a1a0ab68b28084d7c74f49.lean#L534).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `823024257f25d2ab06d8e4b433ae52ba395d781e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
