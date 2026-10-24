# stabilizerHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e84e4f4841ccf15de7ff8094b6af718df9cc07e35a8437fb92558333d4e60401",
  "kind": "def",
  "lexical_name": "stabilizerHom",
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
  "slug": "stabilizerhom--4848bfa40547fdd4f51b8763",
  "source": {
    "blob": "a48eb66e5f6b6ee26a6428452e16cac8c64fcbaa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 269,
    "path": "GRWTSK/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4848bfa40547fdd4f51b87632336d154481f07f5e51c8def932e78a0366100be",
  "verification": {
    "reference": "docs/verification/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e84e4f4841ccf15de7ff8094b6af718df9cc07e35a8437fb92558333d4e60401`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def stabilizerHom : MulAction.stabilizer G P →* ((B ⧸ P) ≃ₐ[A ⧸ p] (B ⧸ P)) where
  toFun g := algEquivOfEqMap p (MulSemiringAction.toAlgEquiv A B g) g.2.symm
  map_one' := by
    ext ⟨x⟩
    exact congrArg (Ideal.Quotient.mk P) (one_smul G x)
  map_mul' g h := by
    ext ⟨x⟩
    exact congrArg (Ideal.Quotient.mk P) (mul_smul g h x)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a48eb66e5f6b6ee26a6428452e16cac8c64fcbaa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
