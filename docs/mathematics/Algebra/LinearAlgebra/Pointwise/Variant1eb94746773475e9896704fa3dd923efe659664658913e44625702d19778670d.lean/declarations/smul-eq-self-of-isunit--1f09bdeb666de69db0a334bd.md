# smul_eq_self_of_isUnit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4c0e8f4046ff4a124bc46256904d832dd5de355a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 250,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1e/1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:70695c17-23f6-fcda-46fd-68c31d120443",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:68c549c4-df62-e6ba-42da-9a2a48a4c73d",
  "kind": "theorem",
  "lexical_name": "smul_eq_self_of_isUnit",
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
  "slug": "smul-eq-self-of-isunit--1f09bdeb666de69db0a334bd",
  "source": {
    "blob": "4c0e8f4046ff4a124bc46256904d832dd5de355a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 250,
    "path": "GRWTSK/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f09bdeb666de69db0a334bdfc5afa292fe435c8386b5c952bc29b2853733013",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68c549c4-df62-e6ba-42da-9a2a48a4c73d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smul_eq_self_of_isUnit [SMul α R] [IsScalarTower α R M] {N : Submodule R M}
    {u : α} (hu : IsUnit u) : u • N = N := by
  refine le_antisymm (N.smul_le_self_of_tower u) ?_
  grw [← (u • N).smul_le_self_of_tower hu.unit⁻¹.val, ← mul_smul, IsUnit.val_inv_mul, one_smul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c0e8f4046ff4a124bc46256904d832dd5de355a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
