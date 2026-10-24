# Equiv.Perm.IsSwap.finite_compl_fixedBy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "908ff498dba7ed201ede815804322815001d96da",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 66,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/eac6bedf0a10c595eadb8975125c5ac75896d7c1a6b1ac762a10bbbd917a3e1c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e61c7f6c-74d6-373e-75d1-258322d91331",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cd3a5d74-ce46-e3c6-5370-007c5c2149f4",
  "kind": "theorem",
  "lexical_name": "Equiv.Perm.IsSwap.finite_compl_fixedBy",
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
  "slug": "equiv-perm-isswap-finite-compl-fixedby--3f5c5e4e29f21db4aa1b152a",
  "source": {
    "blob": "908ff498dba7ed201ede815804322815001d96da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 66,
    "path": "GRWTSK/Algebra/GroupTheory/ClosureSwap/Varianteac6bedf0a10c595eadb8975125c5ac75896d7c1a6b1ac762a10bbbd917a3e1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f5c5e4e29f21db4aa1b152a29fb6ae0b9038ea5631f3d8f364d30891a11f8bb",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ClosureSwap/Varianteac6bedf0a10c595eadb8975125c5ac75896d7c1a6b1ac762a10bbbd917a3e1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd3a5d74-ce46-e3c6-5370-007c5c2149f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Equiv.Perm.IsSwap.finite_compl_fixedBy {σ : Perm α} (h : σ.IsSwap) :
    (fixedBy α σ)ᶜ.Finite := by
  obtain ⟨x, y, -, rfl⟩ := h
  exact finite_compl_fixedBy_swap

-- this result cannot be moved to Perm/Basic since Perm/Basic is not allowed to import Submonoid
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ClosureSwap/Varianteac6bedf0a10c595eadb8975125c5ac75896d7c1a6b1ac762a10bbbd917a3e1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ClosureSwap/Varianteac6bedf0a10c595eadb8975125c5ac75896d7c1a6b1ac762a10bbbd917a3e1c.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `908ff498dba7ed201ede815804322815001d96da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
