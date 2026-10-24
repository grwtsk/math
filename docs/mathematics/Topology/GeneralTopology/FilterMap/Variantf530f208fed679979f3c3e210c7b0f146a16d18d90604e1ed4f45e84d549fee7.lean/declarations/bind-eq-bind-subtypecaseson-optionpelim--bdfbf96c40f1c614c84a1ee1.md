# bind_eq_bind_subtypeCasesOn'_optionPelim'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ae68d6dd2cae548b2e206426cc02fa7947c9c3e2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 289,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f5/f530f208fed679979f3c3e210c7b0f146a16d18d90604e1ed4f45e84d549fee7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:390b2af2-4420-3ee9-bcf0-677b6243ac5b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:804caf9d-8432-46dc-2765-8b5828d97012",
  "kind": "theorem",
  "lexical_name": "bind_eq_bind_subtypeCasesOn'_optionPelim'",
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
  "slug": "bind-eq-bind-subtypecaseson-optionpelim--bdfbf96c40f1c614c84a1ee1",
  "source": {
    "blob": "ae68d6dd2cae548b2e206426cc02fa7947c9c3e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 289,
    "path": "GRWTSK/Topology/GeneralTopology/FilterMap/Variantf530f208fed679979f3c3e210c7b0f146a16d18d90604e1ed4f45e84d549fee7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bdfbf96c40f1c614c84a1ee1753273ebca6a203b8f617edf8283f5ce41ae8764",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FilterMap/Variantf530f208fed679979f3c3e210c7b0f146a16d18d90604e1ed4f45e84d549fee7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:804caf9d-8432-46dc-2765-8b5828d97012`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem bind_eq_bind_subtypeCasesOn'_optionPelim' [Monad m] [LawfulMonad m]
    {P : Option α → Prop} (x : m (Subtype P)) (f : Subtype P → m β) :
    x >>= f = x >>= (fun a => subtypeCasesOn' a fun (a : Option α) ha => optionPelim' a (fun h =>
          f ⟨none, by simp_all⟩) (fun a h => f ⟨some a, by simp_all⟩)) := by
  apply bind_congr; intro x
  rcases x with ⟨_ | ⟨a⟩⟩
  all_goals simp [subtypeCasesOn', optionPelim']

end Internal

open Internal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FilterMap/Variantf530f208fed679979f3c3e210c7b0f146a16d18d90604e1ed4f45e84d549fee7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FilterMap/Variantf530f208fed679979f3c3e210c7b0f146a16d18d90604e1ed4f45e84d549fee7.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae68d6dd2cae548b2e206426cc02fa7947c9c3e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
