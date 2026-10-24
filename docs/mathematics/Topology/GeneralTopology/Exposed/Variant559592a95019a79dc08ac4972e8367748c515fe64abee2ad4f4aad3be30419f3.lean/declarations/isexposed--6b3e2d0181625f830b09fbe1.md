# IsExposed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f73d7fed84b2a17c7d805cabbd77cd1d3e3bb94912a11931697dc93698a7a430",
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
  "slug": "isexposed--6b3e2d0181625f830b09fbe1",
  "source": {
    "blob": "8bad2df0c7b743de8cf2a3fe500eac183e368fcd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 51,
    "path": "GRWTSK/Topology/GeneralTopology/Exposed/Variant559592a95019a79dc08ac4972e8367748c515fe64abee2ad4f4aad3be30419f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6b3e2d0181625f830b09fbe1d524fb9baaf6431bb10c73c7e3948f6869d08e46",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Exposed/Variant559592a95019a79dc08ac4972e8367748c515fe64abee2ad4f4aad3be30419f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f73d7fed84b2a17c7d805cabbd77cd1d3e3bb94912a11931697dc93698a7a430`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsExposed (A B : Set E) : Prop :=
  B.Nonempty → ∃ l : E →L[𝕜] 𝕜, B = { x ∈ A | ∀ y ∈ A, l y ≤ l x }

end PreorderSemiring

section OrderedRing

variable {𝕜 : Type*} {E : Type*} [TopologicalSpace 𝕜] [Ring 𝕜] [PartialOrder 𝕜] [AddCommMonoid E]
  [TopologicalSpace E] [Module 𝕜 E] {l : E →L[𝕜] 𝕜} {A B C : Set E} {x : E}

/-- A useful way to build exposed sets from intersecting `A` with half-spaces (modelled by an
inequality with a functional). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Exposed/Variant559592a95019a79dc08ac4972e8367748c515fe64abee2ad4f4aad3be30419f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Exposed/Variant559592a95019a79dc08ac4972e8367748c515fe64abee2ad4f4aad3be30419f3.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bad2df0c7b743de8cf2a3fe500eac183e368fcd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
