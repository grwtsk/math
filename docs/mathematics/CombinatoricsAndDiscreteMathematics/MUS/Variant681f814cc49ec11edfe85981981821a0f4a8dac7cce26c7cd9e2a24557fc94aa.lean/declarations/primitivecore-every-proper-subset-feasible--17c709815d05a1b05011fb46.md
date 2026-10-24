# PrimitiveCore.every_proper_subset_feasible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "272247d96a244d6c88d53a898a0458c4b6675770",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 68,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/681f814cc49ec11edfe85981981821a0f4a8dac7cce26c7cd9e2a24557fc94aa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:44688fea-5a10-d340-a57b-8e8fb8a8c290",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a7ed4a9e-75bd-2bd2-4682-a34a9173ea52",
  "kind": "theorem",
  "lexical_name": "PrimitiveCore.every_proper_subset_feasible",
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
  "slug": "primitivecore-every-proper-subset-feasible--17c709815d05a1b05011fb46",
  "source": {
    "blob": "272247d96a244d6c88d53a898a0458c4b6675770",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 68,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MUS/Variant681f814cc49ec11edfe85981981821a0f4a8dac7cce26c7cd9e2a24557fc94aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17c709815d05a1b05011fb46f7eb3e39f02760097a2c17bd445f23e3f5b936d1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/MUS/Variant681f814cc49ec11edfe85981981821a0f4a8dac7cce26c7cd9e2a24557fc94aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7ed4a9e-75bd-2bd2-4682-a34a9173ea52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PrimitiveCore.every_proper_subset_feasible
    {Partial : Type uPartial}
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    [DecidableEq Constraint]
    {semantics :
      Semantics Partial Full Constraint}
    {registry : Finset Constraint}
    {partial : Partial}
    (core :
      PrimitiveCore
        semantics registry partial)
    {subset : Finset Constraint}
    (proper :
      subset ⊂ core.constraints) :
    semantics.Feasible subset partial := by
  rcases
      Finset.ssubset_iff_exists_subset_erase.mp
        proper with
    ⟨constraint, constraintMember,
      subsetErase⟩
  exact
    semantics.feasible_anti_constraints
      subsetErase
      (core.deletion_minimal
        constraint constraintMember)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/MUS/Variant681f814cc49ec11edfe85981981821a0f4a8dac7cce26c7cd9e2a24557fc94aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/MUS/Variant681f814cc49ec11edfe85981981821a0f4a8dac7cce26c7cd9e2a24557fc94aa.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `272247d96a244d6c88d53a898a0458c4b6675770` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
