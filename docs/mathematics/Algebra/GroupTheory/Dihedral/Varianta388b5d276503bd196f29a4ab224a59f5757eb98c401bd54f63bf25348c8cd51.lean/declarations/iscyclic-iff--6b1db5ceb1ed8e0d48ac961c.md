# isCyclic_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4793538d-65a0-4f85-3035-6d4d1892639f",
  "kind": "lemma",
  "lexical_name": "isCyclic_iff",
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
  "slug": "iscyclic-iff--6b1db5ceb1ed8e0d48ac961c",
  "source": {
    "blob": "2f132e224ed1957eadfce84e1567123d7f859633",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 241,
    "path": "GRWTSK/Algebra/GroupTheory/Dihedral/Varianta388b5d276503bd196f29a4ab224a59f5757eb98c401bd54f63bf25348c8cd51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b1db5ceb1ed8e0d48ac961c4d645029dfb4ad1a5714d4e88e1a7998f0c644fd",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Dihedral/Varianta388b5d276503bd196f29a4ab224a59f5757eb98c401bd54f63bf25348c8cd51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4793538d-65a0-4f85-3035-6d4d1892639f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isCyclic_iff : IsCyclic (DihedralGroup n) ↔ n = 1 where
  mp := not_imp_not.mp not_isCyclic
  mpr h := h ▸ isCyclic_of_prime_card (p := 2) nat_card

/-- If n is odd, then the Dihedral group of order $2n$ has $n(n+3)$ pairs (represented as
$n + n + n + n*n$) of commuting elements. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Dihedral/Varianta388b5d276503bd196f29a4ab224a59f5757eb98c401bd54f63bf25348c8cd51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Dihedral/Varianta388b5d276503bd196f29a4ab224a59f5757eb98c401bd54f63bf25348c8cd51.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f132e224ed1957eadfce84e1567123d7f859633` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
