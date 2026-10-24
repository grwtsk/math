# ae_differentiableAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4897f45-807a-f978-e1c3-2e2117e47b97",
  "kind": "theorem",
  "lexical_name": "ae_differentiableAt",
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
  "slug": "ae-differentiableat--bac3f4d450a18f8c53cf8edd",
  "source": {
    "blob": "3403fb5738c0bcee2c8a0e9eda236acf69620a52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 457,
    "line": 451,
    "path": "GRWTSK/Topology/GeneralTopology/AbsolutelyContinuous/Variant088ecb676a1c3226c4915ef6f4a74f991aa23738df0c20f501add346cc090ef3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bac3f4d450a18f8c53cf8edd587ef69ee84768316eb0699181579d6ff411f54b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AbsolutelyContinuous/Variant088ecb676a1c3226c4915ef6f4a74f991aa23738df0c20f501add346cc090ef3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4897f45-807a-f978-e1c3-2e2117e47b97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 451–457.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ae_differentiableAt {f : ℝ → ℝ} {a b : ℝ}
    (hf : AbsolutelyContinuousOnInterval f a b) :
    ∀ᵐ (x : ℝ), x ∈ uIcc a b → DifferentiableAt ℝ f x :=
  hf.boundedVariationOn.ae_differentiableAt_of_mem_uIcc

/-- If `f` is interval integrable on `a..b` and `c ∈ uIcc a b`, then `fun x ↦ ∫ v in c..x, f v` is
absolutely continuous on `uIcc a b`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AbsolutelyContinuous/Variant088ecb676a1c3226c4915ef6f4a74f991aa23738df0c20f501add346cc090ef3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AbsolutelyContinuous/Variant088ecb676a1c3226c4915ef6f4a74f991aa23738df0c20f501add346cc090ef3.lean#L451).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3403fb5738c0bcee2c8a0e9eda236acf69620a52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
