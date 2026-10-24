# cycle_support

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8739a1d7-ddd8-e730-423d-d31bc55cdf15",
  "kind": "theorem",
  "lexical_name": "cycle_support",
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
  "slug": "cycle-support--0bfb06ebeb23326980a6c79d",
  "source": {
    "blob": "826afa8d34142790e54d9756005c06fb1b20552f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 194,
    "path": "GRWTSK/NumberTheory/Diophantine/UnitEquation/RationalBoundaryCycle.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0bfb06ebeb23326980a6c79d0af635c9e49d94c6efbcdbbfe261afcb17992077",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/UnitEquation/RationalBoundaryCycle.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8739a1d7-ddd8-e730-423d-d31bc55cdf15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cycle_support (q : UnitPair) :
    pairSupport (cycle q).left (cycle q).right = pairSupport q.left q.right := by
  ext p
  by_cases hp : p.Prime
  · rw [mem_pairSupport_iff _ _ (cycle q).left_ne (cycle q).right_ne p hp,
      mem_pairSupport_iff _ _ q.left_ne q.right_ne p hp,
      (cycle_valuations q p hp).1,(cycle_valuations q p hp).2]
    omega
  · have hL : p ∉ pairSupport (cycle q).left (cycle q).right :=
      fun h => hp (pairSupport_prime _ _ p h)
    have hR : p ∉ pairSupport q.left q.right := fun h => hp (pairSupport_prime _ _ p h)
    simp [hL,hR]

/-- Six LABELLED charts; exceptional inputs can have fewer than six distinct values. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/UnitEquation/RationalBoundaryCycle.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/UnitEquation/RationalBoundaryCycle.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `826afa8d34142790e54d9756005c06fb1b20552f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
