# IterM.step_uLift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3b726855be0958321e9f6d0612626fe20698e00b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 23,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/16/1642adc0423d05a629c24addc7b3cb995ae34f9a3c90c19ae596c4beda7c62d9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:785f040a-c27a-5f13-6fc7-3f207d83dd37",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f1bff0a4-1205-be8e-2821-5a22243d715a",
  "kind": "theorem",
  "lexical_name": "IterM.step_uLift",
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
  "slug": "iterm-step-ulift--3fb5514fff5ab73aa39cd049",
  "source": {
    "blob": "3b726855be0958321e9f6d0612626fe20698e00b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 23,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ULift/Variant1642adc0423d05a629c24addc7b3cb995ae34f9a3c90c19ae596c4beda7c62d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fb5514fff5ab73aa39cd0495aca72e9bcf81e8f150cc2be3985e477861de94a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ULift/Variant1642adc0423d05a629c24addc7b3cb995ae34f9a3c90c19ae596c4beda7c62d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1bff0a4-1205-be8e-2821-5a22243d715a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IterM.step_uLift [Iterator α m β] [Monad n] {it : IterM (α := α) m β}
    [MonadLiftT m (ULiftT n)] :
    (it.uLift n).step = (do
      match (← (monadLift it.step : ULiftT n _).run).down.inflate with
      | .yield it' out h => return .deflate (.yield (it'.uLift n) (.up out) ⟨_, h, rfl⟩)
      | .skip it' h => return .deflate (.skip (it'.uLift n) ⟨_, h, rfl⟩)
      | .done h => return .deflate (.done ⟨_, h, rfl⟩)) := by
  simp only [IterM.step, Iterator.step, IterM.uLift]
  apply bind_congr; intro step
  split <;> simp [Types.ULiftIterator.Monadic.modifyStep, *] <;> rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ULift/Variant1642adc0423d05a629c24addc7b3cb995ae34f9a3c90c19ae596c4beda7c62d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ULift/Variant1642adc0423d05a629c24addc7b3cb995ae34f9a3c90c19ae596c4beda7c62d9.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b726855be0958321e9f6d0612626fe20698e00b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
