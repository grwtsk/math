# mapRange_finsuppAntidiag_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3aa8382e-c5c2-db57-f005-879b9e2b5690",
  "kind": "lemma",
  "lexical_name": "mapRange_finsuppAntidiag_subset",
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
  "slug": "maprange-finsuppantidiag-subset--d47ced3faabc91e6cb683a6d",
  "source": {
    "blob": "d334a0b11054857d65b721b7b854b0e98e18754f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 116,
    "path": "GRWTSK/Algebra/Finsupp/Variantac8674162a85020dae3c76d25defb8e5dbfbd264c5f5b499ac69d3f9ab5806b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d47ced3faabc91e6cb683a6d0e877ea12876bb6e7aa65cb1287bb95eb3f3a0ab",
  "verification": {
    "reference": "docs/verification/Algebra/Finsupp/Variantac8674162a85020dae3c76d25defb8e5dbfbd264c5f5b499ac69d3f9ab5806b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3aa8382e-c5c2-db57-f005-879b9e2b5690`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mapRange_finsuppAntidiag_subset {e : μ ≃+ μ'} {s : Finset ι} {n : μ} :
    (finsuppAntidiag s n).map (mapRange.addEquiv e).toEmbedding ⊆ finsuppAntidiag s (e n) := by
  intro f
  simp only [mem_map, mem_finsuppAntidiag']
  rintro ⟨g, ⟨hsum, hsupp⟩, rfl⟩
  simp only [AddEquiv.toEquiv_eq_coe, mapRange.addEquiv_toEquiv, Equiv.coe_toEmbedding,
    mapRange.equiv_apply, EquivLike.coe_coe]
  constructor
  · rw [sum_mapRange_index (fun _ ↦ rfl), ← hsum, _root_.map_finsuppSum]
  · exact subset_trans (support_mapRange) hsupp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Finsupp/Variantac8674162a85020dae3c76d25defb8e5dbfbd264c5f5b499ac69d3f9ab5806b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Finsupp/Variantac8674162a85020dae3c76d25defb8e5dbfbd264c5f5b499ac69d3f9ab5806b3.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d334a0b11054857d65b721b7b854b0e98e18754f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
