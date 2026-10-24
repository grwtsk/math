# known_add_fourfold_le_count_of_off_line

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b50e0b2-c8a3-864b-730e-aba361af78ec",
  "kind": "theorem",
  "lexical_name": "known_add_fourfold_le_count_of_off_line",
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
  "slug": "known-add-fourfold-le-count-of-off-line--0c0839252d20ccc09ed24123",
  "source": {
    "blob": "d5ec9680b27aca7c73bde737c84bae21df795cf3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 103,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ConjugateQuartetBudget.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c0839252d20ccc09ed24123d9099a3814d827b78e89c94b1f88ee70cd73ddd8",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/ConjugateQuartetBudget.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b50e0b2-c8a3-864b-730e-aba361af78ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem known_add_fourfold_le_count_of_off_line (T : ℝ) (U : Set ℂ)
    (known : Finset ZeroPoint) (subset : known ⊆ regionHead T U)
    (knownLine : ∀ z ∈ known, z.1.re = 1 / 2)
    (reflectStable : ∀ s ∈ U, criticalReflection s ∈ U)
    (conjugateStable : ∀ s ∈ U, zeroConjugate s ∈ U)
    (z : ZeroPoint) (member : z ∈ regionHead T U) (offLine : z.1.re ≠ 1 / 2) :
    mass known multiplicity + 4 * multiplicity z ≤ regionCount T U := by
  classical
  have cMember := conjugated_mem_regionHead T U z member conjugateStable
  have rMember := reflected_mem_regionHead T U z member reflectStable
  have rcMember := reflected_mem_regionHead T U (conjugated z) cMember reflectStable
  have cOff : (conjugated z).1.re ≠ 1 / 2 := by simpa only [conjugated_re] using offLine
  have outside (w : ZeroPoint) (hw : w.1.re ≠ 1 / 2) : w ∉ known :=
    fun h => hw (knownLine w h)
  rcases quartet_distinct z offLine with ⟨hab, hac, had, hbc, hbd, hcd⟩
  have bound := known_add_four_le_mass (regionHead T U) known multiplicity subset
    z (reflected z) (conjugated z) (reflected (conjugated z))
    member rMember cMember rcMember
    (outside z offLine) (outside (reflected z) (reflected_off_line z offLine))
    (outside (conjugated z) cOff)
    (outside (reflected (conjugated z)) (reflected_off_line (conjugated z) cOff))
    hab hac had hbc hbd hcd
  simp only [multiplicity_reflected, multiplicity_conjugated] at bound
  change mass known multiplicity + 4 * multiplicity z ≤
    mass (regionHead T U) multiplicity
  omega

/-- A selected lower multiplicity m costs FOUR copies, only in a both-stable region. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ConjugateQuartetBudget.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ConjugateQuartetBudget.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5ec9680b27aca7c73bde737c84bae21df795cf3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
