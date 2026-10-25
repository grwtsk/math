# Fmla.proof_of_subsumes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6d1b4fee1ea26770b1e35b66a4aa5c3a58d9f933",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 125,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a26e565568cbbaa264993a8dce65e81f254cf2d0b17a78f815b52beee938d91d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:645a41e4-df5e-2809-ef7d-29627a8a9d95",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7b6d17b0-3146-3e86-b2a2-6889d499396e",
  "kind": "theorem",
  "lexical_name": "Fmla.proof_of_subsumes",
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
  "slug": "fmla-proof-of-subsumes--f6441f9802cfea1fd08c82a0",
  "source": {
    "blob": "6d1b4fee1ea26770b1e35b66a4aa5c3a58d9f933",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 125,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromLRAT/Varianta26e565568cbbaa264993a8dce65e81f254cf2d0b17a78f815b52beee938d91d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6441f9802cfea1fd08c82a0f803635efdf580d2c136e52c53fd3fafc7f553fa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromLRAT/Varianta26e565568cbbaa264993a8dce65e81f254cf2d0b17a78f815b52beee938d91d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b6d17b0-3146-3e86-b2a2-6889d499396e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Fmla.proof_of_subsumes {f : Fmla} {c : Clause}
    (H : Fmla.subsumes f (Fmla.one c)) : f.proof c :=
  fun _ h ↦ h.1 _ <| H.1 _ <| List.Mem.head ..

/-- The core unit-propagation step.

We have a local context of assumptions `¬l'` (sometimes called an assignment)
and we wish to add `¬l` to the context, that is, we want to prove `l` is also falsified.
This is because there is a clause `a ∨ b ∨ ¬l` in the global context
such that all literals in the clause are falsified except for `¬l`;
so in the context `h₁` where we suppose that `¬l` is falsified,
the clause itself is falsified so we can prove `False`.
We continue the proof in `h₂`, with the assumption that `l` is falsified. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromLRAT/Varianta26e565568cbbaa264993a8dce65e81f254cf2d0b17a78f815b52beee938d91d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromLRAT/Varianta26e565568cbbaa264993a8dce65e81f254cf2d0b17a78f815b52beee938d91d.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d1b4fee1ea26770b1e35b66a4aa5c3a58d9f933` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
