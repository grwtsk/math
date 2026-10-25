# forall_imp_iff_exists_imp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6233715-00de-a94c-1014-744f9405a955",
  "kind": "theorem",
  "lexical_name": "forall_imp_iff_exists_imp",
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
  "slug": "forall-imp-iff-exists-imp--51a1492a96d3e2676dff6d9e",
  "source": {
    "blob": "ac8393f46c7de3396e22382b15ad58ede775b4e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 539,
    "line": 532,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant86e03ce6c0fed7a4286d286be3db68a8dfb2563c7bf8bf0df644ae5376fd81fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51a1492a96d3e2676dff6d9e37e1e9adae461c4799681f42f7d19375d057b560",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant86e03ce6c0fed7a4286d286be3db68a8dfb2563c7bf8bf0df644ae5376fd81fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6233715-00de-a94c-1014-744f9405a955`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 532–539.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem forall_imp_iff_exists_imp {α : Sort*} {p : α → Prop} {b : Prop} [ha : Nonempty α] :
    (∀ x, p x) → b ↔ ∃ x, p x → b := by
  classical
  let ⟨a⟩ := ha
  refine ⟨fun h ↦ not_forall_not.1 fun h' ↦ ?_, fun ⟨x, hx⟩ h ↦ hx (h x)⟩
  exact if hb : b then h' a fun _ ↦ hb else hb <| h fun x ↦ (_root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Fact.Variant39714c7f10f7a6c37d7e104acf214c8287f69a4a919edbb15c21062261bd6d5b.not_imp.1 (h' x)).1

@[mfld_simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant86e03ce6c0fed7a4286d286be3db68a8dfb2563c7bf8bf0df644ae5376fd81fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant86e03ce6c0fed7a4286d286be3db68a8dfb2563c7bf8bf0df644ae5376fd81fc.lean#L532).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac8393f46c7de3396e22382b15ad58ede775b4e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
