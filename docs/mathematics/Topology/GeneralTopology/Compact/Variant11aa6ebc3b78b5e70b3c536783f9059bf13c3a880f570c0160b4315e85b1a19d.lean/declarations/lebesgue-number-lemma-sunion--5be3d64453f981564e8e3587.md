# lebesgue_number_lemma_sUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ca0bf4b-afec-ae5d-13ee-4ed3283fbb8f",
  "kind": "theorem",
  "lexical_name": "lebesgue_number_lemma_sUnion",
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
  "slug": "lebesgue-number-lemma-sunion--5be3d64453f981564e8e3587",
  "source": {
    "blob": "7cd6f354c2fb6fd4c7cd28287ecc9f752a0d98d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 116,
    "path": "GRWTSK/Topology/GeneralTopology/Compact/Variant11aa6ebc3b78b5e70b3c536783f9059bf13c3a880f570c0160b4315e85b1a19d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5be3d64453f981564e8e35878d6292a4d3cca1c5e022f511dea953b928cff6a6",
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

Occurrence: `result:3ca0bf4b-afec-ae5d-13ee-4ed3283fbb8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lebesgue_number_lemma_sUnion {S : Set (Set α)}
    (hK : IsCompact K) (hopen : ∀ s ∈ S, IsOpen s) (hcover : K ⊆ ⋃₀ S) :
    ∃ V ∈ 𝓤 α, ∀ x ∈ K, ∃ s ∈ S, ball x V ⊆ s := by
  rw [sUnion_eq_iUnion] at hcover
  simpa using lebesgue_number_lemma hK (by simpa) hcover

/-- If `K` is a compact set in a uniform space and `{V i | p i}` is a basis of entourages,
then `{⋃ x ∈ K, UniformSpace.ball x (V i) | p i}` is a basis of `𝓝ˢ K`.

Here "`{s i | p i}` is a basis of a filter `l`" means `Filter.HasBasis l p s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compact/Variant11aa6ebc3b78b5e70b3c536783f9059bf13c3a880f570c0160b4315e85b1a19d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compact/Variant11aa6ebc3b78b5e70b3c536783f9059bf13c3a880f570c0160b4315e85b1a19d.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7cd6f354c2fb6fd4c7cd28287ecc9f752a0d98d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
