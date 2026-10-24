# UniformIntegrable.spec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd30d3f1-9a48-0c55-6d1e-88d437b90c1e",
  "kind": "theorem",
  "lexical_name": "UniformIntegrable.spec",
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
  "slug": "uniformintegrable-spec--8ab09a4aaa26e6c23289ebc4",
  "source": {
    "blob": "313652b796b799acabeca063febbf5151bb2cc3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 914,
    "line": 898,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/UniformIntegrable/Variantd48a79591aefff38df45e6b3a538454c201c5987902f976a564722c1203571a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ab09a4aaa26e6c23289ebc4a9db31dcfece3797360b00308749a949cd785082",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/UniformIntegrable/Variantd48a79591aefff38df45e6b3a538454c201c5987902f976a564722c1203571a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd30d3f1-9a48-0c55-6d1e-88d437b90c1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 898–914.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem UniformIntegrable.spec (hp : p ≠ 0) (hp' : p ≠ ∞) (hfu : UniformIntegrable f p μ) {ε : ℝ≥0∞}
    (hε : 0 < ε) :
    ∃ C : ℝ≥0, ∀ i, eLpNorm ({ x | C ≤ ‖f i x‖₊ }.indicator (f i)) p μ ≤ ε := by
  set g : ι → α → β := fun i => (hfu.aestronglyMeasurable i).mk
  have hgmeas i : StronglyMeasurable (g i) := (hfu.aestronglyMeasurable i).stronglyMeasurable_mk
  have hgunif : UniformIntegrable g p μ := hfu.ae_eq fun i => (hfu.aestronglyMeasurable i).ae_eq_mk
  obtain ⟨C, hC⟩ := hgunif.spec' hp hp' hgmeas hε
  refine ⟨C, fun i => le_trans (le_of_eq <| eLpNorm_congr_ae ?_) (hC i)⟩
  filter_upwards [(hfu.aestronglyMeasurable i).ae_eq_mk] with x hx
  by_cases hfx : x ∈ { x | C ≤ ‖f i x‖₊ }
  · rw [Set.indicator_of_mem hfx, Set.indicator_of_mem, hx]
    rwa [Set.mem_ofPred, hx] at hfx
  · rw [Set.indicator_of_notMem hfx, Set.indicator_of_notMem]
    rwa [Set.mem_ofPred, hx] at hfx

/-- The definition of uniform integrable in mathlib is equivalent to the definition commonly
found in literature. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/UniformIntegrable/Variantd48a79591aefff38df45e6b3a538454c201c5987902f976a564722c1203571a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/UniformIntegrable/Variantd48a79591aefff38df45e6b3a538454c201c5987902f976a564722c1203571a5.lean#L898).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `313652b796b799acabeca063febbf5151bb2cc3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
