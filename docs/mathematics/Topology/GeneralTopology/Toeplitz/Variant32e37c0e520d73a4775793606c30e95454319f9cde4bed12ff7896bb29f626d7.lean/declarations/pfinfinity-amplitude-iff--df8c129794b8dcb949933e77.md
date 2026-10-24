# pfInfinity_amplitude_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e2cae5c-427f-ed18-bef9-dc6a2bfc846c",
  "kind": "theorem",
  "lexical_name": "pfInfinity_amplitude_iff",
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
  "slug": "pfinfinity-amplitude-iff--df8c129794b8dcb949933e77",
  "source": {
    "blob": "f1d160eb2c2745149e6a640f6cd828b4b5565ddf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 41,
    "path": "GRWTSK/Topology/GeneralTopology/Toeplitz/Variant32e37c0e520d73a4775793606c30e95454319f9cde4bed12ff7896bb29f626d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df8c129794b8dcb949933e77fb0fa791f1ec836c1f77e8c427c80bf06fbb612c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Toeplitz/Variant32e37c0e520d73a4775793606c30e95454319f9cde4bed12ff7896bb29f626d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e2cae5c-427f-ed18-bef9-dc6a2bfc846c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pfInfinity_amplitude_iff (a : ℕ → ℝ) (t : ℝ) (ht : 0 < t) :
    PFInfinity (fun n => t * a n) ↔ PFInfinity a := by
  constructor
  · intro h k r c
    have he := h k r c
    rw [minor_amplitude] at he
    exact (mul_nonneg_iff_of_pos_left (pow_pos ht k)).mp he
  · intro h k r c
    rw [minor_amplitude]
    exact mul_nonneg (pow_pos ht k).le (h k r c)

/-- Each particular finite signed minor is continuous in the full coefficient tape. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Toeplitz/Variant32e37c0e520d73a4775793606c30e95454319f9cde4bed12ff7896bb29f626d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Toeplitz/Variant32e37c0e520d73a4775793606c30e95454319f9cde4bed12ff7896bb29f626d7.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1d160eb2c2745149e6a640f6cd828b4b5565ddf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
