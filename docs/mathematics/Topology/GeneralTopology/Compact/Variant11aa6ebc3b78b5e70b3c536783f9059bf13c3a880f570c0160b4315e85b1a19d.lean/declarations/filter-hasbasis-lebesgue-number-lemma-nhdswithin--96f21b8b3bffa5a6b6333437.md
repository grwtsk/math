# Filter.HasBasis.lebesgue_number_lemma_nhdsWithin'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:262fd8c8-2563-75bf-372d-3fb3f1506715",
  "kind": "theorem",
  "lexical_name": "Filter.HasBasis.lebesgue_number_lemma_nhdsWithin'",
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
  "slug": "filter-hasbasis-lebesgue-number-lemma-nhdswithin--96f21b8b3bffa5a6b6333437",
  "source": {
    "blob": "7cd6f354c2fb6fd4c7cd28287ecc9f752a0d98d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 99,
    "path": "GRWTSK/Topology/GeneralTopology/Compact/Variant11aa6ebc3b78b5e70b3c536783f9059bf13c3a880f570c0160b4315e85b1a19d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96f21b8b3bffa5a6b6333437353587169a27196a35b97789e2fc1016ac729409",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compact/Variant11aa6ebc3b78b5e70b3c536783f9059bf13c3a880f570c0160b4315e85b1a19d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:262fd8c8-2563-75bf-372d-3fb3f1506715`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Filter.HasBasis.lebesgue_number_lemma_nhdsWithin' {ι' : Sort*} {p : ι' → Prop}
    {V : ι' → Set (α × α)} {U : (x : α) → x ∈ K → Set α} (hbasis : (𝓤 α).HasBasis p V)
    (hK : IsCompact K) (hU : ∀ x hx, U x hx ∈ 𝓝[K] x) :
    ∃ i, p i ∧ ∀ x ∈ K, ∃ y : K, ball x (V i) ∩ K ⊆ U y y.2 := by
  refine (hbasis.exists_iff ?_).1 (lebesgue_number_lemma_nhdsWithin' hK hU)
  exact fun s t hst ht x hx ↦ (ht x hx).imp
    fun y hy ↦ Subset.trans (Set.inter_subset_inter_left K (ball_mono hst _)) hy

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compact/Variant11aa6ebc3b78b5e70b3c536783f9059bf13c3a880f570c0160b4315e85b1a19d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compact/Variant11aa6ebc3b78b5e70b3c536783f9059bf13c3a880f570c0160b4315e85b1a19d.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7cd6f354c2fb6fd4c7cd28287ecc9f752a0d98d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
