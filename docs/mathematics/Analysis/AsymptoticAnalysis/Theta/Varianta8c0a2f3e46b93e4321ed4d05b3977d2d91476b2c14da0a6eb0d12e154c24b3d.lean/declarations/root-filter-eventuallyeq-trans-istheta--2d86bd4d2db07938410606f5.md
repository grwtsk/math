# _root_.Filter.EventuallyEq.trans_isTheta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "19f512f654ca55358a339c65c68431c15059d950",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 141,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a8/a8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1ef02b8a-d1c2-7630-1f15-927ac180144d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bf552995-a604-4cb3-db8f-81bf7de302d6",
  "kind": "theorem",
  "lexical_name": "_root_.Filter.EventuallyEq.trans_isTheta",
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
  "slug": "root-filter-eventuallyeq-trans-istheta--2d86bd4d2db07938410606f5",
  "source": {
    "blob": "19f512f654ca55358a339c65c68431c15059d950",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 141,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d86bd4d2db07938410606f5d676b0faf73b9b6cf1e3695a63ecd05fe93e40c5",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf552995-a604-4cb3-db8f-81bf7de302d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.Filter.EventuallyEq.trans_isTheta {f₁ f₂ : α → E} {g : α → F} (hf : f₁ =ᶠ[l] f₂)
    (h : f₂ =Θ[l] g) : f₁ =Θ[l] g :=
  ⟨hf.trans_isBigO h.1, h.2.trans_eventuallyEq hf.symm⟩
#align filter.eventually_eq.trans_is_Theta Filter.EventuallyEq.trans_isTheta

-- Porting note: added
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19f512f654ca55358a339c65c68431c15059d950` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
