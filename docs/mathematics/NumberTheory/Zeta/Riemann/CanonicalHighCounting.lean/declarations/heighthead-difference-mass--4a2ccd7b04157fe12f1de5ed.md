# heightHead_difference_mass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c22c582-7167-e8d6-223e-8aded1aacf71",
  "kind": "theorem",
  "lexical_name": "heightHead_difference_mass",
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
  "slug": "heighthead-difference-mass--4a2ccd7b04157fe12f1de5ed",
  "source": {
    "blob": "dd4a7447fa9441839b2e76e0a0023d4e33249228",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 36,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalHighCounting.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a2ccd7b04157fe12f1de5ed974136ec192e509f7790738b6821988c19739369",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalHighCounting.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c22c582-7167-e8d6-223e-8aded1aacf71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem heightHead_difference_mass {a b : ℝ} (hab : a ≤ b) :
    (∑ z ∈ heightHead b \ heightHead a, multiplicity z) + heightCount a =
      heightCount b := by
  classical
  have hsub := heightHead_mono hab
  have hd : Disjoint (heightHead a) (heightHead b \ heightHead a) := by
    apply Finset.disjoint_left.mpr
    intro z hz hz'
    exact (Finset.mem_sdiff.mp hz').2 hz
  have hu : heightHead a ∪ (heightHead b \ heightHead a) = heightHead b := by
    ext z
    simp only [Finset.mem_union, Finset.mem_sdiff]
    constructor
    · rintro (hz | ⟨hz, _⟩)
      · exact hsub hz
      · exact hz
    · intro hz
      by_cases ha : z ∈ heightHead a
      · exact Or.inl ha
      · exact Or.inr ⟨hz, ha⟩
  unfold heightCount
  rw [add_comm, ← Finset.sum_union hd, hu]

/-- A unit increment lies inside the old band; overlapping bands are only overcounts. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalHighCounting.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalHighCounting.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd4a7447fa9441839b2e76e0a0023d4e33249228` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
