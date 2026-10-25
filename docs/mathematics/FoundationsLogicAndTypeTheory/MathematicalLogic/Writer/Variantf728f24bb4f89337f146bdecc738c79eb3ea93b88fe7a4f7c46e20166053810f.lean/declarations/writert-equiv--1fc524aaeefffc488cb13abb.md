# WriterT.equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:62c64b07cf8be5641952f8de40ff925395d9a93d0f28e52bf066a22d9869a40a",
  "kind": "def",
  "lexical_name": "WriterT.equiv",
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
  "slug": "writert-equiv--1fc524aaeefffc488cb13abb",
  "source": {
    "blob": "9e19222af613ef51d623a6b4f52618034e91190d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 215,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variantf728f24bb4f89337f146bdecc738c79eb3ea93b88fe7a4f7c46e20166053810f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1fc524aaeefffc488cb13abb923ad6ef8d2c324a1ea818b24a6543a1614374d3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variantf728f24bb4f89337f146bdecc738c79eb3ea93b88fe7a4f7c46e20166053810f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:62c64b07cf8be5641952f8de40ff925395d9a93d0f28e52bf066a22d9869a40a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def WriterT.equiv {m₁ : Type u₀ → Type v₀} {m₂ : Type u₁ → Type v₁}
    {α₁ ω₁ : Type u₀} {α₂ ω₂ : Type u₁} (F : (m₁ (α₁ × ω₁)) ≃ (m₂ (α₂ × ω₂))) :
    WriterT ω₁ m₁ α₁ ≃ WriterT ω₂ m₂ α₂ where
  toFun (f : m₁ _) := WriterT.mk <| F f
  invFun (f : m₂ _) := WriterT.mk <| F.symm f
  left_inv (f : m₁ _) := congr_arg WriterT.mk <| F.left_inv f
  right_inv (f : m₂ _) := congr_arg WriterT.mk <| F.right_inv f
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variantf728f24bb4f89337f146bdecc738c79eb3ea93b88fe7a4f7c46e20166053810f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variantf728f24bb4f89337f146bdecc738c79eb3ea93b88fe7a4f7c46e20166053810f.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e19222af613ef51d623a6b4f52618034e91190d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
