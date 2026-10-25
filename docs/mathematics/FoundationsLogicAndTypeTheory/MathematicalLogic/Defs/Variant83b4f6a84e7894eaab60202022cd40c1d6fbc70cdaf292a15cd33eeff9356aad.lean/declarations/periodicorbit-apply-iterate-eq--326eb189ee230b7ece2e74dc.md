# periodicOrbit_apply_iterate_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55a8ab54-c7ed-ef20-9a7b-6ebd9980efe7",
  "kind": "theorem",
  "lexical_name": "periodicOrbit_apply_iterate_eq",
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
  "slug": "periodicorbit-apply-iterate-eq--326eb189ee230b7ece2e74dc",
  "source": {
    "blob": "b1a24d13a4eadbfd3c434bbe9548bce54007cdd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 467,
    "line": 462,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant83b4f6a84e7894eaab60202022cd40c1d6fbc70cdaf292a15cd33eeff9356aad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:326eb189ee230b7ece2e74dcc74fe9f57b2fa5d46c92e1dcd59e25704468d4a2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant83b4f6a84e7894eaab60202022cd40c1d6fbc70cdaf292a15cd33eeff9356aad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55a8ab54-c7ed-ef20-9a7b-6ebd9980efe7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 462–467.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem periodicOrbit_apply_iterate_eq (hx : x ∈ periodicPts f) (n : ℕ) :
    periodicOrbit f (f^[n] x) = periodicOrbit f x :=
  Eq.symm <| Cycle.coe_eq_coe.2 <| .intro n <|
    List.ext_get (by simp [minimalPeriod_apply_iterate hx]) fun m _ _ ↦ by
      simp [List.getElem_rotate, iterate_add_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant83b4f6a84e7894eaab60202022cd40c1d6fbc70cdaf292a15cd33eeff9356aad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant83b4f6a84e7894eaab60202022cd40c1d6fbc70cdaf292a15cd33eeff9356aad.lean#L462).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1a24d13a4eadbfd3c434bbe9548bce54007cdd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
