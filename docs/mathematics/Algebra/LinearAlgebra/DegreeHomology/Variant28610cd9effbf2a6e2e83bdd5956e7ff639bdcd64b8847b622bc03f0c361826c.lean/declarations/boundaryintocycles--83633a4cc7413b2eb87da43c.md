# boundaryIntoCycles

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5448364629737ff98499ffa3177d355b632e05c5b2342a6695790ce1b82afa1c",
  "kind": "def",
  "lexical_name": "boundaryIntoCycles",
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
  "slug": "boundaryintocycles--83633a4cc7413b2eb87da43c",
  "source": {
    "blob": "3f1bcf82d1174b49efbac84e0fb95fae99b6e4c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 55,
    "path": "GRWTSK/Algebra/LinearAlgebra/DegreeHomology/Variant28610cd9effbf2a6e2e83bdd5956e7ff639bdcd64b8847b622bc03f0c361826c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:83633a4cc7413b2eb87da43ca1ab3d16be189110cdac141ae64e6967972b3dca",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/DegreeHomology/Variant28610cd9effbf2a6e2e83bdd5956e7ff639bdcd64b8847b622bc03f0c361826c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5448364629737ff98499ffa3177d355b632e05c5b2342a6695790ce1b82afa1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def boundaryIntoCycles
    (chain : FiniteIntegralChain) (degree : Nat) :
    FiniteFree (chain.rank (Nat.succ degree)) →ₗ[ℤ]
      chain.cycles degree where
  toFun value :=
    ⟨chain.boundaryMap degree value,
      chain.boundary_mem_cycles degree value⟩
  map_add' left right := by
    apply Subtype.ext
    exact map_add (chain.boundaryMap degree) left right
  map_smul' scalar value := by
    apply Subtype.ext
    exact map_smul (chain.boundaryMap degree) scalar value

/-- Integral boundaries as a submodule of cycles. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/DegreeHomology/Variant28610cd9effbf2a6e2e83bdd5956e7ff639bdcd64b8847b622bc03f0c361826c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/DegreeHomology/Variant28610cd9effbf2a6e2e83bdd5956e7ff639bdcd64b8847b622bc03f0c361826c.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f1bcf82d1174b49efbac84e0fb95fae99b6e4c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
