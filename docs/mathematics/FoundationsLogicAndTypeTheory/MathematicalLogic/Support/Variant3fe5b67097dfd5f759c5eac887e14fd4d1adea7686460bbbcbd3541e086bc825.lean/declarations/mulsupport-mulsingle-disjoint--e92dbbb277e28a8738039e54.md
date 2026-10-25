# mulSupport_mulSingle_disjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bdd68ead-f8f2-4438-02eb-d2e972ee9350",
  "kind": "lemma",
  "lexical_name": "mulSupport_mulSingle_disjoint",
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
  "slug": "mulsupport-mulsingle-disjoint--e92dbbb277e28a8738039e54",
  "source": {
    "blob": "2a41ee681ad7be62d158e74b368a4224bd1ade77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 247,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Support/Variant3fe5b67097dfd5f759c5eac887e14fd4d1adea7686460bbbcbd3541e086bc825.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e92dbbb277e28a8738039e54395785c1cd68ee0a36a4fcbbfd443ad5f677214d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Support/Variant3fe5b67097dfd5f759c5eac887e14fd4d1adea7686460bbbcbd3541e086bc825.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bdd68ead-f8f2-4438-02eb-d2e972ee9350`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mulSupport_mulSingle_disjoint (ha : a ≠ 1) (hb : b ≠ 1) :
    Disjoint (mulSupport (mulSingle i a)) (mulSupport (mulSingle j b)) ↔ i ≠ j := by
  rw [mulSupport_mulSingle_of_ne ha, mulSupport_mulSingle_of_ne hb, disjoint_singleton]

end Pi
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Support/Variant3fe5b67097dfd5f759c5eac887e14fd4d1adea7686460bbbcbd3541e086bc825.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Support/Variant3fe5b67097dfd5f759c5eac887e14fd4d1adea7686460bbbcbd3541e086bc825.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a41ee681ad7be62d158e74b368a4224bd1ade77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
