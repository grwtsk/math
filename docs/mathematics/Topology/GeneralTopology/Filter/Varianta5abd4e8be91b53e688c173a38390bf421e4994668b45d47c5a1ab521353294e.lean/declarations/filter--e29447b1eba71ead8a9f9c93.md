# filter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a1107489d845e020ffec9c2f7030a59d6b6735fef7a2ace80ee28f3836f899aa",
  "kind": "def",
  "lexical_name": "filter",
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
  "slug": "filter--e29447b1eba71ead8a9f9c93",
  "source": {
    "blob": "2eb87727e0a29eb14857fe760fe81ce999f036a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 20,
    "path": "GRWTSK/Topology/GeneralTopology/Filter/Varianta5abd4e8be91b53e688c173a38390bf421e4994668b45d47c5a1ab521353294e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e29447b1eba71ead8a9f9c933af8cad7cf512da30a87f7c535d8e5a4f9a5ef97",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Filter/Varianta5abd4e8be91b53e688c173a38390bf421e4994668b45d47c5a1ab521353294e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a1107489d845e020ffec9c2f7030a59d6b6735fef7a2ace80ee28f3836f899aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def filter (p : α → Prop) [DecidablePred p] (as : List α) : List α :=
  match as with
  | [] => []
  | a::as => if p a then a :: filter p as else filter p as

variable {p : α → Prop} [DecidablePred p] {as bs : List α}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Filter/Varianta5abd4e8be91b53e688c173a38390bf421e4994668b45d47c5a1ab521353294e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Filter/Varianta5abd4e8be91b53e688c173a38390bf421e4994668b45d47c5a1ab521353294e.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2eb87727e0a29eb14857fe760fe81ce999f036a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
