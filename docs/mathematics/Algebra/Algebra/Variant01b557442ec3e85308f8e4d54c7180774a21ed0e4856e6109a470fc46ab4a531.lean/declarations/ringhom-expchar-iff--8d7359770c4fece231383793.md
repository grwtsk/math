# RingHom.expChar_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c6c5c513-d578-5d66-ddde-68e3c130a9ca",
  "kind": "lemma",
  "lexical_name": "RingHom.expChar_iff",
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
  "slug": "ringhom-expchar-iff--8d7359770c4fece231383793",
  "source": {
    "blob": "5da759bec095fe3afcd27c7b6181c02e978246cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 115,
    "path": "GRWTSK/Algebra/Algebra/Variant01b557442ec3e85308f8e4d54c7180774a21ed0e4856e6109a470fc46ab4a531.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d7359770c4fece231383793b5301449079cfb471cf6191ef8d31d6d84ca83d5",
  "verification": {
    "reference": "docs/verification/Algebra/Algebra/Variant01b557442ec3e85308f8e4d54c7180774a21ed0e4856e6109a470fc46ab4a531.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6c5c513-d578-5d66-ddde-68e3c130a9ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma RingHom.expChar_iff {R A : Type*} [NonAssocSemiring R] [NonAssocSemiring A] (f : R →+* A)
    (H : Function.Injective f) (p : ℕ) : ExpChar R p ↔ ExpChar A p :=
  ⟨fun _ ↦ expChar_of_injective_ringHom H p, fun _ ↦ f.expChar H p⟩

/-- If the algebra map `R →+* A` is injective then `A` has the same exponential characteristic
as `R`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Algebra/Variant01b557442ec3e85308f8e4d54c7180774a21ed0e4856e6109a470fc46ab4a531.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Algebra/Variant01b557442ec3e85308f8e4d54c7180774a21ed0e4856e6109a470fc46ab4a531.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5da759bec095fe3afcd27c7b6181c02e978246cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
