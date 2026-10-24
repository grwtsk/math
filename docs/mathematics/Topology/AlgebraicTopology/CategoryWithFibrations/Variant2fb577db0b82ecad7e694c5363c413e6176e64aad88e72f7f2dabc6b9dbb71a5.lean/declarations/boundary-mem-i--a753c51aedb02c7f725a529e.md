# boundary_ι_mem_I

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f8b72fd-d3d6-a43d-ba03-c121bee03863",
  "kind": "lemma",
  "lexical_name": "boundary_ι_mem_I",
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
  "slug": "boundary-mem-i--a753c51aedb02c7f725a529e",
  "source": {
    "blob": "41aeb3f4bf3efc1049317218d9fb4b3d82addd5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 45,
    "path": "GRWTSK/Topology/AlgebraicTopology/CategoryWithFibrations/Variant2fb577db0b82ecad7e694c5363c413e6176e64aad88e72f7f2dabc6b9dbb71a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a753c51aedb02c7f725a529e2ce8a84b8ac85b92a1842998995d9cf87a32d320",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/CategoryWithFibrations/Variant2fb577db0b82ecad7e694c5363c413e6176e64aad88e72f7f2dabc6b9dbb71a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f8b72fd-d3d6-a43d-ba03-c121bee03863`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma boundary_ι_mem_I (n : ℕ) :
    I (boundary.{u} n).ι := by constructor

/-- The generating trivial cofibrations: this is the family of morphisms in `SSet`
which consists of horn inclusions `Λ[n, i].ι : Λ[n, i] ⟶ Δ[n]` (for positive `n`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/CategoryWithFibrations/Variant2fb577db0b82ecad7e694c5363c413e6176e64aad88e72f7f2dabc6b9dbb71a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/CategoryWithFibrations/Variant2fb577db0b82ecad7e694c5363c413e6176e64aad88e72f7f2dabc6b9dbb71a5.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41aeb3f4bf3efc1049317218d9fb4b3d82addd5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
