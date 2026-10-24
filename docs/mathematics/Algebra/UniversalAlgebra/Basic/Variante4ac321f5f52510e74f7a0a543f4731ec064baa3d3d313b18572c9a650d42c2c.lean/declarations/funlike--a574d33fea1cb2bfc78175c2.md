# funLike

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bccd0407e0faafa7c0b2bcf85087a2758ad93d24df3c840c61fe01ea9ad3504b",
  "kind": "instance",
  "lexical_name": "funLike",
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
  "slug": "funlike--a574d33fea1cb2bfc78175c2",
  "source": {
    "blob": "2ba63d4cb4ffec7ad5db3c99e3f56403d1109a61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 64,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variante4ac321f5f52510e74f7a0a543f4731ec064baa3d3d313b18572c9a650d42c2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a574d33fea1cb2bfc78175c2cd6385c76a5561bf90e37733bfdc874c3d73705f",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variante4ac321f5f52510e74f7a0a543f4731ec064baa3d3d313b18572c9a650d42c2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bccd0407e0faafa7c0b2bcf85087a2758ad93d24df3c840c61fe01ea9ad3504b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance funLike : FunLike (AbsoluteValue R S) R S where
  coe f := f.toFun
  coe_injective f g h := by obtain ⟨⟨_, _⟩, _⟩ := f; obtain ⟨⟨_, _⟩, _⟩ := g; congr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variante4ac321f5f52510e74f7a0a543f4731ec064baa3d3d313b18572c9a650d42c2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variante4ac321f5f52510e74f7a0a543f4731ec064baa3d3d313b18572c9a650d42c2c.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ba63d4cb4ffec7ad5db3c99e3f56403d1109a61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
