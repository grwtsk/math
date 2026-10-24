# rhOn_iff_on_zero_cover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a69226a-1250-1d13-f4b6-5174d06ead75",
  "kind": "theorem",
  "lexical_name": "rhOn_iff_on_zero_cover",
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
  "slug": "rhon-iff-on-zero-cover--5eac80d3826a4bb904f0d478",
  "source": {
    "blob": "2d80b87f13bb16d263a5cd6aba5fc4e7d888dbe0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 43,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripHeightDescent.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5eac80d3826a4bb904f0d4782bc513a570d0eb7de56f7ab941e5c68e63de2d84",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripHeightDescent.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a69226a-1250-1d13-f4b6-5174d06ead75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rhOn_iff_on_zero_cover {ι : Type*} {U : Set ℂ}
    (V : ι → Set ℂ) (hsub : ∀ i, V i ⊆ U)
    (hcover : ∀ z, z ∈ U → NontrivialZetaZero z → ∃ i, z ∈ V i) :
    RHOn U ↔ ∀ i, RHOn (V i) := by
  constructor
  · intro hU i
    exact rhOn_restrict (hsub i) hU
  · intro hlocal z hz hzero
    obtain ⟨i, hi⟩ := hcover z hz hzero
    exact hlocal i z hi hzero

/-- Binary gluing illustrates the distinction from a global statement-equivalence
transition: both local pieces, not either one alone, supply the union statement. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripHeightDescent.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripHeightDescent.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d80b87f13bb16d263a5cd6aba5fc4e7d888dbe0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
