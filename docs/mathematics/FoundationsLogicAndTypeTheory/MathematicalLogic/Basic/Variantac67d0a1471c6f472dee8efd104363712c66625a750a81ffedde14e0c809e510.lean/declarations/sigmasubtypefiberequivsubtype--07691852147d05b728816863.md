# sigmaSubtypeFiberEquivSubtype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:669e6dd9fe20deb6ca13a5841feb39b45f805ce92e343e13185d6b4ca752bedc",
  "kind": "def",
  "lexical_name": "sigmaSubtypeFiberEquivSubtype",
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
  "slug": "sigmasubtypefiberequivsubtype--07691852147d05b728816863",
  "source": {
    "blob": "f5a100d20e7acfb10fd70a2aa6dd5e500c2e808a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 406,
    "line": 391,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantac67d0a1471c6f472dee8efd104363712c66625a750a81ffedde14e0c809e510.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:07691852147d05b728816863e09e27699e704d080e480db86e076ee7caa840d6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantac67d0a1471c6f472dee8efd104363712c66625a750a81ffedde14e0c809e510.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:669e6dd9fe20deb6ca13a5841feb39b45f805ce92e343e13185d6b4ca752bedc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 391–406.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sigmaSubtypeFiberEquivSubtype {α β : Type*} (f : α → β) {p : α → Prop} {q : β → Prop}
    (h : ∀ x, p x ↔ q (f x)) : (Σ y : Subtype q, { x : α // f x = y }) ≃ Subtype p :=
  calc
    (Σy : Subtype q, { x : α // f x = y }) ≃ Σy :
        Subtype q, { x : Subtype p // Subtype.mk (f x) ((h x).1 x.2) = y } := by {
          apply sigmaCongrRight
          intro y
          apply Equiv.symm
          refine (subtypeSubtypeEquivSubtypeExists _ _).trans (subtypeEquivRight ?_)
          intro x
          exact ⟨fun ⟨hp, h'⟩ => congr_arg Subtype.val h', fun h' => ⟨(h x).2 (h'.symm ▸ y.2),
            Subtype.eq h'⟩⟩ }
    _ ≃ Subtype p := sigmaFiberEquiv fun x : Subtype p => (⟨f x, (h x).1 x.property⟩ : Subtype q)

/-- A sigma type over an `Option` is equivalent to the sigma set over the original type,
if the fiber is empty at none. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantac67d0a1471c6f472dee8efd104363712c66625a750a81ffedde14e0c809e510.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantac67d0a1471c6f472dee8efd104363712c66625a750a81ffedde14e0c809e510.lean#L391).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5a100d20e7acfb10fd70a2aa6dd5e500c2e808a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
