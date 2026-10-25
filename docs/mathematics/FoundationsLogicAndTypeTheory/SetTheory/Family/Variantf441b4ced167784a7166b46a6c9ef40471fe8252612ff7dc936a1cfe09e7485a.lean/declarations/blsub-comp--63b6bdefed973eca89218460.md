# blsub_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9a2518d1710bbe13bf4825e2ff3f19df97a57627",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 914,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f441b4ced167784a7166b46a6c9ef40471fe8252612ff7dc936a1cfe09e7485a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:427661fa-460d-5775-1214-3e748d748e13",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3324e42c-d294-6942-830e-aa80dfeb6e82",
  "kind": "theorem",
  "lexical_name": "blsub_comp",
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
  "slug": "blsub-comp--63b6bdefed973eca89218460",
  "source": {
    "blob": "9a2518d1710bbe13bf4825e2ff3f19df97a57627",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 920,
    "line": 914,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Family/Variantf441b4ced167784a7166b46a6c9ef40471fe8252612ff7dc936a1cfe09e7485a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63b6bdefed973eca89218460242abdd37c8c50db6b099b4d1019bb7ff953f25b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Family/Variantf441b4ced167784a7166b46a6c9ef40471fe8252612ff7dc936a1cfe09e7485a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3324e42c-d294-6942-830e-aa80dfeb6e82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 914–920.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem blsub_comp {o o' : Ordinal.{max u v}} {f : ∀ a < o, Ordinal.{max u v w}}
    (hf : ∀ {i j} (hi) (hj), i ≤ j → f i hi ≤ f j hj) {g : ∀ a < o', Ordinal.{max u v}}
    (hg : blsub.{_, u} o' g = o) :
    (blsub.{_, w} o' fun a ha => f (g a ha) (by rw [← hg]; apply lt_blsub)) = blsub.{_, w} o f :=
  @bsup_comp.{u, v, w} o _ (fun a ha => succ (f a ha))
    (fun {_ _} _ _ h => succ_le_succ_iff.2 (hf _ _ h)) g hg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Family/Variantf441b4ced167784a7166b46a6c9ef40471fe8252612ff7dc936a1cfe09e7485a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Family/Variantf441b4ced167784a7166b46a6c9ef40471fe8252612ff7dc936a1cfe09e7485a.lean#L914).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a2518d1710bbe13bf4825e2ff3f19df97a57627` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
