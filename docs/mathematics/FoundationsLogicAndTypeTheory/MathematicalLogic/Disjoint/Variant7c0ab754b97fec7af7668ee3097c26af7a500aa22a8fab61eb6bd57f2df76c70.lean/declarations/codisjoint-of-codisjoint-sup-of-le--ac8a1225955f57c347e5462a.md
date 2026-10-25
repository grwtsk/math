# Codisjoint.of_codisjoint_sup_of_le'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b25705e-66ec-b35a-1c83-11c22abda682",
  "kind": "theorem",
  "lexical_name": "Codisjoint.of_codisjoint_sup_of_le'",
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
  "slug": "codisjoint-of-codisjoint-sup-of-le--ac8a1225955f57c347e5462a",
  "source": {
    "blob": "669fe40d82b434e42a56f3a1d325449161afb1ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 331,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Disjoint/Variant7c0ab754b97fec7af7668ee3097c26af7a500aa22a8fab61eb6bd57f2df76c70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac8a1225955f57c347e5462a806b5de96e9c1ad9d8ae4e7fe9897cba71c60b0f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Disjoint/Variant7c0ab754b97fec7af7668ee3097c26af7a500aa22a8fab61eb6bd57f2df76c70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b25705e-66ec-b35a-1c83-11c22abda682`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Codisjoint.of_codisjoint_sup_of_le' (h : Codisjoint (a ⊔ b) c) (hle : c ≤ b) :
    Codisjoint a b :=
  @Disjoint.of_disjoint_inf_of_le' αᵒᵈ _ _ _ _ _ h hle

end SemilatticeSupTop

section DistribLatticeTop

variable [DistribLattice α] [OrderTop α] {a b c : α}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Disjoint/Variant7c0ab754b97fec7af7668ee3097c26af7a500aa22a8fab61eb6bd57f2df76c70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Disjoint/Variant7c0ab754b97fec7af7668ee3097c26af7a500aa22a8fab61eb6bd57f2df76c70.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `669fe40d82b434e42a56f3a1d325449161afb1ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
