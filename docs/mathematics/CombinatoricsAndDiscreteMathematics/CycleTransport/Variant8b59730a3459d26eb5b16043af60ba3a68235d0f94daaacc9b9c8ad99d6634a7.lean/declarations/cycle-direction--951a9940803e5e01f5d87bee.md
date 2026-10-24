# cycle_direction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a014664-1265-f594-5c46-66da4135a49f",
  "kind": "theorem",
  "lexical_name": "cycle_direction",
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
  "slug": "cycle-direction--951a9940803e5e01f5d87bee",
  "source": {
    "blob": "a4e32e796f5cfd63530f1204f61d94bba90d5a38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 242,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CycleTransport/Variant8b59730a3459d26eb5b16043af60ba3a68235d0f94daaacc9b9c8ad99d6634a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:951a9940803e5e01f5d87beea5d734b00975207af5196136959fe245a1040b3b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CycleTransport/Variant8b59730a3459d26eb5b16043af60ba3a68235d0f94daaacc9b9c8ad99d6634a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a014664-1265-f594-5c46-66da4135a49f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cycle_direction
    {original : DirectedCycleQuantum X}
    (reindexing : CyclicReindexing original) :
    reindexing.cycle.direction = original.direction :=
  rfl

end CyclicReindexing

/--
Evidence that the ordered transport around one complete cycle has genuinely
higher order.  This deliberately does not follow from the involutivity of the
individual edges.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CycleTransport/Variant8b59730a3459d26eb5b16043af60ba3a68235d0f94daaacc9b9c8ad99d6634a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CycleTransport/Variant8b59730a3459d26eb5b16043af60ba3a68235d0f94daaacc9b9c8ad99d6634a7.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4e32e796f5cfd63530f1204f61d94bba90d5a38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
