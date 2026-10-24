# Presheaf.sections_exact_of_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a13a3487-a775-d39d-7a32-af577be88c5c",
  "kind": "theorem",
  "lexical_name": "Presheaf.sections_exact_of_exact",
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
  "slug": "presheaf-sections-exact-of-exact--b46a146e4a27fafa4654c281",
  "source": {
    "blob": "167d8e20e0fda7de460eb547ed8cd524602b36f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 37,
    "path": "GRWTSK/Topology/AddCommGrpCat/Variant86ddc8445edc28c4081032aa7ac0d929fa767dd50e62abcc283fc1331f09df29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b46a146e4a27fafa4654c281fd8f407087b2943cbf0af202d16459781010966e",
  "verification": {
    "reference": "docs/verification/Topology/AddCommGrpCat/Variant86ddc8445edc28c4081032aa7ac0d929fa767dd50e62abcc283fc1331f09df29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a13a3487-a775-d39d-7a32-af577be88c5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Presheaf.sections_exact_of_exact
    {S : ShortComplex (Presheaf AddCommGrpCat.{u} X)}
    (hS : S.Exact) {s : S.X₂.obj (Opposite.op U)} (h : S.g.app (Opposite.op U) s = 0) :
    ∃ (t : S.X₁.obj (Opposite.op U)), S.f.app (Opposite.op U) t = s := by
  dsimp [Presheaf] at S
  let F := (evaluation (Opens X)ᵒᵖ AddCommGrpCat.{u}).obj (Opposite.op U)
  exact (ShortComplex.ab_exact_iff (S.map F)).mp (((Functor.exact_tfae F).out 2 4 rfl rfl).mpr
    ⟨inferInstance, inferInstance⟩ S hS) _ h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AddCommGrpCat/Variant86ddc8445edc28c4081032aa7ac0d929fa767dd50e62abcc283fc1331f09df29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AddCommGrpCat/Variant86ddc8445edc28c4081032aa7ac0d929fa767dd50e62abcc283fc1331f09df29.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `167d8e20e0fda7de460eb547ed8cd524602b36f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
