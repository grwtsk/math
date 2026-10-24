# IsCoprime.of_mul_add_right_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66272a6a-5821-c94a-89b9-793926b27a20",
  "kind": "theorem",
  "lexical_name": "IsCoprime.of_mul_add_right_right",
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
  "slug": "iscoprime-of-mul-add-right-right--f1665be17a79ff10c9e6ea68",
  "source": {
    "blob": "3c18bcd97b3404d865f2f53eadece8348c66f351",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 230,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Varianta5f9359ad9af1920f145595776be9053a44976f346f2aac2ce453636482cf6e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1665be17a79ff10c9e6ea68ed25e52a043f173ed7d03c010a72c44191ad7769",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Varianta5f9359ad9af1920f145595776be9053a44976f346f2aac2ce453636482cf6e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66272a6a-5821-c94a-89b9-793926b27a20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsCoprime.of_mul_add_right_right (h : IsCoprime x (z * x + y)) : IsCoprime x y := by
  rw [add_comm] at h
  exact h.of_add_mul_right_right
#align is_coprime.of_mul_add_right_right IsCoprime.of_mul_add_right_right

end CommSemiring

section ScalarTower

variable {R G : Type*} [CommSemiring R] [Group G] [MulAction G R] [SMulCommClass G R R]
  [IsScalarTower G R R] (x : G) (y z : R)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Varianta5f9359ad9af1920f145595776be9053a44976f346f2aac2ce453636482cf6e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Varianta5f9359ad9af1920f145595776be9053a44976f346f2aac2ce453636482cf6e1.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c18bcd97b3404d865f2f53eadece8348c66f351` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
