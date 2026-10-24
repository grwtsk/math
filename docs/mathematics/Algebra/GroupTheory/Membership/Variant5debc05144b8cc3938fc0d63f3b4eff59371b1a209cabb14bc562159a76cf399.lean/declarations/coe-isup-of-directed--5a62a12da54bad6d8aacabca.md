# coe_iSup_of_directed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43e0d132-cc9f-f4de-6075-175d60c1d03b",
  "kind": "theorem",
  "lexical_name": "coe_iSup_of_directed",
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
  "slug": "coe-isup-of-directed--5a62a12da54bad6d8aacabca",
  "source": {
    "blob": "b0191ff1f3097450c9924d3def3d40d4881ed12e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 66,
    "path": "GRWTSK/Algebra/GroupTheory/Membership/Variant5debc05144b8cc3938fc0d63f3b4eff59371b1a209cabb14bc562159a76cf399.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a62a12da54bad6d8aacabcad6b9e0288658069e06970aeb3002c08de3f2a4b8",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Membership/Variant5debc05144b8cc3938fc0d63f3b4eff59371b1a209cabb14bc562159a76cf399.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43e0d132-cc9f-f4de-6075-175d60c1d03b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_iSup_of_directed {S : ι → Subsemigroup M} (hS : Directed (· ≤ ·) S) :
    ((⨆ i, S i : Subsemigroup M) : Set M) = ⋃ i, ↑(S i) :=
  Set.ext fun x => by simp [mem_iSup_of_directed hS]
#align subsemigroup.coe_supr_of_directed Subsemigroup.coe_iSup_of_directed
#align add_subsemigroup.coe_supr_of_directed AddSubsemigroup.coe_iSup_of_directed

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Membership/Variant5debc05144b8cc3938fc0d63f3b4eff59371b1a209cabb14bc562159a76cf399.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Membership/Variant5debc05144b8cc3938fc0d63f3b4eff59371b1a209cabb14bc562159a76cf399.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0191ff1f3097450c9924d3def3d40d4881ed12e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
