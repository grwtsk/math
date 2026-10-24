# char_iso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ae1ee97-cc54-ca4f-f50f-c221ab619b36",
  "kind": "theorem",
  "lexical_name": "char_iso",
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
  "slug": "char-iso--8ec162cb0fac3befaf413ad9",
  "source": {
    "blob": "989a40488065879e42c965a423f555143a4f4e30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 78,
    "path": "GRWTSK/Algebra/LinearAlgebra/Character/Variant84d63b5d6e2d39d34e921ad72f9b7031ad9603aabec9112eb84e71c82dce62a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ec162cb0fac3befaf413ad9433fb93188374bfae13540ac33fa35f9ec9b3494",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Character/Variant84d63b5d6e2d39d34e921ad72f9b7031ad9603aabec9112eb84e71c82dce62a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ae1ee97-cc54-ca4f-f50f-c221ab619b36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem char_iso {V W : FdRep k G} (i : V ≅ W) : V.character = W.character := by
  ext g; simp only [character, FdRep.Iso.conj_ρ i]; exact (trace_conj' (V.ρ g) _).symm
#align fdRep.char_iso FdRep.char_iso

end Monoid

section Group

variable {G : Type u} [Group G]

/-- The character of a representation is constant on conjugacy classes. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Character/Variant84d63b5d6e2d39d34e921ad72f9b7031ad9603aabec9112eb84e71c82dce62a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Character/Variant84d63b5d6e2d39d34e921ad72f9b7031ad9603aabec9112eb84e71c82dce62a7.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `989a40488065879e42c965a423f555143a4f4e30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
