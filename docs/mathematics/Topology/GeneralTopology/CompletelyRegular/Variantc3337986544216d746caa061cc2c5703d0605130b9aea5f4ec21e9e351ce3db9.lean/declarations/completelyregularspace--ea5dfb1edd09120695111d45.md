# CompletelyRegularSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:66a0ed4df683d6cbd047c40e2602295b0d9392981e902e1cb44fba69b948c7a9",
  "kind": "class",
  "lexical_name": "CompletelyRegularSpace",
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
  "slug": "completelyregularspace--ea5dfb1edd09120695111d45",
  "source": {
    "blob": "78757f98f10a2a14fa36649f4aa13d5a11650a99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 70,
    "path": "GRWTSK/Topology/GeneralTopology/CompletelyRegular/Variantc3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ea5dfb1edd09120695111d4599cd66aacb6b58b3eb9d09ed18d941ebeca7be5c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompletelyRegular/Variantc3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:66a0ed4df683d6cbd047c40e2602295b0d9392981e902e1cb44fba69b948c7a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class CompletelyRegularSpace (X : Type u) [TopologicalSpace X] : Prop where
  completely_regular : ∀ (x : X), ∀ K : Set X, IsClosed K → x ∉ K →
    ∃ f : X → I, Continuous f ∧ f x = 0 ∧ EqOn f 1 K

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompletelyRegular/Variantc3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompletelyRegular/Variantc3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78757f98f10a2a14fa36649f4aa13d5a11650a99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
