# lintegral_mono_fun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:14ad314e-e9a9-52e0-18f2-766699da52f3",
  "kind": "theorem",
  "lexical_name": "lintegral_mono_fun",
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
  "slug": "lintegral-mono-fun--398e7f68e91d4ef3ef5b0221",
  "source": {
    "blob": "ceba4050ead835d878238481b209ef6d752ea59a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1109,
    "line": 1101,
    "path": "GRWTSK/Analysis/MeasureTheory/SimpleFunc/Variant289dc91d1997bac5099147071d34e4e0f0d8478f1e169bb65dfa6ebe0c01a253.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:398e7f68e91d4ef3ef5b0221e1003467e70847239835c2abea5536a7ac5d7f39",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SimpleFunc/Variant289dc91d1997bac5099147071d34e4e0f0d8478f1e169bb65dfa6ebe0c01a253.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14ad314e-e9a9-52e0-18f2-766699da52f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1101–1109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_mono_fun {f g : α →ₛ ℝ≥0∞} (h : f ≤ g) : f.lintegral μ ≤ g.lintegral μ := by
  refine Monotone.of_left_le_map_sup (f := (lintegral · μ)) (fun f g ↦ ?_) h
  calc
    f.lintegral μ = ((pair f g).map Prod.fst).lintegral μ := by rw [map_fst_pair]
    _ ≤ ((pair f g).map fun p ↦ p.1 ⊔ p.2).lintegral μ := by
      simp only [map_lintegral]
      gcongr
      exact le_sup_left

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SimpleFunc/Variant289dc91d1997bac5099147071d34e4e0f0d8478f1e169bb65dfa6ebe0c01a253.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SimpleFunc/Variant289dc91d1997bac5099147071d34e4e0f0d8478f1e169bb65dfa6ebe0c01a253.lean#L1101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ceba4050ead835d878238481b209ef6d752ea59a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
