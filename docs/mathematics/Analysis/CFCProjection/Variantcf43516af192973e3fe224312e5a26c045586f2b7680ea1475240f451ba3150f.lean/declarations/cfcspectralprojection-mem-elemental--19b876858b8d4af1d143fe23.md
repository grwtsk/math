# cfcSpectralProjection_mem_elemental

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b276c3cdd7836a22127d8d8edf3183e368736ba5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 98,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cf43516af192973e3fe224312e5a26c045586f2b7680ea1475240f451ba3150f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6429e2de-3e93-2d2e-ee84-9a192b0e5e58",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4b931f4e-4193-8542-4bf8-609b0649daf7",
  "kind": "theorem",
  "lexical_name": "cfcSpectralProjection_mem_elemental",
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
  "slug": "cfcspectralprojection-mem-elemental--19b876858b8d4af1d143fe23",
  "source": {
    "blob": "b276c3cdd7836a22127d8d8edf3183e368736ba5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 98,
    "path": "GRWTSK/Analysis/CFCProjection/Variantcf43516af192973e3fe224312e5a26c045586f2b7680ea1475240f451ba3150f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19b876858b8d4af1d143fe237360d480d23f27e44c98113d4998f58eaa735197",
  "verification": {
    "reference": "docs/verification/Analysis/CFCProjection/Variantcf43516af192973e3fe224312e5a26c045586f2b7680ea1475240f451ba3150f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b931f4e-4193-8542-4bf8-609b0649daf7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cfcSpectralProjection_mem_elemental
    (A : H →L[ℂ] H) (hA : IsStarNormal A)
    (U : Set (spectrum ℂ A)) (hU : IsClopen U) :
    cfcSpectralProjection A hA U hU ∈ StarAlgebra.elemental ℂ A := by
  exact cfcHom_mem_elemental hA (spectralCharacteristic A U hU)

/-- Multiplicativity transfers characteristic-function idempotence to the operator. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/CFCProjection/Variantcf43516af192973e3fe224312e5a26c045586f2b7680ea1475240f451ba3150f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/CFCProjection/Variantcf43516af192973e3fe224312e5a26c045586f2b7680ea1475240f451ba3150f.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b276c3cdd7836a22127d8d8edf3183e368736ba5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
