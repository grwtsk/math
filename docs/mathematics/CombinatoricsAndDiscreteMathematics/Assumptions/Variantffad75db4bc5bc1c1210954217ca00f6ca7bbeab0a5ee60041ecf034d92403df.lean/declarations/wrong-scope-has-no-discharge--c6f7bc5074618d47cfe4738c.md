# wrong_scope_has_no_discharge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e5e4da1-1389-9b48-b312-73c9dab13223",
  "kind": "theorem",
  "lexical_name": "wrong_scope_has_no_discharge",
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
  "slug": "wrong-scope-has-no-discharge--c6f7bc5074618d47cfe4738c",
  "source": {
    "blob": "b8567b3671fa3ea32426cca8f23355ccf9e8abc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 264,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Assumptions/Variantffad75db4bc5bc1c1210954217ca00f6ca7bbeab0a5ee60041ecf034d92403df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6f7bc5074618d47cfe4738cd6d484a089427264295683e0d54d1f8db9640fba",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Assumptions/Variantffad75db4bc5bc1c1210954217ca00f6ca7bbeab0a5ee60041ecf034d92403df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e5e4da1-1389-9b48-b312-73c9dab13223`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wrong_scope_has_no_discharge : ¬Nonempty (DischargedAssumption (obligation 8 .square)) := by
  apply false_obligation_has_no_discharge
  change ¬(8 : ℕ) ^ 2 = 49
  norm_num

/-- Even a mathematically identical statement from a changed source does not bind implicitly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Assumptions/Variantffad75db4bc5bc1c1210954217ca00f6ca7bbeab0a5ee60041ecf034d92403df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Assumptions/Variantffad75db4bc5bc1c1210954217ca00f6ca7bbeab0a5ee60041ecf034d92403df.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8567b3671fa3ea32426cca8f23355ccf9e8abc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
