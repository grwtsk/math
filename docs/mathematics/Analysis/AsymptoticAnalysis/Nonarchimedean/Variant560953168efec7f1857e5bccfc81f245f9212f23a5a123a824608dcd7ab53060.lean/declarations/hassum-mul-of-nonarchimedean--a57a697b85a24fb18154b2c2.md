# HasSum.mul_of_nonarchimedean

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ffa841118a49c61b250ea9be0a9faf09f30f8f87",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 120,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/560953168efec7f1857e5bccfc81f245f9212f23a5a123a824608dcd7ab53060.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:54bb2448-9c02-5ff1-d296-f918ccdfc445",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:56b9cb3e-c7ba-b79c-a003-1730e44e87cc",
  "kind": "theorem",
  "lexical_name": "HasSum.mul_of_nonarchimedean",
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
  "slug": "hassum-mul-of-nonarchimedean--a57a697b85a24fb18154b2c2",
  "source": {
    "blob": "ffa841118a49c61b250ea9be0a9faf09f30f8f87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 120,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Nonarchimedean/Variant560953168efec7f1857e5bccfc81f245f9212f23a5a123a824608dcd7ab53060.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a57a697b85a24fb18154b2c24fe87db8baf9003ed58399bcdc45925c0efb3e9c",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Nonarchimedean/Variant560953168efec7f1857e5bccfc81f245f9212f23a5a123a824608dcd7ab53060.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56b9cb3e-c7ba-b79c-a003-1730e44e87cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasSum.mul_of_nonarchimedean {f : α → R} {g : β → R} {a b : R} (hf : HasSum f a)
    (hg : HasSum g b) : HasSum (fun i : α × β ↦ f i.1 * g i.2) (a * b) := by
  rw [← hasSum_iff_hasSum_compl] at *
  simp only [Function.comp_def, UniformSpace.Completion.toCompl_apply,
    UniformSpace.Completion.coe_mul]
  exact (hf.mul hg) (hf.summable.mul_of_complete_nonarchimedean hg.summable :)

/-- Let `R` be a nonarchimedean ring. If functions `f : α → R` and `g : β → R` are summable, then
so is `fun i : α × β ↦ f i.1 * g i.2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Nonarchimedean/Variant560953168efec7f1857e5bccfc81f245f9212f23a5a123a824608dcd7ab53060.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Nonarchimedean/Variant560953168efec7f1857e5bccfc81f245f9212f23a5a123a824608dcd7ab53060.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffa841118a49c61b250ea9be0a9faf09f30f8f87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
