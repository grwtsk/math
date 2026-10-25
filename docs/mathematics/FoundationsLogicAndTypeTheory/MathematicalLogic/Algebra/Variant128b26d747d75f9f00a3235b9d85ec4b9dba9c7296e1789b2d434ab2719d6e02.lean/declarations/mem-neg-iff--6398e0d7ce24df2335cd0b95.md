# memₗ_neg_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5bdcdb1c-b93f-abfa-2136-3d9f4dcae7ed",
  "kind": "lemma",
  "lexical_name": "memₗ_neg_iff",
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
  "slug": "mem-neg-iff--6398e0d7ce24df2335cd0b95",
  "source": {
    "blob": "edb9bb408eb9f5c634bc17b91668ebaa0643d465",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 206,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Algebra/Variant128b26d747d75f9f00a3235b9d85ec4b9dba9c7296e1789b2d434ab2719d6e02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6398e0d7ce24df2335cd0b959a3a4421dbf12add51971398be4f035314ca4904",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Algebra/Variant128b26d747d75f9f00a3235b9d85ec4b9dba9c7296e1789b2d434ab2719d6e02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5bdcdb1c-b93f-abfa-2136-3d9f4dcae7ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma memₗ_neg_iff : ∀ {x y : PGame},
    x ∈ₗ -y ↔ ∃ z ∈ᵣ y, x ≡ -z
  | mk _ _ _ _, mk _ _ _ _ =>
    ⟨fun ⟨_i, hi⟩ ↦ ⟨_, ⟨_, refl _⟩, hi⟩, fun ⟨_, ⟨i, hi⟩, h⟩ ↦ ⟨i, h.trans hi.neg⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Algebra/Variant128b26d747d75f9f00a3235b9d85ec4b9dba9c7296e1789b2d434ab2719d6e02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Algebra/Variant128b26d747d75f9f00a3235b9d85ec4b9dba9c7296e1789b2d434ab2719d6e02.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edb9bb408eb9f5c634bc17b91668ebaa0643d465` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
