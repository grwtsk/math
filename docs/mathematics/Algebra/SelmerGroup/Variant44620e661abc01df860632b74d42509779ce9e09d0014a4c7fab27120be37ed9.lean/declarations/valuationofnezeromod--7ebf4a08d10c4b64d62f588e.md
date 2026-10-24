# valuationOfNeZeroMod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1bbd35dc3cc9d9d593b5969f45a693953ec0682a19eb2ea7cb616d04a1810b18",
  "kind": "def",
  "lexical_name": "valuationOfNeZeroMod",
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
  "slug": "valuationofnezeromod--7ebf4a08d10c4b64d62f588e",
  "source": {
    "blob": "cf6c150afd495c55d6f9c9811db93270a2d07dda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 146,
    "path": "GRWTSK/Algebra/SelmerGroup/Variant44620e661abc01df860632b74d42509779ce9e09d0014a4c7fab27120be37ed9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7ebf4a08d10c4b64d62f588e94b3e27bf05108a6123220085d87f54cf7485008",
  "verification": {
    "reference": "docs/verification/Algebra/SelmerGroup/Variant44620e661abc01df860632b74d42509779ce9e09d0014a4c7fab27120be37ed9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1bbd35dc3cc9d9d593b5969f45a693953ec0682a19eb2ea7cb616d04a1810b18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def valuationOfNeZeroMod (n : ℕ) : (K/n) →* Multiplicative (ZMod n) :=
  (Int.quotientZmultiplesNatEquivZMod n).toMultiplicative.toMonoidHom.comp <|
    QuotientGroup.map (powMonoidHom n : Kˣ →* Kˣ).range
      (AddSubgroup.toSubgroup (AddSubgroup.zmultiples (n : ℤ)))
      v.valuationOfNeZero
      (by
        rintro _ ⟨x, rfl⟩
        exact
          ⟨v.valuationOfNeZero x, by simp only [powMonoidHom_apply, map_pow, Int.toAdd_pow]; rfl⟩)
#align is_dedekind_domain.height_one_spectrum.valuation_of_ne_zero_mod IsDedekindDomain.HeightOneSpectrum.valuationOfNeZeroMod

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SelmerGroup/Variant44620e661abc01df860632b74d42509779ce9e09d0014a4c7fab27120be37ed9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SelmerGroup/Variant44620e661abc01df860632b74d42509779ce9e09d0014a4c7fab27120be37ed9.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf6c150afd495c55d6f9c9811db93270a2d07dda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
