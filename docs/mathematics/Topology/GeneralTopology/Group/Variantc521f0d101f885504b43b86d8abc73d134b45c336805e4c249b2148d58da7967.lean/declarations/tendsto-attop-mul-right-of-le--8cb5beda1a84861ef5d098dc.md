# tendsto_atTop_mul_right_of_le'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:358c6933-8925-8eb0-2ef5-9be63148401e",
  "kind": "theorem",
  "lexical_name": "tendsto_atTop_mul_right_of_le'",
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
  "slug": "tendsto-attop-mul-right-of-le--8cb5beda1a84861ef5d098dc",
  "source": {
    "blob": "5279ed7a4c08544b00a27406c9f560a7bc9afa13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 53,
    "path": "GRWTSK/Topology/GeneralTopology/Group/Variantc521f0d101f885504b43b86d8abc73d134b45c336805e4c249b2148d58da7967.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8cb5beda1a84861ef5d098dccac7fb41972ae3781de098abd20f024e18553c81",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Group/Variantc521f0d101f885504b43b86d8abc73d134b45c336805e4c249b2148d58da7967.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:358c6933-8925-8eb0-2ef5-9be63148401e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_atTop_mul_right_of_le' (C : G) (hf : Tendsto f l atTop) (hg : ∀ᶠ x in l, C ≤ g x) :
    Tendsto (fun x => f x * g x) l atTop :=
  .atTop_of_mul_isBoundedUnder_le (g := g⁻¹) ⟨C⁻¹, by simpa⟩ (by simpa)

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Group/Variantc521f0d101f885504b43b86d8abc73d134b45c336805e4c249b2148d58da7967.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Group/Variantc521f0d101f885504b43b86d8abc73d134b45c336805e4c249b2148d58da7967.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5279ed7a4c08544b00a27406c9f560a7bc9afa13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
