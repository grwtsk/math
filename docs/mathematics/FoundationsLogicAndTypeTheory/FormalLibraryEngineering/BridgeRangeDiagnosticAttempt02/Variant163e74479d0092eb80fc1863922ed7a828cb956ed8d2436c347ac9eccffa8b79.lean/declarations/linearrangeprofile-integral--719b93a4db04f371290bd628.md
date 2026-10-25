# linearRangeProfile_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96cbce5a-c7ba-9bfa-3bdf-507d1f5e472e",
  "kind": "theorem",
  "lexical_name": "linearRangeProfile_integral",
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
  "slug": "linearrangeprofile-integral--719b93a4db04f371290bd628",
  "source": {
    "blob": "dec0c123693bc085e0f331ee317acf350fd5c509",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 29,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BridgeRangeDiagnosticAttempt02/Variant163e74479d0092eb80fc1863922ed7a828cb956ed8d2436c347ac9eccffa8b79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:719b93a4db04f371290bd6285b170a685dd06d124e5280d5d8b2b2ee15cc0d57",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BridgeRangeDiagnosticAttempt02/Variant163e74479d0092eb80fc1863922ed7a828cb956ed8d2436c347ac9eccffa8b79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96cbce5a-c7ba-9bfa-3bdf-507d1f5e472e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem linearRangeProfile_integral (L u : ℝ) :
    (∫ t in 0..u,linearRangeProfile L t)=u^2/(2*L) := by
  have hd (t : ℝ) : HasDerivAt (fun t : ℝ=>t^2/2) t t := by
    convert ((hasDerivAt_id t).pow 2).div_const 2 using 1 <;>
      first | rfl | (dsimp only [id_eq];ring)
  have he := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun t _=>hd t) (continuous_id.intervalIntegrable (μ:=volume) 0 u)
  simp only [zero_pow (by norm_num : 2≠0),zero_div,sub_zero] at he
  unfold linearRangeProfile
  rw [intervalIntegral.integral_div,he]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BridgeRangeDiagnosticAttempt02/Variant163e74479d0092eb80fc1863922ed7a828cb956ed8d2436c347ac9eccffa8b79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BridgeRangeDiagnosticAttempt02/Variant163e74479d0092eb80fc1863922ed7a828cb956ed8d2436c347ac9eccffa8b79.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dec0c123693bc085e0f331ee317acf350fd5c509` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
