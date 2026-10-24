# chain'_iff_forall_rel_of_append_cons_cons

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f18961edd15ebda778f2e2063cb61b5324adeebf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 197,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d05549be11dd1e4c839814c5d8407f65975cdf44b636eeb64861cc0314746851.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:490243a2-26bb-9d79-e7e9-03d83362fd76",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0dc156a6-b37a-9399-bee7-7f023ccd180f",
  "kind": "theorem",
  "lexical_name": "chain'_iff_forall_rel_of_append_cons_cons",
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
  "slug": "chain-iff-forall-rel-of-append-cons-cons--48361170da48843de0fe1526",
  "source": {
    "blob": "f18961edd15ebda778f2e2063cb61b5324adeebf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 197,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chain/Variantd05549be11dd1e4c839814c5d8407f65975cdf44b636eeb64861cc0314746851.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48361170da48843de0fe1526f236738dba708bd1f68bd935f681b1f757851a47",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chain/Variantd05549be11dd1e4c839814c5d8407f65975cdf44b636eeb64861cc0314746851.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0dc156a6-b37a-9399-bee7-7f023ccd180f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem chain'_iff_forall_rel_of_append_cons_cons {l : List α} :
    Chain' R l ↔ ∀ ⦃a b l₁ l₂⦄, l = l₁ ++ a :: b :: l₂ → R a b := by
  refine ⟨fun h _ _ _ _ eq => (chain'_append_cons_cons.mp (eq ▸ h)).2.1, ?_⟩
  induction l with
  | nil => exact fun _ ↦ chain'_nil
  | cons head tail ih =>
    match tail with
    | nil => exact fun _ ↦ chain'_singleton head
    | cons head' tail =>
      refine fun h ↦ chain'_cons.mpr ⟨h (nil_append _).symm, ih fun ⦃a b l₁ l₂⦄ eq => ?_⟩
      apply h
      rw [eq, cons_append]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chain/Variantd05549be11dd1e4c839814c5d8407f65975cdf44b636eeb64861cc0314746851.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chain/Variantd05549be11dd1e4c839814c5d8407f65975cdf44b636eeb64861cc0314746851.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f18961edd15ebda778f2e2063cb61b5324adeebf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
