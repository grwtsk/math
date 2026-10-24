# trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4d7a570ac34b9dcd28fc313c37e1f08dd84dca05a1fa8ab88464006059a8d552",
  "kind": "def",
  "lexical_name": "trans",
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
  "slug": "trans--60595cab2a57ceea9014cba9",
  "source": {
    "blob": "6499b31bd0cb95bd62b3c1f4cca68ec23db069e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 593,
    "line": 586,
    "path": "GRWTSK/Topology/AlgebraicTopology/Basic/Variantb0abdba97ada729242c5ef06799598f465f04b6ec7fea79895a9f5a4056f2e84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:60595cab2a57ceea9014cba9c807ed664e70aaea089dfd1c4924fc3bb85cb3c9",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Basic/Variantb0abdba97ada729242c5ef06799598f465f04b6ec7fea79895a9f5a4056f2e84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4d7a570ac34b9dcd28fc313c37e1f08dd84dca05a1fa8ab88464006059a8d552`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 586–593.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def trans (F : HomotopyRel f₀ f₁ S) (G : HomotopyRel f₁ f₂ S) : HomotopyRel f₀ f₂ S where
  toHomotopy := F.toHomotopy.trans G.toHomotopy
  prop' t x hx := by
    simp only [Homotopy.trans]
    split_ifs
    · simp [HomotopyWith.extendProp F (2 * t) x hx, F.fst_eq_snd hx, G.fst_eq_snd hx]
    · simp [HomotopyWith.extendProp G (2 * t - 1) x hx, F.fst_eq_snd hx, G.fst_eq_snd hx]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Basic/Variantb0abdba97ada729242c5ef06799598f465f04b6ec7fea79895a9f5a4056f2e84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Basic/Variantb0abdba97ada729242c5ef06799598f465f04b6ec7fea79895a9f5a4056f2e84.lean#L586).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6499b31bd0cb95bd62b3c1f4cca68ec23db069e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
