# Subsemigroup.centerCongr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:66c57f056003856928fa46cacbde5f68ccf6704ef9699fe1b5080820ca34ca66",
  "kind": "def",
  "lexical_name": "Subsemigroup.centerCongr",
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
  "slug": "subsemigroup-centercongr--6e73c6fa04eb9d09c5629573",
  "source": {
    "blob": "9df9ff1cbc2c987355fe15a293687ee03ea431b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 173,
    "path": "GRWTSK/Algebra/GroupTheory/Center/Variant34875204a0e78a0f9acd48cec2a331bf7b7622bc9508f4f2be80583e811ee566.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6e73c6fa04eb9d09c56295739cf43e157084bdfde31f2c97f431c06d7f27771a",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Center/Variant34875204a0e78a0f9acd48cec2a331bf7b7622bc9508f4f2be80583e811ee566.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:66c57f056003856928fa46cacbde5f68ccf6704ef9699fe1b5080820ca34ca66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Subsemigroup.centerCongr [Mul M] [Mul N] (e : M ≃* N) : center M ≃* center N where
  toFun r := ⟨e r, MulEquivClass.apply_mem_center e r.2⟩
  invFun s := ⟨e.symm s, MulEquivClass.apply_mem_center e.symm s.2⟩
  left_inv _ := Subtype.ext (e.left_inv _)
  right_inv _ := Subtype.ext (e.right_inv _)
  map_mul' _ _ := Subtype.ext (map_mul ..)

/-- The center of isomorphic monoids are isomorphic. -/
@[to_additive (attr := simps!) /-- The center of isomorphic additive monoids are isomorphic. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Center/Variant34875204a0e78a0f9acd48cec2a331bf7b7622bc9508f4f2be80583e811ee566.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Center/Variant34875204a0e78a0f9acd48cec2a331bf7b7622bc9508f4f2be80583e811ee566.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9df9ff1cbc2c987355fe15a293687ee03ea431b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
