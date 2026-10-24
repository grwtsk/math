# unnormalized_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a884e539-ae52-b6f4-47a3-42d3b31a5188",
  "kind": "theorem",
  "lexical_name": "unnormalized_norm",
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
  "slug": "unnormalized-norm--917082e0d77e6c8ddb89197b",
  "source": {
    "blob": "028b63dad3ccfda51f6248a3b1b0dbfba3238cfa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 51,
    "path": "GRWTSK/Topology/GeneralTopology/UnnormalizedDilationAttempt03/Variant722baa31b686434bd08fb85b48ece4cef482eb04dfb007c7992e300b18ca18cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:917082e0d77e6c8ddb89197b8dd33957919c3b8730f5c16cca48faebb3e70e34",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UnnormalizedDilationAttempt03/Variant722baa31b686434bd08fb85b48ece4cef482eb04dfb007c7992e300b18ca18cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a884e539-ae52-b6f4-47a3-42d3b31a5188`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unnormalized_norm (a : ℝ) (ha : 0 < a) (f : PositiveL2) :
    ‖unnormalized a ha f‖ = (Real.sqrt a)⁻¹ * ‖f‖ := by
  rw [unnormalized_eq_inv_sqrt_smul,norm_smul,norm_inv,dilate_norm]
  simp only [Complex.norm_real,Real.norm_eq_abs,abs_of_nonneg (Real.sqrt_nonneg a)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UnnormalizedDilationAttempt03/Variant722baa31b686434bd08fb85b48ece4cef482eb04dfb007c7992e300b18ca18cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UnnormalizedDilationAttempt03/Variant722baa31b686434bd08fb85b48ece4cef482eb04dfb007c7992e300b18ca18cb.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `028b63dad3ccfda51f6248a3b1b0dbfba3238cfa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
