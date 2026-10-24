# IsExposed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2bbdf5522da4dd805fb8aa29db47089c01eab0acd9c2a3a3684607422dae0d8f",
  "kind": "def",
  "lexical_name": "IsExposed",
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
  "slug": "isexposed--dec2060f306bb187dbe8fcc0",
  "source": {
    "blob": "0f9920d47ff4baab691ee798a26c504de4cbf8d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 68,
    "path": "GRWTSK/Topology/GeneralTopology/Exposed/Variant949d00017bce7d17e540c1fe6981633522ab73de770a5a4dfed42a87dbdba767.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dec2060f306bb187dbe8fcc04795417f248b0953d7638f8fb74ecbc7b7e44ed5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Exposed/Variant949d00017bce7d17e540c1fe6981633522ab73de770a5a4dfed42a87dbdba767.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2bbdf5522da4dd805fb8aa29db47089c01eab0acd9c2a3a3684607422dae0d8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsExposed (A B : Set E) : Prop :=
  B.Nonempty → ∃ l : E →L[𝕜] 𝕜, B = { x ∈ A | ∀ y ∈ A, l y ≤ l x }
#align is_exposed IsExposed

end PreorderSemiring

section OrderedRing

variable {𝕜 : Type*} {E : Type*} [TopologicalSpace 𝕜] [OrderedRing 𝕜] [AddCommMonoid E]
  [TopologicalSpace E] [Module 𝕜 E] {l : E →L[𝕜] 𝕜} {A B C : Set E} {X : Finset E} {x : E}

/-- A useful way to build exposed sets from intersecting `A` with halfspaces (modelled by an
inequality with a functional). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Exposed/Variant949d00017bce7d17e540c1fe6981633522ab73de770a5a4dfed42a87dbdba767.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Exposed/Variant949d00017bce7d17e540c1fe6981633522ab73de770a5a4dfed42a87dbdba767.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f9920d47ff4baab691ee798a26c504de4cbf8d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
