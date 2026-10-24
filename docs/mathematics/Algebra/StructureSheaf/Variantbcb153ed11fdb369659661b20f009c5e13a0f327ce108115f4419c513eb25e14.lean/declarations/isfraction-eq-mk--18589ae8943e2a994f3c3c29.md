# IsFraction.eq_mk'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bf3b21039e02b82b04f228d342b97c2be8cf694e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 108,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bcb153ed11fdb369659661b20f009c5e13a0f327ce108115f4419c513eb25e14.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:195b5c02-6202-4019-2a90-98206745876d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8ff2728b-a726-b918-040c-e5e14ba5334f",
  "kind": "theorem",
  "lexical_name": "IsFraction.eq_mk'",
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
  "slug": "isfraction-eq-mk--18589ae8943e2a994f3c3c29",
  "source": {
    "blob": "bf3b21039e02b82b04f228d342b97c2be8cf694e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 108,
    "path": "GRWTSK/Algebra/StructureSheaf/Variantbcb153ed11fdb369659661b20f009c5e13a0f327ce108115f4419c513eb25e14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18589ae8943e2a994f3c3c29398466a6487fe7026cc7823959430011f8cd7ba0",
  "verification": {
    "reference": "docs/verification/Algebra/StructureSheaf/Variantbcb153ed11fdb369659661b20f009c5e13a0f327ce108115f4419c513eb25e14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ff2728b-a726-b918-040c-e5e14ba5334f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsFraction.eq_mk' {U : Opens (PrimeSpectrum.Top R)} {f : ∀ x : U, Localizations R x}
    (hf : IsFraction f) :
    ∃ r s : R,
      ∀ x : U,
        ∃ hs : s ∉ x.1.asIdeal,
          f x =
            IsLocalization.mk' (Localization.AtPrime _) r
              (⟨s, hs⟩ : (x : PrimeSpectrum.Top R).asIdeal.primeCompl) := by
  rcases hf with ⟨r, s, h⟩
  refine' ⟨r, s, fun x => ⟨(h x).1, (IsLocalization.mk'_eq_iff_eq_mul.mpr _).symm⟩⟩
  exact (h x).2.symm
#align algebraic_geometry.structure_sheaf.is_fraction.eq_mk' AlgebraicGeometry.StructureSheaf.IsFraction.eq_mk'

variable (R)

/-- The predicate `IsFraction` is "prelocal",
in the sense that if it holds on `U` it holds on any open subset `V` of `U`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/StructureSheaf/Variantbcb153ed11fdb369659661b20f009c5e13a0f327ce108115f4419c513eb25e14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/StructureSheaf/Variantbcb153ed11fdb369659661b20f009c5e13a0f327ce108115f4419c513eb25e14.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf3b21039e02b82b04f228d342b97c2be8cf694e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
