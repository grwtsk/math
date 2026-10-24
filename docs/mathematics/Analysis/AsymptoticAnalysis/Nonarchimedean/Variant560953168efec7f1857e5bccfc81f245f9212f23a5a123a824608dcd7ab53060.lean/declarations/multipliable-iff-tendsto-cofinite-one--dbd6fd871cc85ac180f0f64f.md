# multipliable_iff_tendsto_cofinite_one

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
      "line": 98,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/560953168efec7f1857e5bccfc81f245f9212f23a5a123a824608dcd7ab53060.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5f62c636-ad8c-db60-f07b-b9279916064b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7354bde2-d274-f5f9-329f-dfa611900b7d",
  "kind": "theorem",
  "lexical_name": "multipliable_iff_tendsto_cofinite_one",
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
  "slug": "multipliable-iff-tendsto-cofinite-one--dbd6fd871cc85ac180f0f64f",
  "source": {
    "blob": "ffa841118a49c61b250ea9be0a9faf09f30f8f87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 98,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Nonarchimedean/Variant560953168efec7f1857e5bccfc81f245f9212f23a5a123a824608dcd7ab53060.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dbd6fd871cc85ac180f0f64f5ea3f38ecd3e51b119283858f5e1b58451db266a",
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

Occurrence: `result:7354bde2-d274-f5f9-329f-dfa611900b7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem multipliable_iff_tendsto_cofinite_one [CompleteSpace G] (f : α → G) :
    Multipliable f ↔ Tendsto f cofinite (𝓝 1) :=
  ⟨Multipliable.tendsto_cofinite_one, multipliable_of_tendsto_cofinite_one⟩

end NonarchimedeanGroup

section NonarchimedeanRing

variable {α β R : Type*}
variable [Ring R] [UniformSpace R] [IsUniformAddGroup R] [NonarchimedeanRing R]

/- Let `R` be a complete nonarchimedean ring. If functions `f : α → R` and `g : β → R` are summable,
then so is `fun i : α × β ↦ f i.1 * g i.2`. We will prove later that the assumption that `R`
is complete is not necessary. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Nonarchimedean/Variant560953168efec7f1857e5bccfc81f245f9212f23a5a123a824608dcd7ab53060.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Nonarchimedean/Variant560953168efec7f1857e5bccfc81f245f9212f23a5a123a824608dcd7ab53060.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffa841118a49c61b250ea9be0a9faf09f30f8f87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
