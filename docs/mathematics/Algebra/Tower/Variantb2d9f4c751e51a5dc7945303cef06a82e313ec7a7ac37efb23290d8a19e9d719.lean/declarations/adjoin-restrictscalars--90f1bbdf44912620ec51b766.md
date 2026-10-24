# adjoin_restrictScalars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:385fd483-59fe-971f-28e3-82ead5fad917",
  "kind": "theorem",
  "lexical_name": "adjoin_restrictScalars",
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
  "slug": "adjoin-restrictscalars--90f1bbdf44912620ec51b766",
  "source": {
    "blob": "495bef128361bfcb079e92edb9efe2e4706195b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 36,
    "path": "GRWTSK/Algebra/Tower/Variantb2d9f4c751e51a5dc7945303cef06a82e313ec7a7ac37efb23290d8a19e9d719.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90f1bbdf44912620ec51b766c517681f2c35d5b3483cd3e205a5b335fb7be6a3",
  "verification": {
    "reference": "docs/verification/Algebra/Tower/Variantb2d9f4c751e51a5dc7945303cef06a82e313ec7a7ac37efb23290d8a19e9d719.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:385fd483-59fe-971f-28e3-82ead5fad917`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adjoin_restrictScalars (C D E : Type*) [CommSemiring C] [CommSemiring D] [CommSemiring E]
    [Algebra C D] [Algebra C E] [Algebra D E] [IsScalarTower C D E] (S : Set E) :
    (Algebra.adjoin D S).restrictScalars C =
      (Algebra.adjoin ((⊤ : Subalgebra C D).map (IsScalarTower.toAlgHom C D E)) S).restrictScalars
        C := by
  suffices
    Set.range (algebraMap D E) =
      Set.range (algebraMap ((⊤ : Subalgebra C D).map (IsScalarTower.toAlgHom C D E)) E) by
    ext x
    change x ∈ Subsemiring.closure (_ ∪ S) ↔ x ∈ Subsemiring.closure (_ ∪ S)
    rw [this]
  ext x
  constructor
  · rintro ⟨y, hy⟩
    exact ⟨⟨algebraMap D E y, ⟨y, ⟨Algebra.mem_top, rfl⟩⟩⟩, hy⟩
  · rintro ⟨⟨y, ⟨z, ⟨h0, h1⟩⟩⟩, h2⟩
    exact ⟨z, Eq.trans h1 h2⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Tower/Variantb2d9f4c751e51a5dc7945303cef06a82e313ec7a7ac37efb23290d8a19e9d719.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Tower/Variantb2d9f4c751e51a5dc7945303cef06a82e313ec7a7ac37efb23290d8a19e9d719.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `495bef128361bfcb079e92edb9efe2e4706195b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
