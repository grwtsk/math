# exists_exists_and_exists_and_eq_and

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:36364b5e-211d-8713-8160-a9daa73388b8",
  "kind": "theorem",
  "lexical_name": "exists_exists_and_exists_and_eq_and",
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
  "slug": "exists-exists-and-exists-and-eq-and--0bf9a5314155170784adc043",
  "source": {
    "blob": "f2a6e0d3d31d95e59f224c58fe69fd47dee06ff5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 598,
    "line": 593,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant39714c7f10f7a6c37d7e104acf214c8287f69a4a919edbb15c21062261bd6d5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0bf9a5314155170784adc0436eb5935f1030ab7d603c24597ba0b25e7aa10bb1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant39714c7f10f7a6c37d7e104acf214c8287f69a4a919edbb15c21062261bd6d5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36364b5e-211d-8713-8160-a9daa73388b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 593–598.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem exists_exists_and_exists_and_eq_and {α β γ : Type*}
    {f : α → β → γ} {p : α → Prop} {q : β → Prop} {r : γ → Prop} :
    (∃ c, (∃ a, p a ∧ ∃ b, q b ∧ f a b = c) ∧ r c) ↔ ∃ a, p a ∧ ∃ b, q b ∧ r (f a b) :=
  ⟨fun ⟨_, ⟨a, ha, b, hb, hab⟩, hc⟩ ↦ ⟨a, ha, b, hb, hab.symm ▸ hc⟩,
    fun ⟨a, ha, b, hb, hab⟩ ↦ ⟨f a b, ⟨a, ha, b, hb, rfl⟩, hab⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant39714c7f10f7a6c37d7e104acf214c8287f69a4a919edbb15c21062261bd6d5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant39714c7f10f7a6c37d7e104acf214c8287f69a4a919edbb15c21062261bd6d5b.lean#L593).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2a6e0d3d31d95e59f224c58fe69fd47dee06ff5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
