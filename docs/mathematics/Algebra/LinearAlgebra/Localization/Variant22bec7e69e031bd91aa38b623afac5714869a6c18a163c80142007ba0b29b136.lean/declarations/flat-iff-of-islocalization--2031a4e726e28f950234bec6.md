# flat_iff_of_isLocalization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dcf9ef56-c145-5ad0-4fde-2e4f12a88689",
  "kind": "theorem",
  "lexical_name": "flat_iff_of_isLocalization",
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
  "slug": "flat-iff-of-islocalization--2031a4e726e28f950234bec6",
  "source": {
    "blob": "2a0b16fae81a17658c9768c458b706d23865d3ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 53,
    "path": "GRWTSK/Algebra/LinearAlgebra/Localization/Variant22bec7e69e031bd91aa38b623afac5714869a6c18a163c80142007ba0b29b136.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2031a4e726e28f950234bec637cff6ba446d913852291a155333e300e1d47d19",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Localization/Variant22bec7e69e031bd91aa38b623afac5714869a6c18a163c80142007ba0b29b136.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dcf9ef56-c145-5ad0-4fde-2e4f12a88689`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem flat_iff_of_isLocalization : Flat S M ↔ Flat R M :=
  have := isLocalizedModule_id p M S
  have := IsLocalization.flat S p
  ⟨fun _ ↦ .trans R S M, fun _ ↦ .of_isLocalizedModule S p .id⟩

variable (Mₚ : ∀ (P : Ideal S) [P.IsMaximal], Type*)
  [∀ (P : Ideal S) [P.IsMaximal], AddCommMonoid (Mₚ P)]
  [∀ (P : Ideal S) [P.IsMaximal], Module R (Mₚ P)]
  [∀ (P : Ideal S) [P.IsMaximal], Module S (Mₚ P)]
  [∀ (P : Ideal S) [P.IsMaximal], IsScalarTower R S (Mₚ P)]
  (f : ∀ (P : Ideal S) [P.IsMaximal], M →ₗ[S] Mₚ P)
  [∀ (P : Ideal S) [P.IsMaximal], IsLocalizedModule.AtPrime P (f P)]

include f in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Localization/Variant22bec7e69e031bd91aa38b623afac5714869a6c18a163c80142007ba0b29b136.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Localization/Variant22bec7e69e031bd91aa38b623afac5714869a6c18a163c80142007ba0b29b136.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a0b16fae81a17658c9768c458b706d23865d3ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
