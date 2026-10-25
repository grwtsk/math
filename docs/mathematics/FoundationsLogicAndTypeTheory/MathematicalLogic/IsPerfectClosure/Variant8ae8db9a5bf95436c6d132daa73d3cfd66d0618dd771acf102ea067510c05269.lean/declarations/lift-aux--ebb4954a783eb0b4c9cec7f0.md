# lift_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d29e6935-b924-ddae-2d14-1af685bd6dbd",
  "kind": "theorem",
  "lexical_name": "lift_aux",
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
  "slug": "lift-aux--ebb4954a783eb0b4c9cec7f0",
  "source": {
    "blob": "a9e581dba9100518c6cc34f0c86c2d2c02e568db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 223,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/IsPerfectClosure/Variant8ae8db9a5bf95436c6d132daa73d3cfd66d0618dd771acf102ea067510c05269.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ebb4954a783eb0b4c9cec7f071481cfdcb639ac514f53075b0c286a88433eda2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/IsPerfectClosure/Variant8ae8db9a5bf95436c6d132daa73d3cfd66d0618dd771acf102ea067510c05269.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d29e6935-b924-ddae-2d14-1af685bd6dbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_aux (x : L) : ∃ y : ℕ × K, i y.2 = x ^ p ^ y.1 := by
  obtain ⟨n, y, h⟩ := IsPRadical.pow_mem i p x
  exact ⟨(n, y), h⟩

/-- If `i : K →+* L` and `j : K →+* M` are ring homomorphisms of characteristic `p` rings, such that
`i` is `p`-radical (in fact only the `IsPRadical.pow_mem` is required) and `M` is a perfect ring,
then one can define a map `L → M` which maps an element `x` of `L` to `y ^ (p ^ -n)` if
`x ^ (p ^ n)` is equal to some element `y` of `K`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/IsPerfectClosure/Variant8ae8db9a5bf95436c6d132daa73d3cfd66d0618dd771acf102ea067510c05269.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/IsPerfectClosure/Variant8ae8db9a5bf95436c6d132daa73d3cfd66d0618dd771acf102ea067510c05269.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9e581dba9100518c6cc34f0c86c2d2c02e568db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
