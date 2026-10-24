# squarefree_iff_nodup_normalizedFactors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f5cf0de-36ae-ed1c-e2a5-de854db09e4c",
  "kind": "theorem",
  "lexical_name": "squarefree_iff_nodup_normalizedFactors",
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
  "slug": "squarefree-iff-nodup-normalizedfactors--449b0788cfc4c76c5c9f201b",
  "source": {
    "blob": "301e7cfa89d2ddf767387719433257d197a9ea24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 239,
    "path": "GRWTSK/Algebra/GroupTheory/Squarefree/Variant5abdca4ee698853ecd5f485a66c527162d791a8af9b4337be9477344ebb48644.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:449b0788cfc4c76c5c9f201b6fa98512b336e04b4005478cda70a04ba820fb41",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Squarefree/Variant5abdca4ee698853ecd5f485a66c527162d791a8af9b4337be9477344ebb48644.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f5cf0de-36ae-ed1c-e2a5-de854db09e4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squarefree_iff_nodup_normalizedFactors [NormalizationMonoid R] [DecidableEq R] {x : R}
    (x0 : x ≠ 0) : Squarefree x ↔ Multiset.Nodup (normalizedFactors x) := by
  have drel : DecidableRel (Dvd.dvd : R → R → Prop) := by classical infer_instance
  rw [multiplicity.squarefree_iff_multiplicity_le_one, Multiset.nodup_iff_count_le_one]
  haveI := nontrivial_of_ne x 0 x0
  constructor <;> intro h a
  · by_cases hmem : a ∈ normalizedFactors x
    · have ha := irreducible_of_normalized_factor _ hmem
      rcases h a with (h | h)
      · rw [← normalize_normalized_factor _ hmem]
        rw [multiplicity_eq_count_normalizedFactors ha x0] at h
        assumption_mod_cast
      · have := ha.1
        contradiction
    · simp [Multiset.count_eq_zero_of_not_mem hmem]
  · rw [or_iff_not_imp_right]
    intro hu
    by_cases h0 : a = 0
    · simp [h0, x0]
    rcases WfDvdMonoid.exists_irreducible_factor hu h0 with ⟨b, hib, hdvd⟩
    apply le_trans (multiplicity.multiplicity_le_multiplicity_of_dvd_left hdvd)
    rw [multiplicity_eq_count_normalizedFactors hib x0]
    specialize h (normalize b)
    assumption_mod_cast
#align unique_factorization_monoid.squarefree_iff_nodup_normalized_factors UniqueFactorizationMonoid.squarefree_iff_nodup_normalizedFactors

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Squarefree/Variant5abdca4ee698853ecd5f485a66c527162d791a8af9b4337be9477344ebb48644.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Squarefree/Variant5abdca4ee698853ecd5f485a66c527162d791a8af9b4337be9477344ebb48644.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `301e7cfa89d2ddf767387719433257d197a9ea24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
