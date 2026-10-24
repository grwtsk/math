# smul_ae_eq_self_of_mem_zpowers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f930cf2-8ade-46b6-be8f-e6b3b345970b",
  "kind": "theorem",
  "lexical_name": "smul_ae_eq_self_of_mem_zpowers",
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
  "slug": "smul-ae-eq-self-of-mem-zpowers--0c8ee490386cd99a5d41f27d",
  "source": {
    "blob": "c08ff8b65092e921bc0f6ac2791b8181f75f3384",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 95,
    "path": "GRWTSK/Analysis/MeasureTheory/AEStabilizer/Variant068360527b5bf9f9cb803b1fba838b230474c6335007597b9c302ae37f58193f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c8ee490386cd99a5d41f27dedc7c9db164389c5bc0b0b5640bdc326926c2a92",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/AEStabilizer/Variant068360527b5bf9f9cb803b1fba838b230474c6335007597b9c302ae37f58193f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f930cf2-8ade-46b6-be8f-e6b3b345970b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smul_ae_eq_self_of_mem_zpowers (hs : (x • s : Set α) =ᵐ[μ] s)
    (hy : y ∈ Subgroup.zpowers x) : (y • s : Set α) =ᵐ[μ] s := by
  rw [← MulAction.mem_aestabilizer, ← Subgroup.zpowers_le] at hs
  exact hs hy

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/AEStabilizer/Variant068360527b5bf9f9cb803b1fba838b230474c6335007597b9c302ae37f58193f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/AEStabilizer/Variant068360527b5bf9f9cb803b1fba838b230474c6335007597b9c302ae37f58193f.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c08ff8b65092e921bc0f6ac2791b8181f75f3384` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
