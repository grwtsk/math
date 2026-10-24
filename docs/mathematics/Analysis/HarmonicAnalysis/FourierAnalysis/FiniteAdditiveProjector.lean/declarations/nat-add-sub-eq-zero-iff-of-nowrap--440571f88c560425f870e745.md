# nat_add_sub_eq_zero_iff_of_noWrap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac6f3635-f08d-9cf3-285e-ccf4f25c5d19",
  "kind": "theorem",
  "lexical_name": "nat_add_sub_eq_zero_iff_of_noWrap",
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
  "slug": "nat-add-sub-eq-zero-iff-of-nowrap--440571f88c560425f870e745",
  "source": {
    "blob": "f7b8fa7513e0370e0f1f22ebb996f5877eceb21b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 61,
    "path": "GRWTSK/Analysis/Fourier/FiniteAdditiveProjector.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:440571f88c560425f870e74592c856db1b6bce62ec3bd47bbc926a8dc6d59fd1",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteAdditiveProjector.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac6f3635-f08d-9cf3-285e-ccf4f25c5d19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nat_add_sub_eq_zero_iff_of_noWrap {q M u v w : ℕ}
    (hq : 2 * M < q) (hu : u ∈ Finset.Icc 1 M) (hv : v ∈ Finset.Icc 1 M)
    (hw : w ∈ Finset.Icc 1 M) :
    (u : ZMod q) + (v : ZMod q) - (w : ZMod q) = 0 ↔ u + v = w := by
  obtain ⟨_, huM⟩ := Finset.mem_Icc.mp hu
  obtain ⟨_, hvM⟩ := Finset.mem_Icc.mp hv
  obtain ⟨_, hwM⟩ := Finset.mem_Icc.mp hw
  exact nat_add_sub_eq_zero_iff_of_lt (by omega) (by omega)

/-- The normalized character projector is the exact additive indicator on the
declared closed cube under the explicit no-wrap bound `2*M < q`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteAdditiveProjector.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/FiniteAdditiveProjector.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7b8fa7513e0370e0f1f22ebb996f5877eceb21b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
