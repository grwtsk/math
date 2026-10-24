# toGLPos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2bfa47340af6f3edc8d4776b593f9a60b4a1e7bb25b303ef66118526de0fb604",
  "kind": "def",
  "lexical_name": "toGLPos",
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
  "slug": "toglpos--a536fbd369c42c81b70142cd",
  "source": {
    "blob": "3c7f4155b3ea3c3f4938691c2d63b60e054a6c3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 426,
    "line": 422,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant2bbcaa08b5a913ab9827239bb9f4eb1c352631caeebc1ead6a649777ba4cd73f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a536fbd369c42c81b70142cdd34f5e2078735b6c23660736c96684a200867fd7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variant2bbcaa08b5a913ab9827239bb9f4eb1c352631caeebc1ead6a649777ba4cd73f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2bfa47340af6f3edc8d4776b593f9a60b4a1e7bb25b303ef66118526de0fb604`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 422–426.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toGLPos : SpecialLinearGroup n R →* GLPos n R where
  toFun A := ⟨(A : GL n R), show 0 < (↑A : Matrix n n R).det from A.prop.symm ▸ zero_lt_one⟩
  map_one' := Subtype.ext <| Units.ext <| rfl
  map_mul' _ _ := Subtype.ext <| Units.ext <| rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variant2bbcaa08b5a913ab9827239bb9f4eb1c352631caeebc1ead6a649777ba4cd73f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variant2bbcaa08b5a913ab9827239bb9f4eb1c352631caeebc1ead6a649777ba4cd73f.lean#L422).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c7f4155b3ea3c3f4938691c2d63b60e054a6c3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
