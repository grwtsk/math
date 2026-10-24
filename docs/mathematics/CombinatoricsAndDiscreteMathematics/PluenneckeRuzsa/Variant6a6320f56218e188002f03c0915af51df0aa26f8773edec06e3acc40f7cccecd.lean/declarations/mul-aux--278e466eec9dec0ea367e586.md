# mul_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:716e5b21-cc63-fe7c-2962-e75efab03399",
  "kind": "theorem",
  "lexical_name": "mul_aux",
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
  "slug": "mul-aux--278e466eec9dec0ea367e586",
  "source": {
    "blob": "07e82df08f471b5ce5db98e0a345a9fa23de37de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 132,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variant6a6320f56218e188002f03c0915af51df0aa26f8773edec06e3acc40f7cccecd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:278e466eec9dec0ea367e5860536269caa38ba3dd8607e7386e939cef3b22adb",
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

Occurrence: `result:716e5b21-cc63-fe7c-2962-e75efab03399`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem mul_aux (hA : A.Nonempty) (hAB : A ⊆ B)
    (h : ∀ A' ∈ B.powerset.erase ∅, ((A * C).card : ℚ≥0) / ↑A.card ≤ (A' * C).card / ↑A'.card) :
    ∀ (A') (_ : A' ⊆ A), (A * C).card * A'.card ≤ (A' * C).card * A.card := by
  rintro A' hAA'
  obtain rfl | hA' := A'.eq_empty_or_nonempty
  · simp
  have hA₀ : (0 : ℚ≥0) < A.card := cast_pos.2 hA.card_pos
  have hA₀' : (0 : ℚ≥0) < A'.card := cast_pos.2 hA'.card_pos
  exact_mod_cast
    (div_le_div_iff hA₀ hA₀').1
      (h _ <| mem_erase_of_ne_of_mem hA'.ne_empty <| mem_powerset.2 <| hAA'.trans hAB)

/-- **Ruzsa's triangle inequality**. Multiplication version. -/
@[to_additive card_add_mul_card_le_card_add_mul_card_add
      "**Ruzsa's triangle inequality**. Addition version."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variant6a6320f56218e188002f03c0915af51df0aa26f8773edec06e3acc40f7cccecd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variant6a6320f56218e188002f03c0915af51df0aa26f8773edec06e3acc40f7cccecd.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07e82df08f471b5ce5db98e0a345a9fa23de37de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
