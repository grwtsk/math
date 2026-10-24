# Set.Finite.isCompact_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32da54c6-982b-5cea-81e4-158a77272e69",
  "kind": "theorem",
  "lexical_name": "Set.Finite.isCompact_closure",
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
  "slug": "set-finite-iscompact-closure--f1ca38bb13096ada5f047627",
  "source": {
    "blob": "0c592c2fa323e46713beb19aa30831ced6a00d94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 378,
    "line": 370,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantca2adcd2681284e3e26070195ef55dfd6f6cd59606cbbcea93c03c1a9fc056a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1ca38bb13096ada5f047627a79382e85c2b396de1b509116476f706a1c4d326",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantca2adcd2681284e3e26070195ef55dfd6f6cd59606cbbcea93c03c1a9fc056a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32da54c6-982b-5cea-81e4-158a77272e69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 370–378.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Set.Finite.isCompact_closure {s : Set X} (hs : s.Finite) : IsCompact (closure s) :=
  let _ : Bornology X := .relativelyCompact X
  Bornology.relativelyCompact.isBounded_iff.1 hs.isBounded

end R0Space

/-- A T₁ space, also known as a Fréchet space, is a topological space
  where every singleton set is closed. Equivalently, for every pair
  `x ≠ y`, there is an open set containing `x` and not `y`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantca2adcd2681284e3e26070195ef55dfd6f6cd59606cbbcea93c03c1a9fc056a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantca2adcd2681284e3e26070195ef55dfd6f6cd59606cbbcea93c03c1a9fc056a4.lean#L370).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c592c2fa323e46713beb19aa30831ced6a00d94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
