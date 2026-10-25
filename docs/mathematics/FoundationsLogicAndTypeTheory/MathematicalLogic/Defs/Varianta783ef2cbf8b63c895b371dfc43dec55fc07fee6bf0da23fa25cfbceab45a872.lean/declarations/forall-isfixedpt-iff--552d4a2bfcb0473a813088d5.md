# forall_isFixedPt_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e06ac8e6-c6bb-25b1-a31e-9f5b8639d563",
  "kind": "theorem",
  "lexical_name": "forall_isFixedPt_iff",
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
  "slug": "forall-isfixedpt-iff--552d4a2bfcb0473a813088d5",
  "source": {
    "blob": "565ae3df6b95fa084d60818ab13fab2e80874f3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 232,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianta783ef2cbf8b63c895b371dfc43dec55fc07fee6bf0da23fa25cfbceab45a872.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:552d4a2bfcb0473a813088d580e21e6513e05659bbca75303b85e3e480beaf2d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianta783ef2cbf8b63c895b371dfc43dec55fc07fee6bf0da23fa25cfbceab45a872.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e06ac8e6-c6bb-25b1-a31e-9f5b8639d563`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem forall_isFixedPt_iff {f : α → α} : (∀ x, IsFixedPt f x) ↔ f = id :=
  ⟨funext, fun h ↦ h ▸ isFixedPt_id⟩

end Function

namespace Pi

variable {ι : Sort*} {α β : ι → Sort*}

/- ### `Pi.map` function -/

/-- Sends a dependent function `a : ∀ i, α i` to a dependent function `Pi.map f a : ∀ i, β i`
by applying `f i` to `i`-th component. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianta783ef2cbf8b63c895b371dfc43dec55fc07fee6bf0da23fa25cfbceab45a872.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianta783ef2cbf8b63c895b371dfc43dec55fc07fee6bf0da23fa25cfbceab45a872.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `565ae3df6b95fa084d60818ab13fab2e80874f3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
