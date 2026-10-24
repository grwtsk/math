# shiftedValue_im_ne_zero_of_realZeroExclusion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55851433-565b-cc6a-df1f-202ac09e45b6",
  "kind": "theorem",
  "lexical_name": "shiftedValue_im_ne_zero_of_realZeroExclusion",
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
  "slug": "shiftedvalue-im-ne-zero-of-realzeroexclusion--dd23bf2ca61c52fba2065d5f",
  "source": {
    "blob": "023326229fc518b9cc59df720322edc8ca645298",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 202,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZeroObjectPlanning/Variantf9ec802ac98181c4e3efd45203e8387155f0eb5086a4050b1026a2f0a1942dda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd23bf2ca61c52fba2065d5f8414aec86b10d8521cfbe001f463569e86033a45",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ZeroObjectPlanning/Variantf9ec802ac98181c4e3efd45203e8387155f0eb5086a4050b1026a2f0a1942dda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55851433-565b-cc6a-df1f-202ac09e45b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shiftedValue_im_ne_zero_of_realZeroExclusion
    (h : RealZeroExclusionObligation) (o : ZeroOccurrence) :
    (shiftedValue o).im ≠ 0 := by
  intro hz
  have hi : o.1.val.im = 0 := by simpa [shiftedValue] using hz
  have he : (o.1.val.re : ℂ) = o.1.val := by
    apply Complex.ext <;> simp [hi]
  apply h o.1.val.re o.1.property.2.1 o.1.property.2.2
  simpa [he] using o.1.property.1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZeroObjectPlanning/Variantf9ec802ac98181c4e3efd45203e8387155f0eb5086a4050b1026a2f0a1942dda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZeroObjectPlanning/Variantf9ec802ac98181c4e3efd45203e8387155f0eb5086a4050b1026a2f0a1942dda.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `023326229fc518b9cc59df720322edc8ca645298` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
