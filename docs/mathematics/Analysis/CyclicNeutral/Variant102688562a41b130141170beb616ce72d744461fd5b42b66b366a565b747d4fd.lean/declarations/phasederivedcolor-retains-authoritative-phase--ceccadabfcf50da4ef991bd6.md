# phaseDerivedColor_retains_authoritative_phase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "32cf9b25e31a92bfe7ac47fda14088a11b25ed11",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 586,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/102688562a41b130141170beb616ce72d744461fd5b42b66b366a565b747d4fd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7a300c84-262f-aa51-1815-727f8306c132",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b36f3171-cc7f-4b5e-201c-597703b5e751",
  "kind": "theorem",
  "lexical_name": "phaseDerivedColor_retains_authoritative_phase",
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
  "slug": "phasederivedcolor-retains-authoritative-phase--ceccadabfcf50da4ef991bd6",
  "source": {
    "blob": "32cf9b25e31a92bfe7ac47fda14088a11b25ed11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 596,
    "line": 586,
    "path": "GRWTSK/Analysis/CyclicNeutral/Variant102688562a41b130141170beb616ce72d744461fd5b42b66b366a565b747d4fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ceccadabfcf50da4ef991bd68aba77f4ac6189f7fdbc5898716e2bec08562d81",
  "verification": {
    "reference": "docs/verification/Analysis/CyclicNeutral/Variant102688562a41b130141170beb616ce72d744461fd5b42b66b366a565b747d4fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b36f3171-cc7f-4b5e-201c-597703b5e751`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 586–596.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem phaseDerivedColor_retains_authoritative_phase
    {mid amplitude : ℝ} (derived : PhaseDerivedColor mid amplitude) :
    ∃ phase : NormalizedPhase,
      phase = derived.phase ∧
        derived.sample = colorSampleAt mid amplitude phase := by
  exact ⟨derived.phase, rfl, derived.sample_eq⟩

/-! ## Authority boundary / non-claims -/

/-- A derived color sample is not evidence for an arithmetic torsion claim. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/CyclicNeutral/Variant102688562a41b130141170beb616ce72d744461fd5b42b66b366a565b747d4fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/CyclicNeutral/Variant102688562a41b130141170beb616ce72d744461fd5b42b66b366a565b747d4fd.lean#L586).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32cf9b25e31a92bfe7ac47fda14088a11b25ed11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
