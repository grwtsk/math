# _root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.DomRestrict.Variant7f630d806fa1ec2c554b78f4618c1c05ca2bcd59c5550af223908b0334577be4.Function.FactorsThrough.extend_injOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1713e769-3aa2-afaa-5e5a-ba1da5af86e2",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.DomRestrict.Variant7f630d806fa1ec2c554b78f4618c1c05ca2bcd59c5550af223908b0334577be4.Function.FactorsThrough.extend_injOn",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-mathematicallogic-domrestrict--0b728ffe1914b14bf8983829",
  "source": {
    "blob": "301799cbeec3c7486a4fa22ce2dda066f4a33020",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 140,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant867f7b550d8810b2c6ad551e0cc40349e500b5bc7983d96cb02284b0485baad0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b728ffe1914b14bf89838298a65c4bc46f5a9cf29f096850202b1b704cf208b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant867f7b550d8810b2c6ad551e0cc40349e500b5bc7983d96cb02284b0485baad0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1713e769-3aa2-afaa-5e5a-ba1da5af86e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.DomRestrict.Variant7f630d806fa1ec2c554b78f4618c1c05ca2bcd59c5550af223908b0334577be4.Function.FactorsThrough.extend_injOn {f : α → β} {g : α → γ} {j : β → γ}
    (hf : g.FactorsThrough f) (hg : g.Injective) :
    (range f).InjOn (extend f g j) := by
  rintro _ ⟨x, rfl⟩ _ ⟨y, rfl⟩ heq
  rw [hf.extend_apply, hf.extend_apply] at heq
  rw [hg heq]

/-- If `f` and `g` are injective, then `extend f g j` is injective on the range of `f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant867f7b550d8810b2c6ad551e0cc40349e500b5bc7983d96cb02284b0485baad0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant867f7b550d8810b2c6ad551e0cc40349e500b5bc7983d96cb02284b0485baad0.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `301799cbeec3c7486a4fa22ce2dda066f4a33020` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
