# mk'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:04aa285e6ae417bdfd59d9196b4b47e7adb2df723ea906a824e7c92e032fbb70",
  "kind": "def",
  "lexical_name": "mk'",
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
  "slug": "mk--7edb2b6357dc7bce99d6e3c7",
  "source": {
    "blob": "12fbf96ab0aaf6b734fa7f0f304a81cf3aed6a4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 390,
    "line": 385,
    "path": "GRWTSK/Topology/GeneralTopology/AffineIsometry/Variant63399bcd0854e80e953531e5786fd9978542e148fcc4c8030d5505abba928cd5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7edb2b6357dc7bce99d6e3c7f1a117ecfde1263ad4b6af7032ccf1e967117b5f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AffineIsometry/Variant63399bcd0854e80e953531e5786fd9978542e148fcc4c8030d5505abba928cd5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:04aa285e6ae417bdfd59d9196b4b47e7adb2df723ea906a824e7c92e032fbb70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 385–390.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mk' (e : P₁ → P₂) (e' : V₁ ≃ₗᵢ[𝕜] V₂) (p : P₁) (h : ∀ p' : P₁, e p' = e' (p' -ᵥ p) +ᵥ e p) :
    P₁ ≃ᵃⁱ[𝕜] P₂ :=
  { AffineEquiv.mk' e e'.toLinearEquiv p h with norm_map := e'.norm_map }
#align affine_isometry_equiv.mk' AffineIsometryEquiv.mk'

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AffineIsometry/Variant63399bcd0854e80e953531e5786fd9978542e148fcc4c8030d5505abba928cd5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AffineIsometry/Variant63399bcd0854e80e953531e5786fd9978542e148fcc4c8030d5505abba928cd5.lean#L385).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12fbf96ab0aaf6b734fa7f0f304a81cf3aed6a4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
