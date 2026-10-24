# Ioc_filter_dvd_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b49d3398-bfd4-9a76-c85b-be79f997c461",
  "kind": "theorem",
  "lexical_name": "Ioc_filter_dvd_eq",
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
  "slug": "ioc-filter-dvd-eq--dadb904e3e324e99e8fb17ee",
  "source": {
    "blob": "3a09a10fcf49da99210c3489b775fc36a274b40a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 109,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dadb904e3e324e99e8fb17eef158e3521718461f208aa7f1f8b8d327aaef123f",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b49d3398-bfd4-9a76-c85b-be79f997c461`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ioc_filter_dvd_eq (d a b : ℕ) (hd : d ≠ 0) :
  Finset.filter (fun x ↦ d ∣ x) (Finset.Ioc a b) =
    Finset.image (fun x ↦ x * d) (Finset.Ioc (a / d) (b / d)) := by
  ext n
  simp only [Finset.mem_filter, Finset.mem_Ioc, Finset.mem_image]
  constructor
  · intro hn
    rcases hn with ⟨⟨han, hnb⟩, hd⟩
    refine ⟨n/d, ⟨Nat.div_lt_div_of_lt_of_dvd hd han,
      Nat.div_le_div_right (Nat.le_floor hnb)⟩, Nat.div_mul_cancel hd⟩
  · rintro ⟨r, ⟨ha, ha'⟩, rfl⟩
    refine ⟨⟨(Nat.div_lt_iff_lt_mul (by omega)).mp ha, Nat.mul_le_of_le_div d r b ha'⟩,
      Nat.dvd_mul_left d r⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a09a10fcf49da99210c3489b775fc36a274b40a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
