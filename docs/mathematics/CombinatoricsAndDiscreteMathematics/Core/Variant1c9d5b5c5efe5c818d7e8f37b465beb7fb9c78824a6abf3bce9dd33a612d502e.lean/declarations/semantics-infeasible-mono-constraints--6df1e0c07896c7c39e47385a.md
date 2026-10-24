# Semantics.infeasible_mono_constraints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4c88a4a98e2fdf1b43a40722792d29e2267e255d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 150,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1c/1c9d5b5c5efe5c818d7e8f37b465beb7fb9c78824a6abf3bce9dd33a612d502e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:11b43e2f-e311-2966-c313-25617e049e8d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0c52bf70-379e-f453-a06a-ccab1cbf8c86",
  "kind": "theorem",
  "lexical_name": "Semantics.infeasible_mono_constraints",
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
  "slug": "semantics-infeasible-mono-constraints--6df1e0c07896c7c39e47385a",
  "source": {
    "blob": "4c88a4a98e2fdf1b43a40722792d29e2267e255d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 150,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Core/Variant1c9d5b5c5efe5c818d7e8f37b465beb7fb9c78824a6abf3bce9dd33a612d502e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6df1e0c07896c7c39e47385a71943e5d410f9960e552ab6b76e5c828051ac52e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Core/Variant1c9d5b5c5efe5c818d7e8f37b465beb7fb9c78824a6abf3bce9dd33a612d502e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c52bf70-379e-f453-a06a-ccab1cbf8c86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Semantics.infeasible_mono_constraints
    {Partial : Type uPartial}
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    {semantics :
      Semantics Partial Full Constraint}
    {small large : Finset Constraint}
    {partial : Partial}
    (subset : small ⊆ large)
    (smallInfeasible :
      semantics.Infeasible small partial) :
    semantics.Infeasible large partial := by
  intro completion extends satisfiesLarge
  apply smallInfeasible completion extends
  intro constraint member
  exact
    satisfiesLarge constraint (subset member)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Core/Variant1c9d5b5c5efe5c818d7e8f37b465beb7fb9c78824a6abf3bce9dd33a612d502e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Core/Variant1c9d5b5c5efe5c818d7e8f37b465beb7fb9c78824a6abf3bce9dd33a612d502e.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c88a4a98e2fdf1b43a40722792d29e2267e255d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
