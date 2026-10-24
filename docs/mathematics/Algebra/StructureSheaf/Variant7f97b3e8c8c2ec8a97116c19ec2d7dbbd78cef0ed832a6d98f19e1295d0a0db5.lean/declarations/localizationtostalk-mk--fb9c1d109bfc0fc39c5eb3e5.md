# localizationToStalk_mk'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9ba95e0ca6739fb5e4e9b6f561c9da81ef9e5fcb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 441,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7f/7f97b3e8c8c2ec8a97116c19ec2d7dbbd78cef0ed832a6d98f19e1295d0a0db5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a3f892d0-01e0-77ed-8015-8dde17fbedba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c9b26fe4-884c-8b43-4971-2856613753ac",
  "kind": "theorem",
  "lexical_name": "localizationToStalk_mk'",
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
  "slug": "localizationtostalk-mk--fb9c1d109bfc0fc39c5eb3e5",
  "source": {
    "blob": "9ba95e0ca6739fb5e4e9b6f561c9da81ef9e5fcb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 452,
    "line": 441,
    "path": "GRWTSK/Algebra/StructureSheaf/Variant7f97b3e8c8c2ec8a97116c19ec2d7dbbd78cef0ed832a6d98f19e1295d0a0db5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb9c1d109bfc0fc39c5eb3e5f1a892ea5928cc148b308ecee6b72c6696c5be3d",
  "verification": {
    "reference": "docs/verification/Algebra/StructureSheaf/Variant7f97b3e8c8c2ec8a97116c19ec2d7dbbd78cef0ed832a6d98f19e1295d0a0db5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9b26fe4-884c-8b43-4971-2856613753ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 441–452.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem localizationToStalk_mk' (x : PrimeSpectrum.Top R) (f : R) (s : x.asIdeal.primeCompl) :
    localizationToStalk R x (IsLocalization.mk' (Localization.AtPrime x.asIdeal) f s) =
      (structureSheaf R).presheaf.germ (PrimeSpectrum.basicOpen (s : R)) x s.2
        (const R f s (PrimeSpectrum.basicOpen s) fun _ => id) :=
  (IsLocalization.lift_mk'_spec (S := Localization.AtPrime x.asIdeal) _ _ _ _).2 <| by
    rw [← germ_toOpen R (PrimeSpectrum.basicOpen s) x s.2,
      ← germ_toOpen R (PrimeSpectrum.basicOpen s) x s.2, ← RingHom.map_mul, toOpen_eq_const,
      toOpen_eq_const, const_mul_cancel']

/-- The ring homomorphism that takes a section of the structure sheaf of `R` on the open set `U`,
implemented as a subtype of dependent functions to localizations at prime ideals, and evaluates
the section on the point corresponding to a given prime ideal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/StructureSheaf/Variant7f97b3e8c8c2ec8a97116c19ec2d7dbbd78cef0ed832a6d98f19e1295d0a0db5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/StructureSheaf/Variant7f97b3e8c8c2ec8a97116c19ec2d7dbbd78cef0ed832a6d98f19e1295d0a0db5.lean#L441).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ba95e0ca6739fb5e4e9b6f561c9da81ef9e5fcb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
