# hrecOn₂'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2014812580bb84fb7e414b9710db8a66e619ad071d8e93b451bf8b85a248388b",
  "kind": "def",
  "lexical_name": "hrecOn₂'",
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
  "slug": "hrecon--5427a59fc8bf8d5aa6dc3834",
  "source": {
    "blob": "7640ea28751428e78f6a1131e840e5dc77afc399",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 740,
    "line": 733,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Quot/Variantb191e4d4312aa4e67ff3f05f50b91e4a012ca613ca913caa0281e593e0cbb06e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5427a59fc8bf8d5aa6dc38342e39dddb3d1c26fdbb83837c3e9d67be9a0427c1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Quot/Variantb191e4d4312aa4e67ff3f05f50b91e4a012ca613ca913caa0281e593e0cbb06e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2014812580bb84fb7e414b9710db8a66e619ad071d8e93b451bf8b85a248388b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 733–740.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def hrecOn₂' {φ : Quotient s₁ → Quotient s₂ → Sort*} (qa : Quotient s₁)
    (qb : Quotient s₂) (f : ∀ a b, φ (Quotient.mk'' a) (Quotient.mk'' b))
    (c : ∀ a₁ b₁ a₂ b₂, a₁ ≈ a₂ → b₁ ≈ b₂ → HEq (f a₁ b₁) (f a₂ b₂)) :
    φ qa qb :=
  Quotient.hrecOn₂ qa qb f c
#align quotient.hrec_on₂' Quotient.hrecOn₂'

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Quot/Variantb191e4d4312aa4e67ff3f05f50b91e4a012ca613ca913caa0281e593e0cbb06e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Quot/Variantb191e4d4312aa4e67ff3f05f50b91e4a012ca613ca913caa0281e593e0cbb06e.lean#L733).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7640ea28751428e78f6a1131e840e5dc77afc399` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
