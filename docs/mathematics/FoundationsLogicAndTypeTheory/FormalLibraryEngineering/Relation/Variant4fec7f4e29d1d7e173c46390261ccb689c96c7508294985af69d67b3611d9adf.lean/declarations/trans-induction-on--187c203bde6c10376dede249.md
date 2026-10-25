# trans_induction_on

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:766799e3-c6fc-c05e-936e-4df8cb53fbd2",
  "kind": "theorem",
  "lexical_name": "trans_induction_on",
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
  "slug": "trans-induction-on--187c203bde6c10376dede249",
  "source": {
    "blob": "d0922cc4358685f7574fcf0005edd2ea61f7fdad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 547,
    "line": 539,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relation/Variant4fec7f4e29d1d7e173c46390261ccb689c96c7508294985af69d67b3611d9adf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:187c203bde6c10376dede24960ede43ba894d6de42b6a5d3fa375111cac87512",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relation/Variant4fec7f4e29d1d7e173c46390261ccb689c96c7508294985af69d67b3611d9adf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:766799e3-c6fc-c05e-936e-4df8cb53fbd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 539–547.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem trans_induction_on {motive : ∀ {a b : α}, ReflTransGen r a b → Prop} {a b : α}
    (h : ReflTransGen r a b) (refl : ∀ a, @motive a a refl)
    (single : ∀ {a b} (h : r a b), motive (single h))
    (trans : ∀ {a b c} (h₁ : ReflTransGen r a b) (h₂ : ReflTransGen r b c), motive h₁ → motive h₂ →
      motive (h₁.trans h₂)) : motive h := by
  induction h with
  | refl => exact refl a
  | tail hab hbc ih => exact trans hab (.single hbc) ih (single hbc)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relation/Variant4fec7f4e29d1d7e173c46390261ccb689c96c7508294985af69d67b3611d9adf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relation/Variant4fec7f4e29d1d7e173c46390261ccb689c96c7508294985af69d67b3611d9adf.lean#L539).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0922cc4358685f7574fcf0005edd2ea61f7fdad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
