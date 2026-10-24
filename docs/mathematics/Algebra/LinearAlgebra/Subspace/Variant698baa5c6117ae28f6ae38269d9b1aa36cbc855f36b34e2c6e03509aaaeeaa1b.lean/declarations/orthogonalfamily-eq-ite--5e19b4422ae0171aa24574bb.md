# OrthogonalFamily.eq_ite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5395c4b8-a1d5-86e9-0bf8-5c2fa018d918",
  "kind": "theorem",
  "lexical_name": "OrthogonalFamily.eq_ite",
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
  "slug": "orthogonalfamily-eq-ite--5e19b4422ae0171aa24574bb",
  "source": {
    "blob": "ec17f29c8bf18588355ece0ea1cd5e21874d6c3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 119,
    "path": "GRWTSK/Algebra/LinearAlgebra/Subspace/Variant698baa5c6117ae28f6ae38269d9b1aa36cbc855f36b34e2c6e03509aaaeeaa1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e19b4422ae0171aa24574bb4046c44540896b204c8e412119a8864bd52931e5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Subspace/Variant698baa5c6117ae28f6ae38269d9b1aa36cbc855f36b34e2c6e03509aaaeeaa1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5395c4b8-a1d5-86e9-0bf8-5c2fa018d918`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem OrthogonalFamily.eq_ite [DecidableEq ι] {i j : ι} (v : G i) (w : G j) :
    ⟪V i v, V j w⟫ = ite (i = j) ⟪V i v, V j w⟫ 0 := by
  split_ifs with h
  · rfl
  · exact hV h v w

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Subspace/Variant698baa5c6117ae28f6ae38269d9b1aa36cbc855f36b34e2c6e03509aaaeeaa1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Subspace/Variant698baa5c6117ae28f6ae38269d9b1aa36cbc855f36b34e2c6e03509aaaeeaa1b.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec17f29c8bf18588355ece0ea1cd5e21874d6c3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
