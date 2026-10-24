# hasProd_ite_div_hasProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6aa6cee-880b-6404-6c8f-cde8f367708e",
  "kind": "theorem",
  "lexical_name": "hasProd_ite_div_hasProd",
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
  "slug": "hasprod-ite-div-hasprod--d098696c819254739f96af4a",
  "source": {
    "blob": "a388fffe00ac421b88935059d5300a63f90641b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 131,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d098696c819254739f96af4a899d6801444de56ec2581c033f2bc7b3bc2fd22f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6aa6cee-880b-6404-6c8f-cde8f367708e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasProd_ite_div_hasProd [DecidableEq β] (hf : HasProd f a) (b : β) :
    HasProd (fun n ↦ ite (n = b) 1 (f n)) (a / f b) := by
  convert hf.update b 1 using 1
  · ext n
    rw [Function.update_apply]
  · rw [div_mul_eq_mul_div, one_mul]

/-- A more general version of `Multipliable.congr`, allowing the functions to
disagree on a finite set.

Note that this requires the target to be a group, and hence fails for products valued
in a ring. See `Multipliable.congr_cofinite₀` for a version applying in this case,
with an additional non-vanishing hypothesis.
-/
@[to_additive "A more general version of `Summable.congr`, allowing the functions to
disagree on a finite set."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a388fffe00ac421b88935059d5300a63f90641b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
