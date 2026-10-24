# eq_spanSingleton_of_principal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6cf3cc53d92c0ee2a6598e6765475d5a62e06c60",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 599,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b8f4ee45b4dd9f8fd554557d4218d29bdd680238c7a22294160f94aca1fce486.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:327bbfc9-9d8d-0cb2-6580-10e5e6110e8f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:44c622f9-1449-fd09-bba6-7a85239ed322",
  "kind": "theorem",
  "lexical_name": "eq_spanSingleton_of_principal",
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
  "slug": "eq-spansingleton-of-principal--b968338c0cbd92c20a1e44e8",
  "source": {
    "blob": "6cf3cc53d92c0ee2a6598e6765475d5a62e06c60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 604,
    "line": 599,
    "path": "GRWTSK/Algebra/Operations/Variantb8f4ee45b4dd9f8fd554557d4218d29bdd680238c7a22294160f94aca1fce486.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b968338c0cbd92c20a1e44e88285bfe766f8d3edec537d28f3b1874c931f4a15",
  "verification": {
    "reference": "docs/verification/Algebra/Operations/Variantb8f4ee45b4dd9f8fd554557d4218d29bdd680238c7a22294160f94aca1fce486.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44c622f9-1449-fd09-bba6-7a85239ed322`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 599–604.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_spanSingleton_of_principal (I : FractionalIdeal S P) [IsPrincipal (I : Submodule R P)] :
    I = spanSingleton S (generator (I : Submodule R P)) := by
  -- Porting note: this used to be `coeToSubmodule_injective (span_singleton_generator ↑I).symm`
  -- but Lean 4 struggled to unify everything. Turned it into an explicit `rw`.
  rw [spanSingleton, ← coeToSubmodule_inj, coe_mk, span_singleton_generator]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Operations/Variantb8f4ee45b4dd9f8fd554557d4218d29bdd680238c7a22294160f94aca1fce486.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Operations/Variantb8f4ee45b4dd9f8fd554557d4218d29bdd680238c7a22294160f94aca1fce486.lean#L599).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cf3cc53d92c0ee2a6598e6765475d5a62e06c60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
