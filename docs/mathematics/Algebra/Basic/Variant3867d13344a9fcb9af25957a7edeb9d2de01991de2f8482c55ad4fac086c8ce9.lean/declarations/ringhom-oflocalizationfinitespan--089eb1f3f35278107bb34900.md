# RingHom.OfLocalizationFiniteSpan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ae97d9112365ab8431e9af74e9ac1bba2692843676f55533db9a74883bd55b3c",
  "kind": "def",
  "lexical_name": "RingHom.OfLocalizationFiniteSpan",
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
  "slug": "ringhom-oflocalizationfinitespan--089eb1f3f35278107bb34900",
  "source": {
    "blob": "01a81a3f8aa475885e73f66ac42c6d972cddf3fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 115,
    "path": "GRWTSK/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:089eb1f3f35278107bb34900f518a9d1623bdad917a0648f1009b405a69936e4",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ae97d9112365ab8431e9af74e9ac1bba2692843676f55533db9a74883bd55b3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def RingHom.OfLocalizationFiniteSpan :=
  ∀ ⦃R S : Type u⦄ [CommRing R] [CommRing S] (f : R →+* S) (s : Finset R)
    (_ : Ideal.span (s : Set R) = ⊤) (_ : ∀ r : s, P (Localization.awayMap f r)), P f

/-- A property `P` of ring homs satisfies `RingHom.OfLocalizationFiniteSpan`
if `P` holds for `R →+* S` whenever there exists a set `{ r }` that spans `R` such that
`P` holds for `Rᵣ →+* Sᵣ`.

Note that this is equivalent to `RingHom.OfLocalizationFiniteSpan` via
`RingHom.ofLocalizationSpan_iff_finite`, but this has less restrictions when applying. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01a81a3f8aa475885e73f66ac42c6d972cddf3fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
