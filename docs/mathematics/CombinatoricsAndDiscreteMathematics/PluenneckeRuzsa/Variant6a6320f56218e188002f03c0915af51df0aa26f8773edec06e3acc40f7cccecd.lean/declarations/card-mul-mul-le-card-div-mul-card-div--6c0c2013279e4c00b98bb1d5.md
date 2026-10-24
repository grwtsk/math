# card_mul_mul_le_card_div_mul_card_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d23c4f4d-d4c2-698e-1e81-1eb868235f08",
  "kind": "theorem",
  "lexical_name": "card_mul_mul_le_card_div_mul_card_div",
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
  "slug": "card-mul-mul-le-card-div-mul-card-div--6c0c2013279e4c00b98bb1d5",
  "source": {
    "blob": "07e82df08f471b5ce5db98e0a345a9fa23de37de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 170,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variant6a6320f56218e188002f03c0915af51df0aa26f8773edec06e3acc40f7cccecd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c0c2013279e4c00b98bb1d559a56b2fa670ed301e1d7cd8f823043eb18b1460",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variant6a6320f56218e188002f03c0915af51df0aa26f8773edec06e3acc40f7cccecd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d23c4f4d-d4c2-698e-1e81-1eb868235f08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_mul_mul_le_card_div_mul_card_div (A B C : Finset α) :
    (A * C).card * B.card ≤ (A / B).card * (B / C).card := by
  rw [div_eq_mul_inv, ← card_inv B, ← card_inv (B / C), inv_div', div_inv_eq_mul]
  exact card_mul_mul_card_le_card_mul_mul_card_mul _ _ _
#align finset.card_mul_mul_le_card_div_mul_card_div Finset.card_mul_mul_le_card_div_mul_card_div

/-- **Ruzsa's triangle inequality**. Sub-add-sub version. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variant6a6320f56218e188002f03c0915af51df0aa26f8773edec06e3acc40f7cccecd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variant6a6320f56218e188002f03c0915af51df0aa26f8773edec06e3acc40f7cccecd.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07e82df08f471b5ce5db98e0a345a9fa23de37de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
