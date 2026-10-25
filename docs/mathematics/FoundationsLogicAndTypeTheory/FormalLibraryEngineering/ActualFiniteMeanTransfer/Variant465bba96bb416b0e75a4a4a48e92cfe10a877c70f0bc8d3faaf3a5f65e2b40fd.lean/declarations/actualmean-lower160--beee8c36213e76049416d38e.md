# actualMean_lower160

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ff6a67b8-f226-7ede-615b-9ac6e0166a4e",
  "kind": "theorem",
  "lexical_name": "actualMean_lower160",
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
  "slug": "actualmean-lower160--beee8c36213e76049416d38e",
  "source": {
    "blob": "271813bc86cdf393cfe84956dd4c6ecfe73aa81b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 24,
    "line": 15,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ActualFiniteMeanTransfer/Variant465bba96bb416b0e75a4a4a48e92cfe10a877c70f0bc8d3faaf3a5f65e2b40fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:beee8c36213e76049416d38e5436ae43129ac8d725c069f7581c8fa28ba869dc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ActualFiniteMeanTransfer/Variant465bba96bb416b0e75a4a4a48e92cfe10a877c70f0bc8d3faaf3a5f65e2b40fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff6a67b8-f226-7ede-615b-9ac6e0166a4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–24.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualMean_lower160 {A : ℝ} (hA : 10 ≤ A)
    (hJ : -(3033/200:ℝ)-206/A^2 < sourceMeanOffset A)
    (hS : -(1/500000:ℝ) ≤ (normalizedZeroSquare A).re) :
    -(17225001/1000000:ℝ) < sourceMean A := by
  have hsq : (100:ℝ) ≤ A^2 := by nlinarith [sq_nonneg (A-10)]
  have hb : (206:ℝ)/A^2 ≤ 206/100 :=
    div_le_div_of_nonneg_left (by norm_num) (by norm_num) hsq
  rw [sourceMean_eq_offset_zero (by linarith : 1 ≤ A)]
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ActualFiniteMeanTransfer/Variant465bba96bb416b0e75a4a4a48e92cfe10a877c70f0bc8d3faaf3a5f65e2b40fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ActualFiniteMeanTransfer/Variant465bba96bb416b0e75a4a4a48e92cfe10a877c70f0bc8d3faaf3a5f65e2b40fd.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `271813bc86cdf393cfe84956dd4c6ecfe73aa81b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
