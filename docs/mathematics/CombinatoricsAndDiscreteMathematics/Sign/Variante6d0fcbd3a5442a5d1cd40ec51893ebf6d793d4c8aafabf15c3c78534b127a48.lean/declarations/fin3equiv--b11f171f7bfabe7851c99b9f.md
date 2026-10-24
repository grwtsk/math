# fin3Equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d33e17f11bad22b3e9b299aa7fca2ccc3ed14a5c64c9a33a239ce9db5edf86a0",
  "kind": "def",
  "lexical_name": "fin3Equiv",
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
  "slug": "fin3equiv--b11f171f7bfabe7851c99b9f",
  "source": {
    "blob": "dd7e734e6c27ed4a33393fa6dee92e118a77b2fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 128,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sign/Variante6d0fcbd3a5442a5d1cd40ec51893ebf6d793d4c8aafabf15c3c78534b127a48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b11f171f7bfabe7851c99b9f6b8ff30cf8cdc78eda473dc6950c2b1218c831f1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Sign/Variante6d0fcbd3a5442a5d1cd40ec51893ebf6d793d4c8aafabf15c3c78534b127a48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d33e17f11bad22b3e9b299aa7fca2ccc3ed14a5c64c9a33a239ce9db5edf86a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fin3Equiv : SignType ≃* Fin 3 where
  toFun a :=
    match a with
    | 0 => ⟨0, by simp⟩
    | 1 => ⟨1, by simp⟩
    | -1 => ⟨2, by simp⟩
  invFun a :=
    match a with
    | ⟨0, _⟩ => 0
    | ⟨1, _⟩ => 1
    | ⟨2, _⟩ => -1
  left_inv a := by cases a <;> rfl
  right_inv a :=
    match a with
    | ⟨0, _⟩ => by simp
    | ⟨1, _⟩ => by simp
    | ⟨2, _⟩ => by simp
  map_mul' a b := by
    cases a <;> cases b <;> rfl

section CaseBashing

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sign/Variante6d0fcbd3a5442a5d1cd40ec51893ebf6d793d4c8aafabf15c3c78534b127a48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Sign/Variante6d0fcbd3a5442a5d1cd40ec51893ebf6d793d4c8aafabf15c3c78534b127a48.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd7e734e6c27ed4a33393fa6dee92e118a77b2fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
