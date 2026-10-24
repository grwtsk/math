# recordState

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7cf7ec2f62aa2ce157fdcefdb25b06f5fc82687c113275c1bf321417cbf15aa3",
  "kind": "def",
  "lexical_name": "recordState",
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
  "slug": "recordstate--315a25c21ba15b43feca23ca",
  "source": {
    "blob": "652b1230a50bd555e6fc6fbda28cdaf4b04287d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 53,
    "path": "GRWTSK/Analysis/CriticalTwoModeRecordSequence/Variantee6b50e12e99442f484c69940eefc117d7321b289110f24bfd3b5e7cb41bf75f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:315a25c21ba15b43feca23ca24be7827c34c58a1591e7778dd45588440a843cc",
  "verification": {
    "reference": "docs/verification/Analysis/CriticalTwoModeRecordSequence/Variantee6b50e12e99442f484c69940eefc117d7321b289110f24bfd3b5e7cb41bf75f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7cf7ec2f62aa2ce157fdcefdb25b06f5fc82687c113275c1bf321417cbf15aa3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def recordState {α t₀ : ℝ} (hα : BadlyApproximable α) (ht₀ : 0 < t₀) :
    ℕ → {T : ℝ // t₀ ≤ T}
  | 0 => ⟨t₀,le_rfl⟩
  | j+1 => nextRecordState hα ht₀ (recordState hα ht₀ j)

/-- The record time in this module, with the following exact parameterization.

def recordTime {α t₀ : ℝ} (hα : BadlyApproximable α) (ht₀ : 0 < t₀) (j : ℕ) : ℝ :=
(recordState hα ht₀ j).val
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/CriticalTwoModeRecordSequence/Variantee6b50e12e99442f484c69940eefc117d7321b289110f24bfd3b5e7cb41bf75f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/CriticalTwoModeRecordSequence/Variantee6b50e12e99442f484c69940eefc117d7321b289110f24bfd3b5e7cb41bf75f.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `652b1230a50bd555e6fc6fbda28cdaf4b04287d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
