# eq_top_of_norm_lt_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:846d2829-aebd-d6ca-8c7d-35a600c3f3ca",
  "kind": "theorem",
  "lexical_name": "eq_top_of_norm_lt_one",
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
  "slug": "eq-top-of-norm-lt-one--75298bcfe0762b378141a99e",
  "source": {
    "blob": "1e78b3797df707a3021c48542db40ab62085bbaa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 224,
    "path": "GRWTSK/Topology/GeneralTopology/Units/Variant1b3a88f788b8300f63f5fa9939d76df8a3e4f99355590493b59d079015fb735d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75298bcfe0762b378141a99ecb2cf6dfbf9f6dde82bd9a45a89793b5f3b8d5b2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Units/Variant1b3a88f788b8300f63f5fa9939d76df8a3e4f99355590493b59d079015fb735d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:846d2829-aebd-d6ca-8c7d-35a600c3f3ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_top_of_norm_lt_one (I : Ideal R) {x : R} (hxI : x ∈ I) (hx : ‖1 - x‖ < 1) : I = ⊤ :=
  let u := Units.oneSub (1 - x) hx
  I.eq_top_iff_one.mpr <| by
    simpa only [show u.inv * x = 1 by simp [u]] using I.mul_mem_left u.inv hxI

/-- The `Ideal.closure` of a proper ideal in a normed ring with summable
geometric series is proper. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Units/Variant1b3a88f788b8300f63f5fa9939d76df8a3e4f99355590493b59d079015fb735d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Units/Variant1b3a88f788b8300f63f5fa9939d76df8a3e4f99355590493b59d079015fb735d.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e78b3797df707a3021c48542db40ab62085bbaa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
