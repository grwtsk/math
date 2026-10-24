# Multipliable.tprod_mul_tprod_compl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0942c1628f54ccad7a8582fdad91f7c82e98d80e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 606,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fcd020c18c468c84578866deb3712598d21a9c1dca4bc95209a614ee226d2b73.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:08827a56-6dac-4ed9-b50d-f73bde11ddcc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:28b6393e-48b8-99df-ac4d-4802f1885278",
  "kind": "theorem",
  "lexical_name": "Multipliable.tprod_mul_tprod_compl",
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
  "slug": "multipliable-tprod-mul-tprod-compl--214effaddcc17aeccc232ac8",
  "source": {
    "blob": "0942c1628f54ccad7a8582fdad91f7c82e98d80e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 615,
    "line": 606,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantfcd020c18c468c84578866deb3712598d21a9c1dca4bc95209a614ee226d2b73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:214effaddcc17aeccc232ac8e9de198099097147f8d6f53315038acaef8a4f8d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variantfcd020c18c468c84578866deb3712598d21a9c1dca4bc95209a614ee226d2b73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28b6393e-48b8-99df-ac4d-4802f1885278`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 606–615.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Multipliable.tprod_mul_tprod_compl {s : Set β}
    (hs : Multipliable (f ∘ (↑) : s → α)) (hsc : Multipliable (f ∘ (↑) : ↑sᶜ → α)) :
    (∏' x : s, f x) * ∏' x : ↑sᶜ, f x = ∏' x, f x :=
  (hs.hasProd.mul_compl hsc.hasProd).tprod_eq.symm

@[deprecated (since := "2025-04-12")] alias tsum_add_tsum_compl := Summable.tsum_add_tsum_compl
@[to_additive existing, deprecated (since := "2025-04-12")] alias tprod_mul_tprod_compl :=
    Multipliable.tprod_mul_tprod_compl

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variantfcd020c18c468c84578866deb3712598d21a9c1dca4bc95209a614ee226d2b73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantfcd020c18c468c84578866deb3712598d21a9c1dca4bc95209a614ee226d2b73.lean#L606).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0942c1628f54ccad7a8582fdad91f7c82e98d80e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
