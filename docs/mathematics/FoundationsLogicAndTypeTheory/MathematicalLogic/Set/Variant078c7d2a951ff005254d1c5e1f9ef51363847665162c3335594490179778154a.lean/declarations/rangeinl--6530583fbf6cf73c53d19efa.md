# rangeInl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4d631c749cae3d7998fe09c64f424ad7febd5a3284039eb6d46088574be51fbc",
  "kind": "def",
  "lexical_name": "rangeInl",
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
  "slug": "rangeinl--6530583fbf6cf73c53d19efa",
  "source": {
    "blob": "bbd7ea2a50434124f400ef3fe18b26e101f78aff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 495,
    "line": 488,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant078c7d2a951ff005254d1c5e1f9ef51363847665162c3335594490179778154a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6530583fbf6cf73c53d19efada56987f7f1aeeff9059b9a682d849185fbda250",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant078c7d2a951ff005254d1c5e1f9ef51363847665162c3335594490179778154a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4d631c749cae3d7998fe09c64f424ad7febd5a3284039eb6d46088574be51fbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 488–495.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rangeInl (α β : Type*) : Set.range (Sum.inl : α → α ⊕ β) ≃ α where
  toFun
  | ⟨.inl x, _⟩ => x
  | ⟨.inr _, h⟩ => False.elim <| by rcases h with ⟨x, h'⟩; cases h'
  invFun x := ⟨.inl x, mem_range_self _⟩
  left_inv := fun ⟨_, _, rfl⟩ => rfl
  right_inv _ := rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant078c7d2a951ff005254d1c5e1f9ef51363847665162c3335594490179778154a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant078c7d2a951ff005254d1c5e1f9ef51363847665162c3335594490179778154a.lean#L488).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbd7ea2a50434124f400ef3fe18b26e101f78aff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
