# fintypeSetWalkLengthLT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:682c272f7418f6284a95565032f4938d7e548c8db6dfc806dafd2807dbdba9c0",
  "kind": "instance",
  "lexical_name": "fintypeSetWalkLengthLT",
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
  "slug": "fintypesetwalklengthlt--a89ecbacc8f67fc594323b39",
  "source": {
    "blob": "94c1111e81555a91a37824333407c55748c2f72e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 158,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/WalkCounting/Variantb7bb2629de72f4541fead1635932e09142cc8c8bc44decc7b9f767184bb2a9db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a89ecbacc8f67fc594323b393a226ae5167a3946a22bbe48820d0e21859881fe",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/WalkCounting/Variantb7bb2629de72f4541fead1635932e09142cc8c8bc44decc7b9f767184bb2a9db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:682c272f7418f6284a95565032f4938d7e548c8db6dfc806dafd2807dbdba9c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance fintypeSetWalkLengthLT (u v : V) (n : ℕ) : Fintype {p : G.Walk u v | p.length < n} :=
  Fintype.ofFinset (G.finsetWalkLengthLT n u v) fun p ↦ by
    rw [← Finset.mem_coe, coe_finsetWalkLengthLT_eq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/WalkCounting/Variantb7bb2629de72f4541fead1635932e09142cc8c8bc44decc7b9f767184bb2a9db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/WalkCounting/Variantb7bb2629de72f4541fead1635932e09142cc8c8bc44decc7b9f767184bb2a9db.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94c1111e81555a91a37824333407c55748c2f72e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
