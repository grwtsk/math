# type₁_pairing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6af9add8-5d65-3e31-a5b0-44a04950afda",
  "kind": "lemma",
  "lexical_name": "type₁_pairing",
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
  "slug": "type-pairing--80e0ff71023f1e1258ca24a5",
  "source": {
    "blob": "1b31d82bf69277cc3cdf58e3918ae4fd24be61a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 181,
    "path": "GRWTSK/Topology/AlgebraicTopology/PairingCore/Variant13e16f1775309ac4e976ae8a71b5eea5461e73895a0e8de45b8c92932f2ad071.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80e0ff71023f1e1258ca24a5f38e90dee3f6f57b51d33db4b226d8a001644df5",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/PairingCore/Variant13e16f1775309ac4e976ae8a71b5eea5461e73895a0e8de45b8c92932f2ad071.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6af9add8-5d65-3e31-a5b0-44a04950afda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma type₁_pairing (x : h.ι) :
    h.type₁ x = h.pairing.p (h.equivII x) := by
  simp

/-- The condition that `h : A.PairingCore` is proper, i.e. for each `s : h.ι`,
the type (II) simplex `h.type₂ s` is uniquely a `1`-codimensional
face of the type (I) simplex `h.type₁ s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/PairingCore/Variant13e16f1775309ac4e976ae8a71b5eea5461e73895a0e8de45b8c92932f2ad071.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/PairingCore/Variant13e16f1775309ac4e976ae8a71b5eea5461e73895a0e8de45b8c92932f2ad071.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b31d82bf69277cc3cdf58e3918ae4fd24be61a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
