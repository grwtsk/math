# positiveOnsetAtom_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa465a9d-1ccc-3a6b-e33f-4b89a9f05125",
  "kind": "theorem",
  "lexical_name": "positiveOnsetAtom_integral",
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
  "slug": "positiveonsetatom-integral--079f6d17f8f83b8f8fca2339",
  "source": {
    "blob": "c52fb99feec1d5374fdd2105cf80a0bd06d13f12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 53,
    "path": "GRWTSK/Analysis/MeasureTheory/Attempt02/Variantbdca980469fa3c274b772093d3696e31ea5db931673321609cf82721f74dbae3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:079f6d17f8f83b8f8fca2339d7da0a8d332f10379ac8215b1efc285bca8c22e0",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Attempt02/Variantbdca980469fa3c274b772093d3696e31ea5db931673321609cf82721f74dbae3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa465a9d-1ccc-3a6b-e33f-4b89a9f05125`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positiveOnsetAtom_integral (p : Nat.Primes) (k : ℕ) :
    (∫ t : ℝ, positiveOnsetAtom p k t) = primeMomentAtom 1 p k := by
  unfold positiveOnsetAtom
  rw [integral_indicator_const _ measurableSet_Ioo,
    Real.volume_real_Ioo_of_le (powerOnset_pos p k).le,sub_zero,smul_eq_mul]
  unfold powerOnset powerWeight primeMomentAtom momentAtom
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Attempt02/Variantbdca980469fa3c274b772093d3696e31ea5db931673321609cf82721f74dbae3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Attempt02/Variantbdca980469fa3c274b772093d3696e31ea5db931673321609cf82721f74dbae3.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c52fb99feec1d5374fdd2105cf80a0bd06d13f12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
