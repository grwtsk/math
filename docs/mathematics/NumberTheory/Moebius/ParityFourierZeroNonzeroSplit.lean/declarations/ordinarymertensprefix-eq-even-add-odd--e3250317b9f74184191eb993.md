# ordinaryMertensPrefix_eq_even_add_odd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea2e599f-c208-75fc-ddcb-715b26b4505f",
  "kind": "theorem",
  "lexical_name": "ordinaryMertensPrefix_eq_even_add_odd",
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
  "slug": "ordinarymertensprefix-eq-even-add-odd--e3250317b9f74184191eb993",
  "source": {
    "blob": "94e323e1acfbe7953960e1f507636a8d486aa8f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 230,
    "path": "GRWTSK/NumberTheory/Moebius/ParityFourierZeroNonzeroSplit.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3250317b9f74184191eb99377d2f392f76ec0520be426ba693ac77a86ed6b26",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/ParityFourierZeroNonzeroSplit.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea2e599f-c208-75fc-ddcb-715b26b4505f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ordinaryMertensPrefix_eq_even_add_odd
    (b : ℕ) :
    ordinaryMertensPrefix b =
      parityMertensPrefix b 0 + parityMertensPrefix b 1 := by
  classical
  unfold ordinaryMertensPrefix parityMertensPrefix endpointParitySet
  have hcover :
      (Finset.Icc 1 b).filter (fun u => u % 2 = 0) ∪
          (Finset.Icc 1 b).filter (fun u => u % 2 = 1) =
        Finset.Icc 1 b := by
    ext u
    have hmod := Nat.mod_lt u (by omega : 0 < 2)
    simp only [Finset.mem_union, Finset.mem_filter, Finset.mem_Icc]
    omega
  have hdisj :
      Disjoint
        ((Finset.Icc 1 b).filter (fun u => u % 2 = 0))
        ((Finset.Icc 1 b).filter (fun u => u % 2 = 1)) := by
    simp only [Finset.disjoint_left, Finset.mem_filter]
    intro a ha hb
    omega
  rw [← Finset.sum_union hdisj, hcover]

/-- RH-scale dyadic square-energy hypothesis for parity-restricted Mertens
prefixes.  This is a conditional supplier, not an unconditional theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/ParityFourierZeroNonzeroSplit.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/ParityFourierZeroNonzeroSplit.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94e323e1acfbe7953960e1f507636a8d486aa8f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
