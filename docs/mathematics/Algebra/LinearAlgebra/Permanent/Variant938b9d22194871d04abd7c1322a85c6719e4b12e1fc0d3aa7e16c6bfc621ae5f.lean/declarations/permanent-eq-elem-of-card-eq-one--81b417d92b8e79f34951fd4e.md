# permanent_eq_elem_of_card_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f1015abe-1583-84c7-9124-c86f13dadf19",
  "kind": "theorem",
  "lexical_name": "permanent_eq_elem_of_card_eq_one",
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
  "slug": "permanent-eq-elem-of-card-eq-one--81b417d92b8e79f34951fd4e",
  "source": {
    "blob": "6a8f0d979ee34cb3672aea15f5c6495cb7c5742c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 70,
    "path": "GRWTSK/Algebra/LinearAlgebra/Permanent/Variant938b9d22194871d04abd7c1322a85c6719e4b12e1fc0d3aa7e16c6bfc621ae5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81b417d92b8e79f34951fd4e14ac83eae2530bf000e114e9eb71c4dbf4cbf879",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Permanent/Variant938b9d22194871d04abd7c1322a85c6719e4b12e1fc0d3aa7e16c6bfc621ae5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1015abe-1583-84c7-9124-c86f13dadf19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem permanent_eq_elem_of_card_eq_one {A : Matrix n n R} (h : card n = 1) (k : n) :
    permanent A = A k k :=
  haveI : Subsingleton n := card_le_one_iff_subsingleton.mp h.le
  permanent_eq_elem_of_subsingleton _ _

/-- Transposing a matrix preserves the permanent. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Permanent/Variant938b9d22194871d04abd7c1322a85c6719e4b12e1fc0d3aa7e16c6bfc621ae5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Permanent/Variant938b9d22194871d04abd7c1322a85c6719e4b12e1fc0d3aa7e16c6bfc621ae5f.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a8f0d979ee34cb3672aea15f5c6495cb7c5742c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
