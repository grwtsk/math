# independent_of_coprime_order

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a679451d-73d6-bd4a-c35d-dd99531be93a",
  "kind": "theorem",
  "lexical_name": "independent_of_coprime_order",
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
  "slug": "independent-of-coprime-order--207742098761f92eda862b0d",
  "source": {
    "blob": "7a1adb76c984422a5c18d14d27fc2d55f7e88408",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 330,
    "line": 316,
    "path": "GRWTSK/Algebra/GroupTheory/NoncommPiCoprod/Variant3c0a1e7c358539c723b68c5463cc6e3ba8d26b593d5b6bed98c1fdc7616a521e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:207742098761f92eda862b0d80a64214d5caf47eeb93015e4e26abdba7736d5b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/NoncommPiCoprod/Variant3c0a1e7c358539c723b68c5463cc6e3ba8d26b593d5b6bed98c1fdc7616a521e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a679451d-73d6-bd4a-c35d-dd99531be93a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 316–330.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem independent_of_coprime_order
    (hcomm : Pairwise fun i j : ι => ∀ x y : G, x ∈ H i → y ∈ H j → Commute x y)
    [Finite ι] [∀ i, Fintype (H i)]
    (hcoprime : Pairwise fun i j => Nat.Coprime (Fintype.card (H i)) (Fintype.card (H j))) :
    iSupIndep H := by
  simpa using
    MonoidHom.independent_range_of_coprime_order (fun i => (H i).subtype)
      (commute_subtype_of_commute hcomm) hcoprime

variable [Fintype ι]

/-- The canonical homomorphism from a family of subgroups where elements from different subgroups
commute -/
@[to_additive /-- The canonical homomorphism from a family of additive subgroups where elements from
different subgroups commute -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/NoncommPiCoprod/Variant3c0a1e7c358539c723b68c5463cc6e3ba8d26b593d5b6bed98c1fdc7616a521e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/NoncommPiCoprod/Variant3c0a1e7c358539c723b68c5463cc6e3ba8d26b593d5b6bed98c1fdc7616a521e.lean#L316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a1adb76c984422a5c18d14d27fc2d55f7e88408` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
