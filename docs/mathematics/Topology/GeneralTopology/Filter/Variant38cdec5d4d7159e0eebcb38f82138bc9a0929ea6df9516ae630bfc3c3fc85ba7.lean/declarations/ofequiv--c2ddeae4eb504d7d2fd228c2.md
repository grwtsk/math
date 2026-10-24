# ofEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3532006d2c8cd1cb864ef62b1f3e7d5a39f2442c5393dcb9cbf93428cf487dff",
  "kind": "def",
  "lexical_name": "ofEquiv",
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
  "slug": "ofequiv--c2ddeae4eb504d7d2fd228c2",
  "source": {
    "blob": "ba1ceba3ff92b50bffd924ab11b9b796c73c9100",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 64,
    "path": "GRWTSK/Topology/GeneralTopology/Filter/Variant38cdec5d4d7159e0eebcb38f82138bc9a0929ea6df9516ae630bfc3c3fc85ba7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c2ddeae4eb504d7d2fd228c2edeccc9a74c414661a0ebc9f590535b312d15b1d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Filter/Variant38cdec5d4d7159e0eebcb38f82138bc9a0929ea6df9516ae630bfc3c3fc85ba7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3532006d2c8cd1cb864ef62b1f3e7d5a39f2442c5393dcb9cbf93428cf487dff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofEquiv (E : σ ≃ τ) : CFilter α σ → CFilter α τ
  | ⟨f, p, g, h₁, h₂⟩ =>
    { f := fun a ↦ f (E.symm a)
      pt := E p
      inf := fun a b ↦ E (g (E.symm a) (E.symm b))
      inf_le_left := fun a b ↦ by simpa using h₁ (E.symm a) (E.symm b)
      inf_le_right := fun a b ↦ by simpa using h₂ (E.symm a) (E.symm b) }

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Filter/Variant38cdec5d4d7159e0eebcb38f82138bc9a0929ea6df9516ae630bfc3c3fc85ba7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Filter/Variant38cdec5d4d7159e0eebcb38f82138bc9a0929ea6df9516ae630bfc3c3fc85ba7.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba1ceba3ff92b50bffd924ab11b9b796c73c9100` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
