# splits_iff_exists_multiset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3576d226-96e7-e119-c848-40055e12fa40",
  "kind": "theorem",
  "lexical_name": "splits_iff_exists_multiset",
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
  "slug": "splits-iff-exists-multiset--f3dc8903d7919e0d80061dc5",
  "source": {
    "blob": "61222c34d711a75795177d2cec192cc25f3eb2e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 503,
    "line": 498,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Splits/Variant0cd9326b9d7a3a64b094224e0f232d6ea04164d4df86861a3f5d5aed065bf446.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3dc8903d7919e0d80061dc56d5a3d89fc279d9d4abee57a4f6c69da9ed61ed4",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Splits/Variant0cd9326b9d7a3a64b094224e0f232d6ea04164d4df86861a3f5d5aed065bf446.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3576d226-96e7-e119-c848-40055e12fa40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 498–503.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem splits_iff_exists_multiset {f : K[X]} :
    Splits i f ↔
      ∃ s : Multiset L, f.map i = C (i f.leadingCoeff) * (s.map fun a : L => X - C a).prod :=
  ⟨fun hf => ⟨(f.map i).roots, eq_prod_roots_of_splits hf⟩, fun ⟨_, hs⟩ =>
    splits_of_exists_multiset i hs⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Splits/Variant0cd9326b9d7a3a64b094224e0f232d6ea04164d4df86861a3f5d5aed065bf446.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Splits/Variant0cd9326b9d7a3a64b094224e0f232d6ea04164d4df86861a3f5d5aed065bf446.lean#L498).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61222c34d711a75795177d2cec192cc25f3eb2e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
