# quotientSpanNatEquivZMod_comp_Quotient_mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d7d5150c-041c-79b6-9e8c-ebf646897796",
  "kind": "theorem",
  "lexical_name": "quotientSpanNatEquivZMod_comp_Quotient_mk",
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
  "slug": "quotientspannatequivzmod-comp-quotient-mk--2939761842db654850a8cd83",
  "source": {
    "blob": "f26b0f23c28fba9ad90a4cd87b5c54fb7c1e37b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 56,
    "path": "GRWTSK/Algebra/QuotientRing/Variant3f59d7292fdacd37ec5ed1cd78cf7b3c7f648b5307d82015054a7949b915af43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2939761842db654850a8cd83db028b6c902d0007b1cd7ba50c926ca0d7768bed",
  "verification": {
    "reference": "docs/verification/Algebra/QuotientRing/Variant3f59d7292fdacd37ec5ed1cd78cf7b3c7f648b5307d82015054a7949b915af43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7d5150c-041c-79b6-9e8c-ebf646897796`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quotientSpanNatEquivZMod_comp_Quotient_mk (n : ℕ) :
    (Int.quotientSpanNatEquivZMod n : _ →+* _).comp (Ideal.Quotient.mk (Ideal.span {(n : ℤ)})) =
      Int.castRingHom (ZMod n) := rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/QuotientRing/Variant3f59d7292fdacd37ec5ed1cd78cf7b3c7f648b5307d82015054a7949b915af43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/QuotientRing/Variant3f59d7292fdacd37ec5ed1cd78cf7b3c7f648b5307d82015054a7949b915af43.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f26b0f23c28fba9ad90a4cd87b5c54fb7c1e37b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
