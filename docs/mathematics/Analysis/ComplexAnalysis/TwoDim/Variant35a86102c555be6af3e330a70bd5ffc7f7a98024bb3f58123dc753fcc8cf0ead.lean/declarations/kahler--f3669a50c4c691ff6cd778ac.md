# kahler

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d3153767d6ced8f971c3f85a2174bc13c59c8047",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 625,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/35a86102c555be6af3e330a70bd5ffc7f7a98024bb3f58123dc753fcc8cf0ead.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:69e51899-a763-1f22-8c1d-6f13ee022fed",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:028e2844-a8a4-3df9-9930-f4355b747dae",
  "kind": "theorem",
  "lexical_name": "kahler",
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
  "slug": "kahler--f3669a50c4c691ff6cd778ac",
  "source": {
    "blob": "d3153767d6ced8f971c3f85a2174bc13c59c8047",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 646,
    "line": 625,
    "path": "GRWTSK/Analysis/ComplexAnalysis/TwoDim/Variant35a86102c555be6af3e330a70bd5ffc7f7a98024bb3f58123dc753fcc8cf0ead.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3669a50c4c691ff6cd778ace1a2407cf17ecaf5417073cbabb87b867b04e8a5",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/TwoDim/Variant35a86102c555be6af3e330a70bd5ffc7f7a98024bb3f58123dc753fcc8cf0ead.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:028e2844-a8a4-3df9-9930-f4355b747dae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 625–646.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem kahler (w z : ℂ) : Complex.orientation.kahler w z = conj w * z := by
  rw [Orientation.kahler_apply_apply]
  ext1 <;> simp
#align complex.kahler Complex.kahler

end Complex

namespace Orientation

local notation "ω" => o.areaForm

local notation "J" => o.rightAngleRotation

open Complex

-- Porting note: The instance `finrank_real_complex_fact` cannot be found by synthesis for
-- `areaForm_map`, `rightAngleRotation_map` and `kahler_map` in the three theorems below,
-- so it has to be provided by unification (i.e. by naming the instance-implicit argument where
-- it belongs and using `(hF := _)`).

/-- The area form on an oriented real inner product space of dimension 2 can be evaluated in terms
of a complex-number representation of the space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/TwoDim/Variant35a86102c555be6af3e330a70bd5ffc7f7a98024bb3f58123dc753fcc8cf0ead.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/TwoDim/Variant35a86102c555be6af3e330a70bd5ffc7f7a98024bb3f58123dc753fcc8cf0ead.lean#L625).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3153767d6ced8f971c3f85a2174bc13c59c8047` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
