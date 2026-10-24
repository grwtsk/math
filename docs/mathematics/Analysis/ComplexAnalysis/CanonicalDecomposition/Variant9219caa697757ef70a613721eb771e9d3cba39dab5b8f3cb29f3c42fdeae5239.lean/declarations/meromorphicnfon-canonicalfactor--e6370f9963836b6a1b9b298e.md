# meromorphicNFOn_canonicalFactor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c781cce3-fe68-0c4b-060f-5a772721e1cb",
  "kind": "theorem",
  "lexical_name": "meromorphicNFOn_canonicalFactor",
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
  "slug": "meromorphicnfon-canonicalfactor--e6370f9963836b6a1b9b298e",
  "source": {
    "blob": "363bc7fdb88c837c745e0b26a1cdb8c8bec3923d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 125,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant9219caa697757ef70a613721eb771e9d3cba39dab5b8f3cb29f3c42fdeae5239.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6370f9963836b6a1b9b298e080610c353cb36e340f2a9a20ebdc4198abb6477",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant9219caa697757ef70a613721eb771e9d3cba39dab5b8f3cb29f3c42fdeae5239.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c781cce3-fe68-0c4b-060f-5a772721e1cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem meromorphicNFOn_canonicalFactor (h : w ∈ ball 0 R) :
    MeromorphicNFOn (canonicalFactor R w) Set.univ := by
  intro z hz
  obtain (rfl | h₁) := eq_or_ne z w
  · rw [meromorphicNFAt_iff_analyticAt_or]
    right
    refine ⟨meromorphic_canonicalFactor R z z, ?_, by simp⟩
    simpa [meromorphicOrderAt_canonicalFactor h] using WithTop.coe_lt_zero.mpr (by lia : -1 < 0)
  apply (analyticOnNhd_canonicalFactor R w z h₁).meromorphicNFAt

/-!
### Values of Canonical Factors
-/

open scoped ComplexOrder in
/--
The canonical factor `CanonicalFactor R w` has no zeros inside the ball of radius `R`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant9219caa697757ef70a613721eb771e9d3cba39dab5b8f3cb29f3c42fdeae5239.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant9219caa697757ef70a613721eb771e9d3cba39dab5b8f3cb29f3c42fdeae5239.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `363bc7fdb88c837c745e0b26a1cdb8c8bec3923d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
