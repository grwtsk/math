# rodriguesFrobenius_semilinear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4945b380-9694-661c-68ab-12d8af39dc56",
  "kind": "theorem",
  "lexical_name": "rodriguesFrobenius_semilinear",
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
  "slug": "rodriguesfrobenius-semilinear--39269884e3229d4952e026b1",
  "source": {
    "blob": "bedeb4fcdaf7fff645e3aeb1625cfe8c915b6da0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 121,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/RodriguesFrobenius/Variant97b2e9a07aa55258c09d0b056d532c646fc7f7015f600d441b68e21da0bcbd67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39269884e3229d4952e026b1b3c5702802dde24b6a6a4392c884427254664334",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/RodriguesFrobenius/Variant97b2e9a07aa55258c09d0b056d532c646fc7f7015f600d441b68e21da0bcbd67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4945b380-9694-661c-68ab-12d8af39dc56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rodriguesFrobenius_semilinear
    (operator : RodriguesFrobenius H)
    (coefficient : ℝ)
    (value : H) :
    rodriguesFrobenius operator (coefficient • value) =
      operator.frobenius.scalar coefficient •
        rodriguesFrobenius operator value := by
  unfold rodriguesFrobenius
  rw [operator.frobenius.map_smul]
  exact operator.rodrigues.rotation.map_smul _ _

/-- The declared Frobenius pairing law holds for the combined operator. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/RodriguesFrobenius/Variant97b2e9a07aa55258c09d0b056d532c646fc7f7015f600d441b68e21da0bcbd67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/RodriguesFrobenius/Variant97b2e9a07aa55258c09d0b056d532c646fc7f7015f600d441b68e21da0bcbd67.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bedeb4fcdaf7fff645e3aeb1625cfe8c915b6da0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
