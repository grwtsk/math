# literal_mode_exponential_factor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea56cd08-1218-6e8c-7815-2b4a4f2a501c",
  "kind": "theorem",
  "lexical_name": "literal_mode_exponential_factor",
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
  "slug": "literal-mode-exponential-factor--f9dfffa9c0ae2e528cc0dda7",
  "source": {
    "blob": "0262b7994e1a58e0c4df5914f172972648921147",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 27,
    "path": "GRWTSK/Analysis/NativeOffGridPhaseCarrier/Variant9756337323c164998b1177905d4b61591dc7b2c5c3db0c40422a3fddfb538176.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9dfffa9c0ae2e528cc0dda72182bfcaefc48b4ff3ebbf72d080b8cdf34bb251",
  "verification": {
    "reference": "docs/verification/Analysis/NativeOffGridPhaseCarrier/Variant9756337323c164998b1177905d4b61591dc7b2c5c3db0c40422a3fddfb538176.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea56cd08-1218-6e8c-7815-2b4a4f2a501c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_mode_exponential_factor (A : ℝ) :
    Complex.exp (2 * (A : ℂ) * mode) =
      (Real.exp (A / 2) : ℂ) * Complex.exp ((A : ℂ) * (2 * (Real.pi : ℂ) * Complex.I)) := by
  rw [Complex.ofReal_exp, ← Complex.exp_add]
  congr 1
  unfold mode
  push_cast
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/NativeOffGridPhaseCarrier/Variant9756337323c164998b1177905d4b61591dc7b2c5c3db0c40422a3fddfb538176.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/NativeOffGridPhaseCarrier/Variant9756337323c164998b1177905d4b61591dc7b2c5c3db0c40422a3fddfb538176.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0262b7994e1a58e0c4df5914f172972648921147` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
