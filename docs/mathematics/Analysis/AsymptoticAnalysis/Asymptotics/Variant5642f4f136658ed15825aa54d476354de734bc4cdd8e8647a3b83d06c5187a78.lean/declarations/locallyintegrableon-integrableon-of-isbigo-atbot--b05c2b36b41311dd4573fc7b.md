# LocallyIntegrableOn.integrableOn_of_isBigO_atBot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8b9d4bf8b6249534cfe4313c7876abb9de45081d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 128,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/5642f4f136658ed15825aa54d476354de734bc4cdd8e8647a3b83d06c5187a78.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3ea942dd-7d43-b964-b7ac-49506a990af8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a6995b99-1f15-ed72-9389-554a0f25d825",
  "kind": "theorem",
  "lexical_name": "LocallyIntegrableOn.integrableOn_of_isBigO_atBot",
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
  "slug": "locallyintegrableon-integrableon-of-isbigo-atbot--b05c2b36b41311dd4573fc7b",
  "source": {
    "blob": "8b9d4bf8b6249534cfe4313c7876abb9de45081d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 128,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variant5642f4f136658ed15825aa54d476354de734bc4cdd8e8647a3b83d06c5187a78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b05c2b36b41311dd4573fc7b27a8609b8255f7d64f78c385e891fe0ebcc26361",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Asymptotics/Variant5642f4f136658ed15825aa54d476354de734bc4cdd8e8647a3b83d06c5187a78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6995b99-1f15-ed72-9389-554a0f25d825`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LocallyIntegrableOn.integrableOn_of_isBigO_atBot [IsMeasurablyGenerated (atBot (α := α))]
    (hf : LocallyIntegrableOn f (Iic a) μ) (ho : f =O[atBot] g)
    (hg : IntegrableAtFilter g atBot μ) : IntegrableOn f (Iic a) μ := by
  refine integrableOn_Iic_iff_integrableAtFilter_atBot.mpr ⟨ho.integrableAtFilter ?_ hg, hf⟩
  exact ⟨Iic a, Iic_mem_atBot a, hf.aestronglyMeasurable⟩

/-- If `f` is locally integrable on `[a, ∞)`, and `f =O[atTop] g`, for some
`g` integrable at `atTop`, then `f` is integrable on `[a, ∞)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Asymptotics/Variant5642f4f136658ed15825aa54d476354de734bc4cdd8e8647a3b83d06c5187a78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variant5642f4f136658ed15825aa54d476354de734bc4cdd8e8647a3b83d06c5187a78.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b9d4bf8b6249534cfe4313c7876abb9de45081d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
