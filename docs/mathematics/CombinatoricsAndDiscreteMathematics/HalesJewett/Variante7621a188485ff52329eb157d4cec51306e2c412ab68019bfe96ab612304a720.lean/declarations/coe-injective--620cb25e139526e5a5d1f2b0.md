# coe_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "452ed13dd21ec9e0eb7c76bd4c016401a32f1307",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 109,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:349f7e43-a671-1e28-5bf4-6b328fc3c2b8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cbb47ade-ad63-d98b-a3ba-1a04f18c060b",
  "kind": "lemma",
  "lexical_name": "coe_injective",
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
  "slug": "coe-injective--620cb25e139526e5a5d1f2b0",
  "source": {
    "blob": "452ed13dd21ec9e0eb7c76bd4c016401a32f1307",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 109,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:620cb25e139526e5a5d1f2b01c0fb35c2175d62961aeabc7db2a95a3830bc25b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cbb47ade-ad63-d98b-a3ba-1a04f18c060b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coe_injective [Nontrivial α] : Injective ((⇑) : Subspace η α ι → (η → α) → ι → α) := by
  classical
  rintro l m hlm
  ext i
  simp only [funext_iff] at hlm
  cases hl : idxFun l i with
  | inl a =>
    obtain ⟨b, hba⟩ := exists_ne a
    cases hm : idxFun m i <;> simpa [hl, hm, hba.symm, coe_apply] using hlm (const _ b) i
  | inr e =>
    cases hm : idxFun m i with
    | inl a =>
      obtain ⟨b, hba⟩ := exists_ne a
      simpa [hl, hm, hba, coe_apply] using hlm (const _ b) i
    | inr f =>
      obtain ⟨a, b, hab⟩ := exists_pair_ne α
      simp only [Sum.inr.injEq]
      by_contra! hef
      simpa [hl, hm, hef, hab, coe_apply] using hlm (Function.update (const _ a) f b) i

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `452ed13dd21ec9e0eb7c76bd4c016401a32f1307` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
