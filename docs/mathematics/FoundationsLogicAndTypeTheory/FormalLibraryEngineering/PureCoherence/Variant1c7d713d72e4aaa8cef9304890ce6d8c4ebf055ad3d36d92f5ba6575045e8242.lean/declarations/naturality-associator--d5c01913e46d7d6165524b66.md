# naturality_associator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b18efa5-ac75-e697-e193-c0a26cd4d316",
  "kind": "theorem",
  "lexical_name": "naturality_associator",
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
  "slug": "naturality-associator--d5c01913e46d7d6165524b66",
  "source": {
    "blob": "1bf6422ed57a04da3acccb60512e86912aff5b31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 46,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variant1c7d713d72e4aaa8cef9304890ce6d8c4ebf055ad3d36d92f5ba6575045e8242.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5c01913e46d7d6165524b66007b1e78a2e868fb3248f2572a39b4cbcdd32aa1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variant1c7d713d72e4aaa8cef9304890ce6d8c4ebf055ad3d36d92f5ba6575045e8242.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b18efa5-ac75-e697-e193-c0a26cd4d316`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem naturality_associator
    {p : a ⟶ b} {f : b ⟶ c} {g : c ⟶ d} {h : d ⟶ e} {pf : a ⟶ c} {pfg : a ⟶ d} {pfgh : a ⟶ e}
    (η_f : p ≫ f ≅ pf) (η_g : pf ≫ g ≅ pfg) (η_h : pfg ≫ h ≅ pfgh) :
    p ◁ (α_ f g h) ≪≫ (normalizeIsoComp η_f (normalizeIsoComp η_g η_h)) =
    (normalizeIsoComp (normalizeIsoComp η_f η_g) η_h) :=
  Iso.ext (by simp)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variant1c7d713d72e4aaa8cef9304890ce6d8c4ebf055ad3d36d92f5ba6575045e8242.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variant1c7d713d72e4aaa8cef9304890ce6d8c4ebf055ad3d36d92f5ba6575045e8242.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bf6422ed57a04da3acccb60512e86912aff5b31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
